package com.moxi.service.banner.admin.impl;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moxi.core.ServiceResult;
import com.moxi.core.StateCodeConstant;
import com.moxi.dao.banner.admin.IAdminBannerMapper;
import com.moxi.model.Banner;
import com.moxi.model.BannerLocation;
import com.moxi.model.MXParams;
import com.moxi.service.banner.admin.IAdminBannerService;
import com.moxi.util.TmStringUtils;

/**
 * banner管理serviceImpl
 * IContentService
 * 创建人:lifan 
 * 时间：2017年07月17日 11:02:01
 * @version 1.0.0
 * 
 */
@Service
public class AdminBannerServiceImpl implements IAdminBannerService{

	@Autowired
	private IAdminBannerMapper bannerMapper;
	
	@Override
	public List<HashMap<String, Object>> findBanners(MXParams params){
		if(TmStringUtils.isEmpty(params.getOrder()))params.setOrder("comId,sort");
		return bannerMapper.findBanners(params);
	}
	
	
	@Override
	public Banner getBanner(Integer id){
		return bannerMapper.getBanner(id);
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
	public int update(Banner banner) {
		return bannerMapper.update(banner);
	}

	@Override
	public int delete(MXParams params) {
		return bannerMapper.delete(params);
	}

	@Override
	public int deleteSelected(String[] id) {
		return bannerMapper.deleteSelected(id);
	}
	
	@Override
	public ServiceResult<Object> updateDetails(Banner banner) {
		ServiceResult<Object> result = new ServiceResult<Object>();
		int i = bannerMapper.update(banner);
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
	public ServiceResult<Object> addDetails(Banner banner) {
		ServiceResult<Object> result = new ServiceResult<Object>();
		int i = bannerMapper.save(banner);
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
	public List<BannerLocation> findLocations() {
		return bannerMapper.findLocations();
	}


	
	
}
