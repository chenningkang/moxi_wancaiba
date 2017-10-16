package com.moxi.web.admin.friendLink;

import java.util.Date;
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
import com.moxi.model.LinkManager;
import com.moxi.model.MXParams;
import com.moxi.service.banner.admin.IAdminBannerService;
import com.moxi.service.friendLink.admin.IAdminFriendLinkService;

/**
 * 友情链接管理
 * ContentController
 * 创建人:lifan
 * 时间：2017年07月17日 11:02:01
 * @version 1.0.0
 * 
 */
@Controller
@RequestMapping("/admin/friendLink")
public class AdminFriendLinkController {
	
	@Autowired
	private IAdminBannerService bannerService;
	
	@Autowired
	private IAdminFriendLinkService friendLinkService;
	
	/**
	 * 跳转到列表页面
	 * 方法名: list 
	 * 创建人: lifan 
	 * 时间：2017年7月17日 上午11:03:21
	 * @param @param params
	 * @param @return
	 * @return String
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/list")
	public String list(MXParams params){
		return "admin/friendLink/list";
	}
	
	/**
	 * 模板页面
	 * 方法名: template 
	 * 创建人: lifan 
	 * 时间：2017年7月17日 上午11:03:35
	 * @param @param params
	 * @param @return
	 * @return ModelAndView
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/template")
	public ModelAndView template(MXParams params){
		ModelAndView modelAndView = new ModelAndView();
		List<HashMap<String, Object>> friendLinks = friendLinkService.findFriendLinks(params);//拿到内容
		int count = friendLinkService.count(params);//拿到内容总数
		modelAndView.setViewName("admin/friendLink/template");//跳转到模板页面
		modelAndView.addObject("datas",friendLinks);//内容缓存到作用于
		modelAndView.addObject("itemCount",count);//内容总数缓存起来
		return modelAndView;
	}
	
	/**
	 * 更新
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
	public String update(LinkManager  friendLink1){
		friendLinkService.update(friendLink1);
		return "success";
	}
	
	/**
	 * 删除
	 * 方法名: delete 
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
		friendLinkService.delete(params);
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
		friendLinkService.deleteSelected(id);
		return "success";
	}
	
	/**
	 * 添加
	 * 方法名: save 
	 * 创建人: lifan 
	 * 时间：2017年7月21日 上午11:58:19
	 * @param @param params
	 * @param @return
	 * @return String
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/add")
	public ModelAndView add(MXParams params){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/friendLink/add");
		return modelAndView;
	}
	
	
	/**
	 * 编辑
	 * 方法名: edit 
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
			LinkManager friendLink1 = friendLinkService.getFriendLink(id);
			modelAndView.addObject("editFriendLink", friendLink1); //model and view 带值
		}
		modelAndView.setViewName("admin/friendLink/add");  //表示跳转到相应的页面
		return modelAndView;
	}
	
	/**
	 * 保存数据 
	 * 方法名: save 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:30:01
	 * @param @param friendLink1
	 * @param @param request
	 * @param @return
	 * @return JsonResult
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@ResponseBody
	@RequestMapping("/save")
	public JsonResult save(LinkManager  friendLink1, HttpServletRequest  request ){
		JsonResult jsonResult = new JsonResult();
		LinkManager   friendLink2  = new LinkManager();
		friendLink2.setId(friendLink1.getId());
		friendLink2.setName(friendLink1.getName());
		friendLink2.setDescription(friendLink1.getDescription());
		friendLink2.setPath(friendLink1.getPath());
		friendLink2.setUserId(friendLink1.getUserId());
		friendLink2.setUrl(friendLink1.getUrl());
		if(friendLink2.getId()==null){
			//表示新增
			friendLink2.setUpdateTime(new Date());
			ServiceResult<Object> result =friendLinkService.addDetails(friendLink2);
			jsonResult.setStateCode(result.getStateCode());
			jsonResult.setMessage(result.getMessage());
			return jsonResult;
		}else{
			//表示修改
			friendLink2.setUpdateTime(new Date());
			//表示不需要添加了
			ServiceResult<Object> result =friendLinkService.updateDetails(friendLink2);
			jsonResult.setStateCode(result.getStateCode());
			jsonResult.setMessage(result.getMessage());
			return jsonResult;
		}
	}
}
