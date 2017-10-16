package com.moxi.web;


import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.moxi.model.AdminUser;
import com.moxi.model.MXParams;
import com.moxi.core.BaseController;
import com.moxi.service.user.IUserService;
import com.moxi.util.TmStringUtils;
/**
 * 后台登录控制层
 * 类名: LoginController
 * 创建人:lifan 
 * 时间：2017年7月17日 下午1:30:08 
 * @version 1.0.0
 *
 */
@Controller
public class LoginController extends BaseController{
	
	@Autowired
	private IUserService  service;
	
	@RequestMapping("/login")
	public String login(){
		return "admin/login";
	}

	/**
	 * 登录方法
	 * 方法名: logined 
	 * 创建人: lifan 
	 * 时间：2017年7月17日 下午1:31:02
	 * @param @param params
	 * @param @return
	 * @return String
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@ResponseBody
	@RequestMapping(value="/logined",method=RequestMethod.POST)
	public String logined(MXParams params){
		//参数不为空
		if(params!=null){
			//账号和密码不为空
			if(TmStringUtils.isNotEmpty(params.getAccount()) && TmStringUtils.isNotEmpty(params.getPassword())){
				//密码加密
				params.setPassword(TmStringUtils.md5Base64(params.getPassword()));
				//根据用户名和密码查询
				AdminUser user = service.getLogin(params);
				
				//查有此人
				if(user!=null){
					//判断账户有没有被禁止掉
					if(user.getForbiden()==0){
						return "forbiden";
					}else{
						session.setAttribute(SESSION_USER, user);//用户信息放到session中
						session.setAttribute(SESSION_USER_USERNAME, user.getUsername());//用户名单独缓存
						HashMap<String, Object> userRole = service.getUserRole(user.getId());
						session.setAttribute(SESSION_USER_ROLE, userRole);
						return "success";
					}
				}else{//查无此人
					return "fail";
				}
			}else{//没有传入用户名或者密码
				return "null";
			}
		}else{//参数为空
			return "error";
		}
	}
	
	/**
	 * 退出方法
	 * 方法名: logout 
	 * 创建人: lifan 
	 * 时间：2017年7月17日 下午1:31:12
	 * @param @return
	 * @return String
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/logout")
	public String logout(){
		session.invalidate();//清空缓存
		return "redirect:admin/login";//重定向到登录页面
	}
}