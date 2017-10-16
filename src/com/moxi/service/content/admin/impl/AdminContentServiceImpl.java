package com.moxi.service.content.admin.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moxi.model.Channel;
import com.moxi.model.Content;
import com.moxi.model.MXParams;
import com.moxi.core.ServiceResult;
import com.moxi.core.StateCodeConstant;
import com.moxi.dao.content.admin.IAdminContentMapper;
import com.moxi.service.content.admin.IAdminContentService;
import com.moxi.util.TmStringUtils;

/**
 * 内容管理serviceImpl
 * IContentService
 * 创建人:lifan 
 * 时间：2017年07月17日 11:02:01
 * @version 1.0.0
 * 
 */
@Service
public class AdminContentServiceImpl implements IAdminContentService{

	@Autowired
	private IAdminContentMapper contentMapper;
	
	@Override
	public List<HashMap<String, Object>> findContents(MXParams params){
		if(TmStringUtils.isEmpty(params.getOrder()))params.setOrder("channelId");
		return contentMapper.findContents(params);
	}
	
	
	@Override
	public Content getContent(Integer id){
		return contentMapper.getContent(id);
	}
	
	
	@Override
	public HashMap<String, Object> getContentById(Integer id) {
		return contentMapper.getContentById(id);
	}
	
	@Override
	public int count(MXParams params){
		return contentMapper.count(params);
	}

	@Override
	public Content get(Integer id) {
		return contentMapper.get(id);
	}

	@Override
	public int save(Content content) {
		return contentMapper.save(content);
	}

	@Override
	public int update(Content content) {
		return contentMapper.update(content);
	}

	@Override
	public int delete(MXParams params) {
		return contentMapper.delete(params);
	}
	
	@Override
	public int deleteSelected(String[] id) {
		return contentMapper.deleteSelected(id);
	}

	@Override
	public ServiceResult<Object> updateDetails(Content content) {
		ServiceResult<Object> result = new ServiceResult<Object>();
		int i = contentMapper.update(content);
		if (i == 1) {
			result.setStateCode(StateCodeConstant.SUCCESS_CODE);
			result.setMessage("修改成功");
		} else {
			result.setStateCode(StateCodeConstant.ERROR_CODE);
			result.setMessage("修改失败");
		}
		return result;
	}


	@Override
	public ServiceResult<Object> addDetails(Content content) {
		ServiceResult<Object> result = new ServiceResult<Object>();
		int i = contentMapper.save(content);
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

	
	
}
