package com.moxi.service.content.web.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moxi.dao.content.web.IWebContentMapper;
import com.moxi.model.Channel;
import com.moxi.model.Content;
import com.moxi.model.MXParams;
import com.moxi.service.content.web.IWebContentService;
import com.moxi.util.TmStringUtils;

/**
 * 内容管理serviceImpl
 * IContentService
 * 创建人:lifan 
 * 时间：2017年07月17日 11:02:01
 * @version 1.0.0
 * 
 */
@Service
public class WebContentServiceImpl implements IWebContentService{

	@Autowired
	private IWebContentMapper contentMapper;
	
	@Override
	public List<Content> findWebContents(MXParams params){
		if(TmStringUtils.isEmpty(params.getOrder()))params.setOrder("is_top desc");
		return contentMapper.findWebContents(params);
	}
	
	@Override
	public HashMap<String, Object> getWebContentsDetail(Integer id){
		return contentMapper.getWebContentsDetail(id);
	}
	
	@Override
	public List<HashMap<String, Object>> findWebMoreList(MXParams params){
		if(TmStringUtils.isEmpty(params.getOrder()))params.setOrder("is_top desc");
		return contentMapper.findWebMoreList(params);
	}
	
	@Override
	public int count(MXParams params){
		return contentMapper.count(params);
	}

	@Override
	public Content getTagContent(Integer id) {
		return contentMapper.getTagContent(id);
	}

	@Override
	public List<Channel> findWebContentts(Integer id){
		return contentMapper.findWebContentts(id);
	}

	@Override
	public List<Content> getWebContentList(MXParams params) {
		if(TmStringUtils.isEmpty(params.getOrder()))params.setOrder("is_top desc");
		return contentMapper.getWebContentList(params);
	}

}
