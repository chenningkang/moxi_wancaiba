package com.moxi.service.news.web;

import java.util.HashMap;
import java.util.List;

import com.moxi.model.Channel;
import com.moxi.model.Content;
import com.moxi.model.MXParams;
import com.moxi.model.News;

/**
 * web的内容service层
 * 类名: IContentService
 * 创建人:lifan 
 * 时间：2017年8月2日 下午2:53:07 
 * @version 1.0.0
 *
 */
public interface IWebNewsService {

	
	public List<News> getWebNewsList(MXParams params);
	
	public HashMap<String, Object> getWebNewsDetail(Integer id);
	
	public List<HashMap<String, Object>> findWebNewsMoreList(MXParams params);
	
	public int count(MXParams params);
	
	
}
