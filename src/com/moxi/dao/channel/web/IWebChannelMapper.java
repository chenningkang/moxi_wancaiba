package com.moxi.dao.channel.web;

import java.util.HashMap;
import java.util.List;

import com.moxi.model.Channel;

/**
 * channel管理Mapper
 * IChannelMapper
 * 创建人:lifan 
 * 时间：2017年07月21日 10:08:22
 * @version 1.0.0
 * 
 */
public interface IWebChannelMapper {

	/**
	 * 查询web页面显示的频道
	 * 方法名: findWebAllChannels 
	 * 创建人: lifan 
	 * 时间：2017年7月21日 下午5:55:14
	 * @param @param params
	 * @param @return
	 * @return List<Channel>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public List<HashMap<String, Object>> findWebAllChannels();
	
	
	/**
	 * 查询父频道对应的子频道的信息
	 * 方法名: findParentChannelList 
	 * 创建人: lifan 
	 * 时间：2017年8月2日 下午3:06:44
	 * @param @param opid
	 * @param @return
	 * @return List<HashMap<String,Object>>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public List<HashMap<String, Object>> findParentChannelList(Integer opid);
	
}
