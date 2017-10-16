package com.moxi.service.friendLink.web;

import java.util.List;

import com.moxi.model.LinkManager;
import com.moxi.model.MXParams;

/**
 * 友情链接查询
 * 类名: IWebFriendLinkService
 * 创建人:lifan 
 * 时间：2017年8月16日 下午2:05:15 
 * @version 1.0.0
 *
 */
public interface IWebFriendLinkService {


	/**
	 * 查询友情链接
	 * 方法名: findWebFriendLinks 
	 * 创建人: lifan 
	 * 时间：2017年8月16日 下午2:08:15
	 * @param @param params
	 * @param @return
	 * @return List<friendLink>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public List<LinkManager> findWebFriendLinks(MXParams params);
	
}
