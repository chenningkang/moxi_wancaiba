package com.moxi.web.admin.user;

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
import com.moxi.model.AdminUser;
import com.moxi.model.MXParams;
import com.moxi.model.Role;
import com.moxi.service.channel.admin.IAdminChannelService;
import com.moxi.service.user.IUserService;
import com.moxi.util.TmStringUtils;

/**
 * 用户管理
 * 类名: AdminUserController
 * 创建人:lifan 
 * 时间：2017年8月23日 下午2:31:15 
 * @version 1.0.0
 *
 */
@Controller
@RequestMapping("/admin/user")
public class AdminUserController {
	
	@Autowired
	private IAdminChannelService channelService;
	
	@Autowired
	private IUserService userService;
	
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
		return "admin/user/list";
	}
	
	/**
	 * 模板页面
	 * 方法名: template 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:31:37
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
		List<HashMap<String, Object>> users = userService.findUsers(params);
		for (HashMap<String, Object> hashMap : users) {
			hashMap.get("password");
		}
		
		int count = userService.count(params);
		modelAndView.setViewName("admin/user/template");
		modelAndView.addObject("datas",users);
		modelAndView.addObject("itemCount",count);
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
	public String update(AdminUser  adminUser){
		userService.update(adminUser);
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
		userService.delete(params);
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
		userService.deleteSelected(id);
		return "success";
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
			AdminUser adminUser = userService.getAdminUser(id);
			modelAndView.addObject("editAdminUser", adminUser);
			List<Role> roles = userService.findRoles();
			modelAndView.addObject("roles", roles);
		}
		modelAndView.setViewName("admin/user/add");
		return modelAndView;
	}
	
	/**
	 * 个人信息修改
	 * 方法名: editInfo 
	 * 创建人: lifan 
	 * 时间：2017年8月18日 下午2:25:03
	 * @param @param id
	 * @param @return
	 * @return ModelAndView
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/editInfo/{id}")
	public ModelAndView editInfo(@PathVariable("id")Integer id){
		ModelAndView modelAndView = new ModelAndView();
		if (id!=null) {
			AdminUser adminUser = userService.getAdminUser(id);
			modelAndView.addObject("editAdminUser", adminUser);
		}
		modelAndView.setViewName("admin/user/edit");
		return modelAndView;
	}
	
	
	/**
	 * 保存用户信息
	 * 方法名: save 
	 * 创建人: lifan 
	 * 时间：2017年8月18日 上午10:32:09
	 * @param @param adminUser
	 * @param @param request
	 * @param @return
	 * @return JsonResult
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@ResponseBody
	@RequestMapping("/save")
	public JsonResult save(AdminUser  adminUser, HttpServletRequest  request ){
		JsonResult jsonResult = new JsonResult();
		AdminUser adminUser1  = new AdminUser();
		adminUser1.setId(adminUser.getId());
		adminUser1.setAddress(adminUser.getAddress());
		adminUser1.setAge(adminUser.getAge());
		adminUser1.setEmail(adminUser.getEmail());
		adminUser1.setMale(adminUser.getMale());
		adminUser1.setUsername(adminUser.getUsername());
		adminUser1.setTelephone(adminUser.getTelephone());
		adminUser1.setRoleId(adminUser.getRoleId());
		adminUser1.setPassword(TmStringUtils.md5Base64(adminUser.getPassword()));
		if(adminUser1.getId()==null){
			//表示新增
			ServiceResult<Object> result =userService.addDetails(adminUser1);
			jsonResult.setStateCode(result.getStateCode());
			jsonResult.setMessage(result.getMessage());
			return jsonResult;
		}else{
			//表示修改
			ServiceResult<Object> result =userService.updateDetails(adminUser1);
			jsonResult.setStateCode(result.getStateCode());
			jsonResult.setMessage(result.getMessage());
			return jsonResult;
			
		}
	}
	
	/**
	 * 添加用户
	 * 方法名: add 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:31:53
	 * @param @return
	 * @return ModelAndView
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/add")
	public ModelAndView add(){
		ModelAndView modelAndView = new ModelAndView();
		List<Role> roles = userService.findRoles();
		modelAndView.addObject("roles", roles);
		modelAndView.setViewName("admin/user/add");
		return modelAndView;
	}
}
