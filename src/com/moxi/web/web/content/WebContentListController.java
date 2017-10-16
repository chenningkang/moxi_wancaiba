package com.moxi.web.web.content;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.moxi.model.Banner;
import com.moxi.model.MXParams;
import com.moxi.service.banner.web.IWebBannerService;
import com.moxi.service.channel.web.IWebChannelService;


/**
 * list页面控制层
 * 类名: WebContentListController
 * 创建人:lifan 
 * 时间：2017年8月23日 下午2:35:54 
 * @version 1.0.0
 *
 */
@Controller
public class WebContentListController {
	
	@Autowired
	private IWebChannelService channelService;
	
	@Autowired
	private IWebBannerService bannerService;
	
	/**
	 * 返回福彩3d的list2页面
	 * 方法名: fc3d 
	 * 创建人: lifan 
	 * 时间：2017年7月28日 下午1:10:53
	 * @param @return
	 * @return ModelAndView
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/3d")
	public ModelAndView fc3d(){
		ModelAndView modelAndView = new ModelAndView();
//		List<HashMap<String, Object>> channerList2 = channelService.findChannelList2();
//		HashMap<String, Object> listMap = new HashMap<String, Object>();
//		//以键值对的形式存放到map中，可通过key直接拿到所需的id
//		for (int i = 0; i < channerList2.size(); i++) {
//			listMap.put((String) channerList2.get(i).get("description"), channerList2.get(i).get("id"));
//		}
//		//把频道信息放入到session中
//		request.getSession().setAttribute("channelList", listMap);
		
		//获取foot1号的banner信息
		MXParams params = new MXParams();
		List<Banner> footBanners = bannerService.findWebFoot1Banners(params);
		modelAndView.addObject("footBanners", footBanners);
		
		modelAndView.setViewName("web/content/template/fc3dList2");
		return modelAndView;
	}
	
	
	/**
	 * 返回体彩P3的list2页面
	 * 方法名: tcp3 
	 * 创建人: lifan 
	 * 时间：2017年7月28日 下午1:10:53
	 * @param @return
	 * @return ModelAndView
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/p3")
	public ModelAndView tcp3(){
		ModelAndView modelAndView = new ModelAndView();
		
		//获取foot1号的banner信息
		MXParams params = new MXParams();
		List<Banner> footBanners = bannerService.findWebFoot1Banners(params);
		modelAndView.addObject("footBanners", footBanners);
		
		modelAndView.setViewName("web/content/template/tcp3List2");
		return modelAndView;
	}
	
	/**
	 * 返回福彩双色球list2页面
	 * 方法名: fcssq 
	 * 创建人: lifan 
	 * 时间：2017年7月28日 下午1:28:01
	 * @param @return
	 * @return ModelAndView
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/ssq")
	public ModelAndView fcssq(){
		ModelAndView modelAndView = new ModelAndView();
		
		//获取foot1号的banner信息
		MXParams params = new MXParams();
		List<Banner> footBanners = bannerService.findWebFoot1Banners(params);
		modelAndView.addObject("footBanners", footBanners);
		
		modelAndView.setViewName("web/content/template/fcssqList2");
		return modelAndView;
	}
	
	/**
	 * 返回体彩大乐透Lits2页面
	 * 方法名: tcdlt 
	 * 创建人: lifan 
	 * 时间：2017年7月28日 下午1:34:26
	 * @param @return
	 * @return ModelAndView
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/dlt")
	public ModelAndView tcdlt(){
		ModelAndView modelAndView = new ModelAndView();
		
		//获取foot1号的banner信息
		MXParams params = new MXParams();
		List<Banner> footBanners = bannerService.findWebFoot1Banners(params);
		modelAndView.addObject("footBanners", footBanners);
		
		modelAndView.setViewName("web/content/template/tcdltList2");
		return modelAndView;
	}
	
	/**
	 * 返回体彩七星彩的list2页面
	 * 方法名: tcqxc 
	 * 创建人: lifan 
	 * 时间：2017年7月28日 下午1:35:28
	 * @param @return
	 * @return ModelAndView
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/qxc")
	public ModelAndView tcqxc(){
		ModelAndView modelAndView = new ModelAndView();
		
		//获取foot1号的banner信息
		MXParams params = new MXParams();
		List<Banner> footBanners = bannerService.findWebFoot1Banners(params);
		modelAndView.addObject("footBanners", footBanners);
		
		modelAndView.setViewName("web/content/template/tcqxcList2");
		return modelAndView;
	}
	
	/**
	 * 返回七乐彩的list2页面
	 * 方法名: qlc 
	 * 创建人: lifan 
	 * 时间：2017年7月28日 下午1:36:40
	 * @param @return
	 * @return ModelAndView
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/qlc")
	public ModelAndView qlc(){
		ModelAndView modelAndView = new ModelAndView();
		
		//获取foot1号的banner信息
		MXParams params = new MXParams();
		List<Banner> footBanners = bannerService.findWebFoot1Banners(params);
		modelAndView.addObject("footBanners", footBanners);
		
		modelAndView.setViewName("web/content/template/qlcList2");
		return modelAndView;
	}
	
	/**
	 * 返回彩票技巧list页面
	 * 方法名: cpjq 
	 * 创建人: lifan 
	 * 时间：2017年7月31日 下午2:00:16
	 * @param @return
	 * @return ModelAndView
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/cpjq")
	public ModelAndView cpjq(){
		ModelAndView modelAndView = new ModelAndView();
		
		//获取foot1号的banner信息
		MXParams params = new MXParams();
		List<Banner> footBanners = bannerService.findWebFoot1Banners(params);
		modelAndView.addObject("footBanners", footBanners);
		
		modelAndView.setViewName("web/content/template/jiqiaoList2");
		return modelAndView;
	}
}
