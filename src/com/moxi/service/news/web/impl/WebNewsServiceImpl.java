package com.moxi.service.news.web.impl;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.moxi.dao.news.web.IWebNewsMapper;
import com.moxi.model.MXParams;
import com.moxi.model.News;
import com.moxi.service.news.web.IWebNewsService;
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
public class WebNewsServiceImpl implements IWebNewsService{

	@Autowired
	private IWebNewsMapper newsMapper;
	

	@Override
	public HashMap<String, Object> getWebNewsDetail(Integer id){
		return newsMapper.getWebNewsDetail(id);
	}
	
	@Override
	public List<HashMap<String, Object>> findWebNewsMoreList(MXParams params){
		if(TmStringUtils.isEmpty(params.getOrder()))params.setOrder("is_top desc");
		return newsMapper.findWebNewsMoreList(params);
	}
	
	@Override
	public int count(MXParams params){
		return newsMapper.count(params);
	}

	@Override
	public List<News> getWebNewsList(MXParams params) {
		if(TmStringUtils.isEmpty(params.getOrder()))params.setOrder("is_top desc");
		return newsMapper.getWebNewsList(params);
	}



}
