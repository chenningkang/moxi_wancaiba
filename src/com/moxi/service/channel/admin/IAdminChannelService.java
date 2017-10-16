package com.moxi.service.channel.admin;

import java.util.HashMap;
import java.util.List;

import com.moxi.core.ServiceResult;
import com.moxi.model.Channel;
import com.moxi.model.MXParams;

/**
 * 
 * IChannelService
 * 创建人:lifan 
 * 时间：2017年07月21日 10:08:22
 * @version 1.0.0
 * 
 */
public interface IAdminChannelService {


	/**
	 * 查询channel管理列表
	 * com.moxi.service.channel 
	 * 方法名：findChannels
	 * 创建人：lifan 
	 * 手机号码:15021297671
	 * 时间：2017年07月21日 10:08:22
	 * @param params
	 * @return 
	 * 返回类型：List<Channel>
	 * @exception 
	 * @since  1.0.0
	 */
	public List<HashMap<String, Object>> findChannels(MXParams params);
	
	
	/**
	 * 查询父频道对应子频道的信息
	 * 方法名: findParentChannelList 
	 * 创建人: lifan 
	 * 时间：2017年7月26日 下午3:22:15
	 * @param @return
	 * @return List<Channel>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public List<HashMap<String, Object>> findParentChannelList(Integer opid);
	
	
	/**
	 * 求总数
	 * com.moxi.dao.channel 
	 * 方法名：count
	 * 创建人：lifan 
	 * 手机号码:15021297671
	 * 时间：2017年07月21日 10:08:22
	 * @param id
	 * @return 
	 * 返回类型：List<Channel>
	 * @exception 
	 * @since  1.0.0
	 */
	public int count(MXParams params);
	
	/**
	 * 获取单条数据
	 * com.moxi.service.channel 
	 * 方法名：findChannels
	 * 创建人：lifan 
	 * 手机号码:15021297671
	 * 时间：2017年07月21日 10:08:22
	 * @param params
	 * @return 
	 * 返回类型：List<Channel>
	 * @exception 
	 * @since  1.0.0
	 */
	public Channel get(Integer id);
	
	/**
	 * 保存channel管理
	 * com.moxi.service.channel 
	 * 方法名：save
	 * 创建人：lifan 
	 * 手机号码:15021297671
	 * 时间：2017年07月21日 10:08:22 
	 * @param channel
	 * @return 
	 * 返回类型：Channel
	 * @exception 
	 * @since  1.0.0
	 */
	public int save(Channel channel);
	
	/**
	 * 更新channel管理
	 * com.moxi.service.channel 
	 * 方法名：update
	 * 创建人：lifan 
	 * 手机号码:15021297671
	 * 时间：2017年07月21日 10:08:22
	 * @param channel
	 * @return 
	 * 返回类型：int
	 * @exception 
	 * @since  1.0.0
	 */
	public int update(Channel channel);
	
	/**
	 * 删除channel管理
	 * com.moxi.service.channel 
	 * 方法名：delete
	 * 创建人：lifan 
	 * 手机号码:15021297671
	 * 时间：2017年07月21日 10:08:22
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
	 * 新接口
	 * 方法名: findChannelList2 
	 * 创建人: lifan 
	 * 时间：2017年7月28日 上午11:41:37
	 * @param @param id
	 * @param @return
	 * @return List<Content>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public List<HashMap<String, Object>> findChannelList2();
	
	
	
	/**
	 * 根据id查询内容信息
	 * 方法名: getChannel 
	 * 创建人: lifan 
	 * 时间：2017年7月21日 下午4:45:02
	 * @param @param params
	 * @param @return
	 * @return Content
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public Channel getChannel(Integer id);
	
	
	/**
	 * @Description: (修改内容信息)
	 * @return
	 * @author cnk
	 */
	ServiceResult<Object> updateDetails(Channel channel);
	
	
	/**
	 * @Description: (新增内容信息)
	 * @return
	 * @author cnk
	 */
	ServiceResult<Object> addDetails(Channel channel);
	
	/**
	 * 
	 * 查询所有的channel
	 * 
	 */
	public List<Channel> findAllChannels();
	
	/**
	 * 查询出所有的父频道
	 * 方法名: findAllPChannels 
	 * 创建人: lifan 
	 * 时间：2017年8月21日 上午9:48:41
	 * @param @return
	 * @return List<Channel>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public List<Channel> findAllPChannels();
}
