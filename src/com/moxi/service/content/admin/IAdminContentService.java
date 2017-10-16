package com.moxi.service.content.admin;

import java.util.HashMap;
import java.util.List;

import com.moxi.core.ServiceResult;
import com.moxi.model.Channel;
import com.moxi.model.Content;
import com.moxi.model.MXParams;

/**
 * 
 * IContentService
 * 创建人:lifan 
 * 时间：2017年07月17日 11:02:01
 * @version 1.0.0
 * 
 */
public interface IAdminContentService {


	/**
	 * 查询内容管理列表
	 * com.moxi.service.content 
	 * 方法名：findContents
	 * 创建人：lifan 
	 * 手机号码:15021297671
	 * 时间：2017年07月17日 11:02:01
	 * @param params
	 * @return 
	 * 返回类型：List<Content>
	 * @exception 
	 * @since  1.0.0
	 */
	public List<HashMap<String, Object>> findContents(MXParams params);
	
	
	/**
	 * 根据id查询内容信息
	 * 方法名: getContent 
	 * 创建人: lifan 
	 * 时间：2017年7月21日 下午4:45:02
	 * @param @param params
	 * @param @return
	 * @return Content
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public Content getContent(Integer id);
	
	
	public HashMap<String, Object> getContentById(Integer id);
	
	
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
	 * 获取单条数据
	 * com.moxi.service.content 
	 * 方法名：findContents
	 * 创建人：lifan 
	 * 手机号码:15021297671
	 * 时间：2017年07月17日 11:02:01
	 * @param params
	 * @return 
	 * 返回类型：List<Content>
	 * @exception 
	 * @since  1.0.0
	 */
	public Content get(Integer id);
	
	/**
	 * 保存内容管理
	 * com.moxi.service.content 
	 * 方法名：save
	 * 创建人：lifan 
	 * 手机号码:15021297671
	 * 时间：2017年07月17日 11:02:01 
	 * @param content
	 * @return 
	 * 返回类型：Content
	 * @exception 
	 * @since  1.0.0
	 */
	public int save(Content content);
	
	/**
	 * 更新内容管理
	 * com.moxi.service.content 
	 * 方法名：update
	 * 创建人：lifan 
	 * 手机号码:15021297671
	 * 时间：2017年07月17日 11:02:01
	 * @param content
	 * @return 
	 * 返回类型：int
	 * @exception 
	 * @since  1.0.0
	 */
	public int update(Content content);
	
	/**
	 * 删除内容管理
	 * com.moxi.service.content 
	 * 方法名：delete
	 * 创建人：lifan 
	 * 手机号码:15021297671
	 * 时间：2017年07月17日 11:02:01
	 * @param params
	 * @return 
	 * 返回类型：int
	 * @exception 
	 * @since  1.0.0
	 */
	public int delete(MXParams params);
	
	/**
	 * 批量删除
	 * 方法名: deleteSelected 
	 * 创建人: lifan 
	 * 时间：2017年8月24日 下午5:29:00
	 * @param @param id
	 * @param @return
	 * @return int
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public int deleteSelected(String[] id);
	
	/**
	 * @Description: (修改内容信息)
	 * @return
	 * @author cnk
	 */
	ServiceResult<Object> updateDetails(Content content);
	
	
	/**
	 * @Description: (新增内容信息)
	 * @return
	 * @author cnk
	 */
	ServiceResult<Object> addDetails(Content content);
	
	
	
}
