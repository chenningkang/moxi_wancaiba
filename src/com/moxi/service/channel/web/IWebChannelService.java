package com.moxi.service.channel.web;

import java.util.HashMap;
import java.util.List;

import com.moxi.model.Channel;

/**
 * 
 * IChannelService
 * 创建人:lifan 
 * 时间：2017年07月21日 10:08:22
 * @version 1.0.0
 * 
 */
public interface IWebChannelService {

	/**
	 * 查询所有的频道
	 * 方法名: findWebAllChannels 
	 * 创建人: lifan 
	 * 时间：2017年7月24日 下午5:54:48
	 * @param @return
	 * @return List<Channel>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public List<HashMap<String, Object>> findWebAllChannels();
	
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
}
