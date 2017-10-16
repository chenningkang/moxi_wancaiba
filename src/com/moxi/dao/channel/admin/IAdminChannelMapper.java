package com.moxi.dao.channel.admin;

import java.util.HashMap;
import java.util.List;

import com.moxi.model.Channel;
import com.moxi.model.Content;
import com.moxi.model.MXParams;

/**
 * channel管理Mapper
 * IChannelMapper
 * 创建人:lifan 
 * 时间：2017年07月21日 10:08:22
 * @version 1.0.0
 * 
 */
public interface IAdminChannelMapper {

	/**
	 * 查询channel管理列表
	 * 方法名: findChannels 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:01:03
	 * @param @param params
	 * @param @return
	 * @return List<HashMap<String,Object>>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public List<HashMap<String, Object>> findChannels(MXParams params);
	
	/**
	 * 查询父频道对应的子频道的信息
	 * 方法名: findParentChannelList 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:01:09
	 * @param @param opid
	 * @param @return
	 * @return List<HashMap<String,Object>>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public List<HashMap<String, Object>> findParentChannelList(Integer opid);
	
	/**
	 * 求总数
	 * 方法名: count 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:01:16
	 * @param @param params
	 * @param @return
	 * @return int
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public int count(MXParams params);
	
	/**
	 * 获取channel管理单条数据
	 * 方法名: get 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:01:23
	 * @param @param id
	 * @param @return
	 * @return Channel
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public Channel get(Integer id);
	
	/**
	 * 保存channel管理
	 * 方法名: save 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:01:31
	 * @param @param channel
	 * @param @return
	 * @return int
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public int save(Channel channel);
	
	/**
	 * 更新channel管理
	 * 方法名: update 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:01:37
	 * @param @param channel
	 * @param @return
	 * @return int
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public int update(Channel channel);
	
	/**
	 * 删除channel管理
	 * 方法名: delete 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:01:42
	 * @param @param params
	 * @param @return
	 * @return int
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public int delete(MXParams params);
	
	/**
	 * 批量删除
	 * 方法名: deleteSelected 
	 * 创建人: lifan 
	 * 时间：2017年8月24日 下午5:27:29
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
	 * 时间：2017年7月28日 上午11:40:50
	 * @param @param opid
	 * @param @return
	 * @return List<HashMap<String,Object>>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public List<HashMap<String, Object>> findChannelList2();
	
	/**
	 * 根据id查询内容
	 * 方法名: getChannel 
	 * 创建人: lifan 
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public Channel getChannel(Integer id);
	
	
	
	public List<Channel>  findAllChannels();
    
	/**
	 * 查询出所有的父频道
	 * 方法名: findAllPChannels 
	 * 创建人: lifan 
	 * 时间：2017年8月21日 上午9:45:37
	 * @param @return
	 * @return List<Channel>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
    public List<Channel> findAllPChannels();
}
