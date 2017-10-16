package com.moxi.service.banner.web;

import java.util.HashMap;
import java.util.List;

import com.moxi.model.Banner;
import com.moxi.model.MXParams;

/**
 * banner管理service
 * 类名: IWebBannerService
 * 创建人:lifan 
 * 时间：2017年8月17日 上午10:00:32 
 * @version 1.0.0
 *
 */
public interface IWebBannerService {


	/**
	 * 查询banner信息
	 * 方法名: findBanners 
	 * 创建人: lifan 
	 * 时间：2017年8月17日 上午10:00:46
	 * @param @param params
	 * @param @return
	 * @return List<HashMap<String,Object>>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public List<Banner> findWebIndexBanners(MXParams params);
	
	/**
	 * web底部通用位置1banner信息
	 * 方法名: findWebFoot1Banners 
	 * 创建人: lifan 
	 * 时间：2017年8月31日 上午10:21:29
	 * @param @return
	 * @return List<Banner>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public List<Banner> findWebFoot1Banners(MXParams params);
	
	/**
	 * web详情页右侧相似文章广告位1
	 * 方法名: findWebDetialRight1 
	 * 创建人: lifan 
	 * 时间：2017年8月31日 下午2:38:11
	 * @param @param params
	 * @param @return
	 * @return List<Banner>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public List<Banner> findWebDetialRight1(MXParams params);
	
	/**
	 * web详情页右侧相似文章广告位2
	 * 方法名: findWebDetialRight2 
	 * 创建人: lifan 
	 * 时间：2017年8月31日 下午2:54:09
	 * @param @param params
	 * @param @return
	 * @return List<Banner>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public List<Banner> findWebDetialRight2(MXParams params);
	
	/**
	 * web详情页左侧详情内容底部banner信息
	 * 方法名: findWebDetialLeft 
	 * 创建人: lifan 
	 * 时间：2017年8月31日 下午2:59:53
	 * @param @param params
	 * @param @return
	 * @return List<Banner>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public List<Banner> findWebDetialLeft(MXParams params);
}
