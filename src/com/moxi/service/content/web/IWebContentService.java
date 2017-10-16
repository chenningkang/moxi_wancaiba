package com.moxi.service.content.web;

import java.util.HashMap;
import java.util.List;

import com.moxi.model.Channel;
import com.moxi.model.Content;
import com.moxi.model.MXParams;

/**
 * web的内容service层
 * 类名: IContentService
 * 创建人:lifan 
 * 时间：2017年8月2日 下午2:53:07 
 * @version 1.0.0
 *
 */
public interface IWebContentService {

	/**
	 * 查询web频道内容
	 * 方法名: findWebContents 
	 * 创建人: lifan 
	 * 时间：2017年7月24日 上午10:16:23
	 * @param @param params
	 * @param @return
	 * @return List<Content>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public List<Content> findWebContents(MXParams params);
	
	public List<Channel> findWebContentts(Integer id);
	
	public List<Content> getWebContentList(MXParams params);
	
	/**
	 * 查询web内容详情
	 * 方法名: findWebContentsDetail 
	 * 创建人: lifan 
	 * 时间：2017年7月24日 上午11:28:02
	 * @param @param params
	 * @param @return
	 * @return Content
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public HashMap<String, Object> getWebContentsDetail(Integer id);
	
	/**
	 * 获取更多资讯
	 * 方法名: findWebMoreList 
	 * 创建人: lifan 
	 * 时间：2017年7月24日 下午2:33:41
	 * @param @param params
	 * @param @return
	 * @return List<Content>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public List<HashMap<String, Object>> findWebMoreList(MXParams params);
	
	/**
	 * 求总数
	 * com.moxi.dao.content 
	 * 方法名：count
	 * 创建人：lifan 
	 * 手机号码:15021297671
	 * 时间：2017年07月17日 11:02:01
	 * @param id
	 * @return 
	 * 返回类型：List<Content>
	 * @exception 
	 * @since  1.0.0
	 */
	public int count(MXParams params);
	
	
	/**
	 * 通过tag的方式获取内容信息<BR>
	 * 方法名：getTagContent<BR>
	 * 创建人：lifan <BR>
	 * 时间：2017年9月1日-下午8:35:16
	 * @param id
	 * @return Content
	 * @exception 
	 * @since  1.0.0
	 */
	public Content getTagContent(Integer id);
}
