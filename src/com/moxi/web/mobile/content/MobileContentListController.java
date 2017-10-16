package com.moxi.web.mobile.content;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.moxi.service.channel.web.IWebChannelService;


/**
 * list页面管理
 * 类名: MobileContentListController
 * 创建人:lifan 
 * 时间：2017年8月23日 下午2:34:24 
 * @version 1.0.0
 *
 */
@Controller
@RequestMapping("/m")
public class MobileContentListController {
	
	@Autowired
	private IWebChannelService channelService;
	
	/**
	 * 移动端福彩3d返回list2页面
	 * 方法名: mfc3d 
	 * 创建人: lifan 
	 * 时间：2017年8月10日 上午10:39:37
	 * @param @return
	 * @return ModelAndView
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/3d")
	public ModelAndView mfc3d(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("mobile/template/mfc3dList2");
		return modelAndView;
	}
	
	/**
	 * 移动端体彩P3返回list2页面
	 * 方法名: mtcp3 
	 * 创建人: lifan 
	 * 时间：2017年8月10日 上午10:49:39
	 * @param @return
	 * @return ModelAndView
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/p3")
	public ModelAndView mtcp3(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("mobile/template/mtcp3List2");
		return modelAndView;
	}
	
	/**
	 * 移动端双色球返回list2页面
	 * 方法名: mfcssq 
	 * 创建人: lifan 
	 * 时间：2017年8月10日 上午10:49:51
	 * @param @return
	 * @return ModelAndView
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/ssq")
	public ModelAndView mfcssq(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("mobile/template/mfcssqList2");
		return modelAndView;
	}
	
	/**
	 * 移动端大乐透返回list2页面
	 * 方法名: mtcdlt 
	 * 创建人: lifan 
	 * 时间：2017年8月10日 上午10:50:00
	 * @param @return
	 * @return ModelAndView
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/dlt")
	public ModelAndView mtcdlt(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("mobile/template/mdltList2");
		return modelAndView;
	}
	
	/**
	 * 移动端七星彩返回list2页面
	 * 方法名: mtcqxc 
	 * 创建人: lifan 
	 * 时间：2017年8月10日 上午10:50:10
	 * @param @return
	 * @return ModelAndView
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/qxc")
	public ModelAndView mtcqxc(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("mobile/template/mqxcList2");
		return modelAndView;
	}
	
	/**
	 * 移动端七乐彩返回list2页面
	 * 方法名: mqlc 
	 * 创建人: lifan 
	 * 时间：2017年8月10日 上午10:50:19
	 * @param @return
	 * @return ModelAndView
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/qlc")
	public ModelAndView mqlc(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("mobile/template/mqlcList2");
		return modelAndView;
	}
	
	/**
	 * 移动端彩票技巧
	 * 方法名: cpjq 
	 * 创建人: lifan 
	 * 时间：2017年8月10日 上午11:49:43
	 * @param @return
	 * @return ModelAndView
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/cpjq")
	public ModelAndView cpjq(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("mobile/template/mjiqiaoList2");
		return modelAndView;
	}
}
