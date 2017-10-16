package com.moxi.dao.friendLink.web;

import java.util.HashMap;
import java.util.List;

import com.moxi.model.Banner;
import com.moxi.model.Content;
import com.moxi.model.MXParams;
import com.moxi.model.LinkManager;

/**
 * 友情链接管理
 * 类名: IWebFriendLinkMapper
 * 创建人:lifan 
 * 时间：2017年8月16日 下午1:56:26 
 * @version 1.0.0
 *
 */
public interface IWebFriendLinkMapper {

	/**
	 * 
	 * 方法名: findFriendLinks 
	 * 创建人: lifan 
	 * 时间：2017年8月16日 下午1:56:43
	 * @param @param params
	 * @param @return
	 * @return List<HashMap<String,Object>>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public List<LinkManager> findWebFriendLinks(MXParams params);
	
}
