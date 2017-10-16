package com.moxi.dao.news.web;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.moxi.model.MXParams;
import com.moxi.model.News;

public interface IWebNewsMapper {
	

    News selectByPrimaryKey(Integer id);

    
    
	public List<News> getWebNewsList(MXParams params);//首先查询新闻列表
	
	
	public HashMap<String, Object> getWebNewsDetail(@Param("id")Integer id); //根据Id查询新闻内容
	
	
	public List<HashMap<String, Object>> findWebNewsMoreList(MXParams params); //查询更多
	

	public int count(MXParams params);  //查询新闻总数
}