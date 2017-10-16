package com.moxi.service.friendLink.admin.impl;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moxi.model.Banner;
import com.moxi.model.Channel;
import com.moxi.model.Company;
import com.moxi.model.Content;
import com.moxi.model.MXParams;
import com.moxi.model.LinkManager;
import com.moxi.core.ServiceResult;
import com.moxi.core.StateCodeConstant;
import com.moxi.dao.banner.admin.IAdminBannerMapper;
import com.moxi.dao.company.admin.IAdminCompanyMapper;
import com.moxi.dao.friendLink.admin.IAdminFriendLinkMapper;
import com.moxi.service.banner.admin.IAdminBannerService;
import com.moxi.service.friendLink.admin.IAdminFriendLinkService;
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
public class AdminFriendLinkServiceImpl implements IAdminFriendLinkService{

	@Autowired
	private IAdminBannerMapper bannerMapper;
	
	@Autowired
	private IAdminCompanyMapper companyMapper;
	
	@Autowired
	private IAdminFriendLinkMapper friendLinkMapper;
	
	@Override
	public List<HashMap<String, Object>> findFriendLinks(MXParams params){
		if(TmStringUtils.isEmpty(params.getOrder()))params.setOrder("createTime desc,sort asc");
		return friendLinkMapper.findFriendLinks(params);
	}
	
	
	@Override
	public LinkManager getFriendLink(Integer id){
		return friendLinkMapper.getFriendLink(id);
	}
	
	@Override
	public int count(MXParams params){
		return bannerMapper.count(params);
	}

	@Override
	public Banner get(Integer id) {
		return bannerMapper.get(id);
	}

	@Override
	public int save(Banner banner) {
		return bannerMapper.save(banner);
	}

	@Override
	public int update(LinkManager friendLink3) {
		return friendLinkMapper.update(friendLink3);
	}

	@Override
	public int delete(MXParams params) {
		return friendLinkMapper.delete(params);
	}

	
	@Override
	public int deleteSelected(String[] id) {
		return friendLinkMapper.deleteSelected(id);
	}

	@Override
	public ServiceResult<Object> updateDetails(LinkManager friendLink3) {
		ServiceResult<Object> result = new ServiceResult<Object>();
		int i = friendLinkMapper.update(friendLink3);
		System.out.println(i);
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
	public ServiceResult<Object> addDetails(LinkManager friendLink3) {
		ServiceResult<Object> result = new ServiceResult<Object>();
		int i = friendLinkMapper.save(friendLink3);
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
