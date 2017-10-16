package com.moxi.service.banner.web.impl;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moxi.dao.banner.web.IWebBannerMapper;
import com.moxi.model.Banner;
import com.moxi.model.MXParams;
import com.moxi.service.banner.web.IWebBannerService;
import com.moxi.util.TzConstant;

/**
 * banern管理
 * 类名: WebBannerServiceImpl
 * 创建人:lifan 
 * 时间：2017年8月17日 上午10:02:41 
 * @version 1.0.0
 *
 */
@Service
public class WebBannerServiceImpl extends TzConstant implements IWebBannerService{

	@Autowired
	private IWebBannerMapper bannerMapper;

	@Override
	public List<Banner> findWebIndexBanners(MXParams params) {
		params.setBannerLocationId(BANNERLOACTION1);
		return bannerMapper.findWebBanners(params);
	}

	@Override
	public List<Banner> findWebFoot1Banners(MXParams params) {
		params.setBannerLocationId(BANNERLOACTION2);
		return bannerMapper.findWebBanners(params);
	}

	@Override
	public List<Banner> findWebDetialRight1(MXParams params) {
		params.setBannerLocationId(BANNERLOACTION5);
		return bannerMapper.findWebBanners(params);
	}

	@Override
	public List<Banner> findWebDetialRight2(MXParams params) {
		params.setBannerLocationId(BANNERLOACTION6);
		return bannerMapper.findWebBanners(params);
	}

	@Override
	public List<Banner> findWebDetialLeft(MXParams params) {
		params.setBannerLocationId(BANNERLOACTION4);
		return bannerMapper.findWebBanners(params);
	}
	
}
