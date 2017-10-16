package com.moxi.dao.content.web;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.moxi.model.Channel;
import com.moxi.model.Content;
import com.moxi.model.MXParams;

/**
 * web内容管理接口
 * 类名: IContentMapper
 * 创建人:lifan 
 * 时间：2017年8月2日 下午2:13:32 
 * @version 1.0.0
 *
 */
public interface IWebContentMapper {

	/**
	 * 根据频道id查询频道内容 -web
	 * 方法名: findWebContent 
	 * 创建人: lifan 
	 * 时间：2017年7月24日 上午10:15:41
	 * @param @param params
	 * @param @return
	 * @return List<Content>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public List<Content> findWebContents(MXParams params);
	public List<Channel> findWebContentts(@Param("id")Integer id);
	public List<Content> getWebContentList(MXParams params);
	
	/**
	 * 查询web内容详情 
	 * 方法名: findWebContentsDetail 
	 * 创建人: lifan 
	 * 时间：2017年7月24日 上午11:26:31
	 * @param @param params
	 * @param @return
	 * @return List<Content>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public HashMap<String, Object> getWebContentsDetail(@Param("id")Integer id);
	
	/**
	 * 查询更多资讯信息
	 * 方法名: findWebMoreList 
	 * 创建人: lifan 
	 * 时间：2017年7月24日 下午2:32:44
	 * @param @param params
	 * @param @return
	 * @return List<Content>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public List<HashMap<String, Object>> findWebMoreList(MXParams params);
	
	/**
	 * 求当前类型内容的总数
	 * 方法名: count 
	 * 创建人: lifan 
	 * 时间：2017年8月2日 下午2:51:25
	 * @param @param params
	 * @param @return
	 * @return int
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public int count(MXParams params);
	
	
	
	
	/**
	 * 通过tag获取内容信息<BR>
	 * 方法名：getTagContent<BR>
	 * 创建人：lifan <BR>
	 * 时间：2017年9月1日-下午8:32:27
	 * @param id
	 * @return Content
	 * @exception 
	 * @since  1.0.0
	 */
	public Content getTagContent(@Param("id")Integer id);
	
}
