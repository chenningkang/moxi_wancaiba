package com.moxi.web.web.frindLink;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.moxi.model.MXParams;
import com.moxi.model.LinkManager;
import com.moxi.service.friendLink.web.IWebFriendLinkService;

/**
 * 友情链接控制层
 * 类名: WebFriendLinkController
 * 创建人:lifan 
 * 时间：2017年8月16日 下午2:14:28 
 * @version 1.0.0
 *
 */
@Controller
@RequestMapping("/web/friendLink")
public class WebFriendLinkController {
	
	@Autowired
	private IWebFriendLinkService friendLinkService;
	
	/**
	 * 查询出友情链接
	 * 方法名: list 
	 * 创建人: lifan 
	 * 时间：2017年8月16日 下午2:15:48
	 * @param @param params
	 * @param @return
	 * @return String
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
//	@ResponseBody
//	@RequestMapping("/list")
//	public List<LinkManager> list(MXParams params){
//		//查询出友情链接
//		List<LinkManager> fLinks = friendLinkService.findWebFriendLinks(params);
//		//返回给页面
//		return fLinks;
//	}
	
}
