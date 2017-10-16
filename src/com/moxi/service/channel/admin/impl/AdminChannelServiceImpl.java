package com.moxi.service.channel.admin.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moxi.model.Channel;
import com.moxi.model.MXParams;
import com.moxi.core.ServiceResult;
import com.moxi.core.StateCodeConstant;
import com.moxi.dao.channel.admin.IAdminChannelMapper;
import com.moxi.service.channel.admin.IAdminChannelService;
import com.moxi.util.TmStringUtils;

/**
 * channel管理serviceImpl
 * IChannelService
 * 创建人:lifan 
 * 时间：2017年07月21日 10:08:22
 * @version 1.0.0
 * 
 */
@Service
public class AdminChannelServiceImpl implements IAdminChannelService{

	@Autowired
	private IAdminChannelMapper channelMapper;
	
	@Override
	public List<HashMap<String, Object>> findChannels(MXParams params){
		if(TmStringUtils.isEmpty(params.getOrder()))params.setOrder("a.id asc");
		return channelMapper.findChannels(params);
	}
	
	
	@Override
	public List<HashMap<String, Object>> findParentChannelList(Integer opid){
		return channelMapper.findParentChannelList(opid);
	}
	
	
	@Override
	public int count(MXParams params){
		return channelMapper.count(params);
	}

	@Override
	public Channel get(Integer id) {
		return channelMapper.get(id);
	}

	@Override
	public int save(Channel channel) {
		return channelMapper.save(channel);
	}

	@Override
	public int update(Channel channel) {
		return channelMapper.update(channel);
	}

	@Override
	public int delete(MXParams params) {
		return channelMapper.delete(params);
	}
	
	@Override
	public int deleteSelected(String[] id) {
		return channelMapper.deleteSelected(id);
	}

	@Override
	public List<HashMap<String, Object>> findChannelList2() {
		return channelMapper.findChannelList2();
	}

	@Override
	public Channel getChannel(Integer id) {
		return channelMapper.getChannel(id);
	}

	@Override
	public ServiceResult<Object> updateDetails(Channel channel) {
		ServiceResult<Object> result = new ServiceResult<Object>();
		int i = channelMapper.update(channel);
		System.out.println(i);
		if (i == 1) {
			result.setStateCode(StateCodeConstant.SUCCESS_CODE);
			result.setMessage("新增成功");
		} else {
			result.setStateCode(StateCodeConstant.ERROR_CODE);
			result.setMessage("新增失败");
		}
		return result;
	
	}

	@Override
	public ServiceResult<Object> addDetails(Channel channel) {
		ServiceResult<Object> result = new ServiceResult<Object>();
		int i = channelMapper.save(channel);
		System.out.println(i);
		if (i == 1) {
			result.setStateCode(StateCodeConstant.SUCCESS_CODE);
			result.setMessage("新增成功");
		} else {
			result.setStateCode(StateCodeConstant.ERROR_CODE);
			result.setMessage("新增失败");
		}
		return result;
	}


	@Override
	public List<Channel> findAllChannels() {
		List<Channel> allChannelList  = channelMapper.findAllChannels();
		return allChannelList;
	}


	@Override
	public List<Channel> findAllPChannels() {
		return channelMapper.findAllPChannels();
	}


}
