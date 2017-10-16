package com.moxi.dao.banner.web;

import java.util.HashMap;
import java.util.List;

import com.moxi.model.Banner;
import com.moxi.model.MXParams;

/**
 * banner管理Mapper
 * 类名: IWebBannerMapper
 * 创建人:lifan 
 * 时间：2017年8月17日 上午9:58:04 
 * @version 1.0.0
 *
 */
public interface IWebBannerMapper {

	/**
	 * 查询banner列表
	 * 方法名: findBanners 
	 * 创建人: lifan 
	 * 时间：2017年8月17日 上午9:58:11
	 * @param @param params
	 * @param @return
	 * @return List<HashMap<String,Object>>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public List<Banner> findWebBanners(MXParams params);
	
	/**
	 * web底部通用位置1banner信息
	 * 方法名: findWebFoot1Banners 
	 * 创建人: lifan 
	 * 时间：2017年8月31日 上午10:20:20
	 * @param @return
	 * @return List<Banner>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public List<Banner> findWebFoot1Banners();
	
	
}
