package com.moxi.service.friendLink.web.impl;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moxi.dao.friendLink.web.IWebFriendLinkMapper;
import com.moxi.model.MXParams;
import com.moxi.model.LinkManager;
import com.moxi.service.friendLink.web.IWebFriendLinkService;

/**
 * 友情链接管理serviceImpl
 * IContentService
 * 创建人:lifan 
 * 时间：2017年07月17日 11:02:01
 * @version 1.0.0
 * 
 */
@Service
public class WebFriendLinkServiceImpl implements IWebFriendLinkService{

	@Autowired
	private IWebFriendLinkMapper friendLinkMapper;
	
	@Override
	public List<LinkManager> findWebFriendLinks(MXParams params) {
		return friendLinkMapper.findWebFriendLinks(params);
	}
}
