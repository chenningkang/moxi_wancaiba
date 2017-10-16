package com.moxi.web.web.banner;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.moxi.model.Banner;
import com.moxi.model.MXParams;
import com.moxi.service.banner.web.IWebBannerService;

/**
 * banner控制层
 * 类名: WebBannerController
 * 创建人:lifan 
 * 时间：2017年8月17日 上午10:03:39 
 * @version 1.0.0
 *
 */
@Controller
@RequestMapping("/web/banner")
public class WebBannerController {
	
	@Autowired
	private IWebBannerService bannerService;
	
	/**
	 * 查询出banner信息
	 * 方法名: list 
	 * 创建人: lifan 
	 * 时间：2017年8月16日 下午2:15:48
	 * @param @param params
	 * @param @return
	 * @return String
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
//	@ResponseBody
//	@RequestMapping("/list")
//	public List<HashMap<String, Object>> list(MXParams params){
//		//查询出banner信息
//		List<HashMap<String, Object>> banners = bannerService.findWebBanners(params);
//		//返回给页面
//		return banners;
//	}
	
}
