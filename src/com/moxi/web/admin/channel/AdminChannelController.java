package com.moxi.web.admin.channel;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.moxi.core.JsonResult;
import com.moxi.core.ServiceResult;
import com.moxi.model.Channel;
import com.moxi.service.channel.admin.IAdminChannelService;
import com.moxi.model.MXParams;

/**
 * channel管理web
 * ChannelController
 * 创建人:lifan
 * 时间：2017年07月21日 10:08:22
 * @version 1.0.0
 * 
 */
@Controller
@RequestMapping("/admin/channel")
public class AdminChannelController {
	
	@Autowired
	private IAdminChannelService channelService;
	
	/**
	 * 列表查询
	 * com.moxi.service.channel 
	 * 方法名：findChannels
	 * 创建人：lifan 
	 * 手机号码:15021297671
	 * 时间：2017年07月21日 10:08:22
	 * @param params
	 * @return 
	 * 返回类型：List<Channel>
	 * @exception 
	 * @since  1.0.0
	 */
	@RequestMapping("/list")
	public String list(MXParams params){
		return "admin/channel/list";
	}
	
	/**
	 * 模板页面
	 * com.moxi.service.channel 
	 * 方法名：findChannels
	 * 创建人：lifan 
	 * 手机号码:15021297671
	 * 时间：2017年07月21日 10:08:22
	 * @param params
	 * @return 
	 * 返回类型：List<Channel>
	 * @exception 
	 * @since  1.0.0
	 */
	@RequestMapping("/template")
	public ModelAndView template(MXParams params){
		ModelAndView modelAndView = new ModelAndView();
		List<HashMap<String, Object>> channels = channelService.findChannels(params);
		int count = channelService.count(params);
		modelAndView.setViewName("admin/channel/template");
		modelAndView.addObject("datas",channels);
		modelAndView.addObject("itemCount",count);
		return modelAndView;
	}
	
	/**
	 * 更新频道信息
	 * 方法名: update
	 * 创建人: lifan 
	 * 时间：2017年7月20日 下午2:52:23
	 * @param @param content
	 * @param @return
	 * @return String
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@ResponseBody
	@RequestMapping(value="/update",method=RequestMethod.POST)
	public String update(Channel channel){
		channelService.update(channel);
		return "success";
	}
	
	/**
	 * 删除
	 * 创建人: lifan 
	 * 时间：2017年7月20日 下午2:52:32
	 * @param @param params
	 * @param @return
	 * @return String
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@ResponseBody
	@RequestMapping(value="/delete",method=RequestMethod.POST)
	public String delete(MXParams params){
		channelService.delete(params);
		return "success";
	}
	
	/**
	 * 批量删除
	 * 方法名: deleteSelected 
	 * 创建人: lifan 
	 * 时间：2017年8月24日 下午5:31:15
	 * @param @param id
	 * @param @return
	 * @return String
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@ResponseBody
	@RequestMapping(value="/deleteSelected",method=RequestMethod.POST)
	public String deleteSelected(String[] id){
		channelService.deleteSelected(id);
		return "success";
	}
	
	/**
	 * 编辑
	 * 创建人: lifan 
	 * 时间：2017年7月21日 下午4:37:51
	 * @param @param params
	 * @param @return
	 * @return String
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/edit/{id}")
	public ModelAndView edit(@PathVariable("id")Integer id){
		ModelAndView modelAndView = new ModelAndView();
		if (id!=null) {
			Channel channel = channelService.getChannel(id);
			List<Channel> pChannels = channelService.findAllPChannels();
			modelAndView.addObject("editChannel", channel);
			modelAndView.addObject("pChannels", pChannels);
		}
		
		modelAndView.setViewName("admin/channel/add");
		return modelAndView;
	}
	
	
	/**
	 * 保存
	 * 方法名: save 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:27:01
	 * @param @param channel
	 * @param @param request
	 * @param @return
	 * @return JsonResult
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@ResponseBody
	@RequestMapping("/save")
	public JsonResult save(Channel  channel, HttpServletRequest  request ){
		JsonResult jsonResult = new JsonResult();
		Channel channel2  = new Channel();
		channel2.setId(channel.getId());
		channel2.setName(channel.getName());
		channel2.setDescription(channel.getDescription());
		channel2.setParentId(channel.getParentId());
		channel2.setUserId(channel.getUserId());
		if(channel2.getId()==null){
			//表示新增
			ServiceResult<Object> result =channelService.addDetails(channel2);
			jsonResult.setStateCode(result.getStateCode());
			jsonResult.setMessage(result.getMessage());
			return jsonResult;
		}else{
			//表示修改
			ServiceResult<Object> result =channelService.updateDetails(channel2);
			jsonResult.setStateCode(result.getStateCode());
			jsonResult.setMessage(result.getMessage());
			return jsonResult;
			
		}
	}
	
	/**
	 * 添加内容
	 * 方法名: add 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:27:13
	 * @param @return
	 * @return ModelAndView
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/add")
	public ModelAndView add(){
		ModelAndView modelAndView = new ModelAndView();
		List<Channel> pChannels = channelService.findAllPChannels();
		modelAndView.addObject("pChannels", pChannels);
		modelAndView.setViewName("admin/channel/add");
		return modelAndView;
	}
	
	/**
	 * 查询所有的频道信息
	 * 方法名: findAllChennels 
	 * 创建人: lifan 
	 * 时间：2017年8月21日 上午11:37:52
	 * @param @return
	 * @return List<Channel>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@ResponseBody
	@RequestMapping("/findAllChennels")
	public List<Channel> findAllChennels(){
		List<Channel> channels = channelService.findAllChannels();
		return channels;
	}
	
	
}
