package com.moxi.service.channel.web.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moxi.dao.channel.web.IWebChannelMapper;
import com.moxi.service.channel.web.IWebChannelService;

/**
 * 频道管理service
 * 类名: ChannelServiceImpl
 * 创建人:lifan 
 * 时间：2017年8月2日 下午3:10:16 
 * @version 1.0.0
 *
 */
@Service
public class WebChannelServiceImpl implements IWebChannelService{

	@Autowired
	private IWebChannelMapper channelMapper;
	
	@Override
	public List<HashMap<String, Object>> findWebAllChannels(){
		return channelMapper.findWebAllChannels();
	}
	
	@Override
	public List<HashMap<String, Object>> findParentChannelList(Integer opid){
		return channelMapper.findParentChannelList(opid);
	}
	
}
