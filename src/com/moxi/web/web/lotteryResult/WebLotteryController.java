package com.moxi.web.web.lotteryResult;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.moxi.model.Banner;
import com.moxi.model.LotteryPojo;
import com.moxi.model.MXParams;
import com.moxi.service.banner.web.IWebBannerService;
import com.moxi.service.lottery.web.IWebLotteryService;
import com.moxi.util.TmStringUtils;

/**
 * 彩票更多开奖结果控制层
 * 类名: WebLotteryController
 * 创建人:lifan 
 * 时间：2017年8月23日 下午2:36:42 
 * @version 1.0.0
 *
 */
@Controller
@RequestMapping("/web/lottery")
public class WebLotteryController {
	
	@Autowired
	private IWebLotteryService webLotteryService;
	
	@Autowired
	private IWebBannerService bannerService;
	
	/**
	 * 查询双色球开奖结果
	 * 方法名: list 
	 * 创建人: lifan 
	 * 时间：2017年8月21日 下午5:47:10
	 * @param @param params
	 * @param @return
	 * @return ModelAndView
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/ssqrstlist")
	public ModelAndView ssqlotteryList(MXParams mxParams){
		ModelAndView modelAndView = new ModelAndView();
		mxParams.setLotteryType("ssq");
		mxParams.setPageSize(20);//设置初始化显示条数
		List<LotteryPojo> lotteryLists = webLotteryService.findLotteryByType(mxParams);
		//拿到双色球的开奖结果条数
		int count = webLotteryService.count(mxParams);
		modelAndView.addObject("lotteryRst", lotteryLists);
		modelAndView.addObject("itemCount", count);
		//获取foot1号的banner信息
		MXParams params = new MXParams();
		List<Banner> footBanners = bannerService.findWebFoot1Banners(params);
		modelAndView.addObject("footBanners", footBanners);
		
		modelAndView.setViewName("web/lottery/ssqMorekj");
		return modelAndView;
	}
	
	/**
	 * 双色球分页模板
	 * 方法名: ssqtemplate 
	 * 创建人: lifan 
	 * 时间：2017年8月22日 下午3:10:24
	 * @param @param mxParams
	 * @param @return
	 * @return ModelAndView
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/ssqtemplate")
	public ModelAndView ssqtemplate(MXParams mxParams){
		ModelAndView modelAndView = new ModelAndView();
		mxParams.setLotteryType("ssq");
		//查询出双色球的开奖结果
		List<LotteryPojo> lotteryLists = webLotteryService.findLotteryByType(mxParams);
		//拿到双色球的开奖结果条数
		int count = webLotteryService.count(mxParams);
		modelAndView.addObject("lotteryRst", lotteryLists);
		modelAndView.addObject("itemCount", count);
		modelAndView.setViewName("web/lottery/template/ssqkjtemplate");
		return modelAndView;
	}
	
	
	/**
	 * 七乐彩开奖结果
	 * 方法名: lotteryList 
	 * 创建人: lifan 
	 * 时间：2017年8月22日 下午3:10:39
	 * @param @param mxParams
	 * @param @return
	 * @return ModelAndView
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/qlcrstlist")
	public ModelAndView qlclotteryList(MXParams mxParams){
		ModelAndView modelAndView = new ModelAndView();
		mxParams.setLotteryType("qlc");
		mxParams.setPageSize(20);//设置初始化显示条数
		List<LotteryPojo> lotteryLists = webLotteryService.findLotteryByType(mxParams);
		//拿到双色球的开奖结果条数
		int count = webLotteryService.count(mxParams);
		modelAndView.addObject("itemCount", count);
		modelAndView.addObject("lotteryRst", lotteryLists);
		//获取foot1号的banner信息
		MXParams params = new MXParams();
		List<Banner> footBanners = bannerService.findWebFoot1Banners(params);
		modelAndView.addObject("footBanners", footBanners);
		modelAndView.setViewName("web/lottery/qlcMorekj");
		return modelAndView;
		
	}
	
	/**
	 * 七乐彩分页模板
	 * 方法名: qlctemplate 
	 * 创建人: lifan 
	 * 时间：2017年8月29日 下午3:06:01
	 * @param @param mxParams
	 * @param @return
	 * @return ModelAndView
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/qlctemplate")
	public ModelAndView qlctemplate(MXParams mxParams){
		ModelAndView modelAndView = new ModelAndView();
		mxParams.setLotteryType("qlc");
		//查询出七乐彩的开奖结果
		List<LotteryPojo> lotteryLists = webLotteryService.findLotteryByType(mxParams);
		//拿到七乐彩的开奖结果条数
		int count = webLotteryService.count(mxParams);
		modelAndView.addObject("lotteryRst", lotteryLists);
		modelAndView.addObject("itemCount", count);
		modelAndView.setViewName("web/lottery/template/qlckjtemplate");
		return modelAndView;
	}
	
	/**
	 * 大乐透开奖结果
	 * 方法名: lotteryList 
	 * 创建人: lifan 
	 * 时间：2017年8月22日 下午3:10:39
	 * @param @param mxParams
	 * @param @return
	 * @return ModelAndView
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/dltrstlist")
	public ModelAndView dltlotteryList(MXParams mxParams){
		ModelAndView modelAndView = new ModelAndView();
		mxParams.setLotteryType("dlt");
		mxParams.setPageSize(20);//设置初始化显示条数
		List<LotteryPojo> lotteryLists = webLotteryService.findLotteryByType(mxParams);
		//拿到双色球的开奖结果条数
		int count = webLotteryService.count(mxParams);
		modelAndView.addObject("itemCount", count);
		modelAndView.addObject("lotteryRst", lotteryLists);
		//获取foot1号的banner信息
		MXParams params = new MXParams();
		List<Banner> footBanners = bannerService.findWebFoot1Banners(params);
		modelAndView.addObject("footBanners", footBanners);
		modelAndView.setViewName("web/lottery/dltMorekj");
		return modelAndView;
	}
	
	/**
	 * 大乐透开奖分页模板
	 * 方法名: dlttemplate 
	 * 创建人: lifan 
	 * 时间：2017年8月29日 下午3:22:25
	 * @param @param mxParams
	 * @param @return
	 * @return ModelAndView
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/dlttemplate")
	public ModelAndView dlttemplate(MXParams mxParams){
		ModelAndView modelAndView = new ModelAndView();
		mxParams.setLotteryType("dlt");
		//查询出七乐彩的开奖结果
		List<LotteryPojo> lotteryLists = webLotteryService.findLotteryByType(mxParams);
		//拿到七乐彩的开奖结果条数
		int count = webLotteryService.count(mxParams);
		modelAndView.addObject("lotteryRst", lotteryLists);
		modelAndView.addObject("itemCount", count);
		modelAndView.setViewName("web/lottery/template/dltkjtemplate");
		return modelAndView;
	}
	
	/**
	 * 排列三开奖结果
	 * 方法名: lotteryList 
	 * 创建人: lifan 
	 * 时间：2017年8月22日 下午3:10:39
	 * @param @param mxParams
	 * @param @return
	 * @return ModelAndView
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/plsrstlist")
	public ModelAndView plslotteryList(MXParams mxParams){
		ModelAndView modelAndView = new ModelAndView();
		mxParams.setLotteryType("pls");
		mxParams.setPageSize(20);//设置初始化显示条数
		List<LotteryPojo> lotteryLists = webLotteryService.findLotteryByType(mxParams);
		//转换为map的方式来做
		List<HashMap<String, Object>> mapLists = new ArrayList<HashMap<String, Object>>();
		for (LotteryPojo lotteryPojo : lotteryLists) {
			HashMap<String, Object> map = new HashMap<String, Object>();
			String[] aa = lotteryPojo.getNumber().split(",");
			int bb = 0;
			String cc= "";
			for (int i = 0; i < aa.length; i++) {
				bb+=Integer.valueOf(aa[i]);
				cc+=aa[i];
			}
			map.put("qihao", lotteryPojo.getQihao());
			map.put("number", lotteryPojo.getNumber());
			map.put("number2", cc);
			map.put("numsum", bb);
			mapLists.add(map);
		}
		int count = webLotteryService.count(mxParams);
		modelAndView.addObject("itemCount", count);
		modelAndView.addObject("lotteryRst", mapLists);
		//获取foot1号的banner信息
		MXParams params = new MXParams();
		List<Banner> footBanners = bannerService.findWebFoot1Banners(params);
		modelAndView.addObject("footBanners", footBanners);
		modelAndView.setViewName("web/lottery/plsMorekj");
		return modelAndView;
	}
	
	/**
	 * 排列三开奖模板
	 * 方法名: plstemplate 
	 * 创建人: lifan 
	 * 时间：2017年8月29日 下午3:31:54
	 * @param @param mxParams
	 * @param @return
	 * @return ModelAndView
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/plstemplate")
	public ModelAndView plstemplate(MXParams mxParams){
		ModelAndView modelAndView = new ModelAndView();
		mxParams.setLotteryType("pls");
		List<LotteryPojo> lotteryLists = webLotteryService.findLotteryByType(mxParams);
		//转换为map的方式来做
		List<HashMap<String, Object>> mapLists = new ArrayList<HashMap<String, Object>>();
		for (LotteryPojo lotteryPojo : lotteryLists) {
			HashMap<String, Object> map = new HashMap<String, Object>();
			String[] aa = lotteryPojo.getNumber().split(",");
			int bb = 0;
			String cc= "";
			for (int i = 0; i < aa.length; i++) {
				bb+=Integer.valueOf(aa[i]);
				cc+=aa[i];
			}
			map.put("qihao", lotteryPojo.getQihao());
			map.put("number", lotteryPojo.getNumber());
			map.put("number2", cc);
			map.put("numsum", bb);
			mapLists.add(map);
		}
		int count = webLotteryService.count(mxParams);
		modelAndView.addObject("itemCount", count);
		modelAndView.addObject("lotteryRst", mapLists);
		modelAndView.setViewName("web/lottery/template/plstemplate");
		return modelAndView;
	}
	
	/**
	 * 3D开奖结果
	 * 方法名: lotteryList 
	 * 创建人: lifan 
	 * 时间：2017年8月22日 下午3:10:39
	 * @param @param mxParams
	 * @param @return
	 * @return ModelAndView
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/sdrstlist")
	public ModelAndView sdlotteryList(MXParams mxParams){
		ModelAndView modelAndView = new ModelAndView();
		mxParams.setLotteryType("sd");
		mxParams.setPageSize(20);//设置初始化显示条数
		List<LotteryPojo> lotteryLists = webLotteryService.findLotteryByType(mxParams);
		List<LotteryPojo> lotterylists2 = webLotteryService.findSdsjhLotteryByType(mxParams);
		int lenth = lotteryLists.size();
		int lenth2 = lotterylists2.size();
		//3d开奖号码转换为map的方式来做
		List<HashMap<String, Object>> mapLists = new ArrayList<HashMap<String, Object>>();
	//循环取得所有的开奖号码
		for (int i = 0; i < lenth; i++) {
			HashMap<String, Object> map = new HashMap<String, Object>();
			String[] aa = lotteryLists.get(i).getNumber().split(",");
			int bb = 0;
			String cc = "";
			for (int j = 0; j < aa.length; j++) {
				bb+=Integer.valueOf(aa[j]);
				cc+=aa[j];
			}
			//如果没有对应的试机号了，那么就用*号替代
			if (lenth2-i>=1) {
				String cc2 = "";
				String[] aa2 = lotterylists2.get(i).getNumber().split(",");
				for (int j = 0; j < aa2.length; j++) {
					cc2+=aa2[j];
				}
				map.put("number2sjh", cc2);
			}else {
				map.put("number2sjh", "***");
			}
			map.put("qihao", lotteryLists.get(i).getQihao());
			map.put("number", lotteryLists.get(i).getNumber());
			map.put("number2", cc);
			map.put("numsum", bb);
			mapLists.add(map);
		}
		int count = webLotteryService.count(mxParams);
		modelAndView.addObject("itemCount", count);
		modelAndView.addObject("lotteryRst", mapLists);
		//获取foot1号的banner信息
		MXParams params = new MXParams();
		List<Banner> footBanners = bannerService.findWebFoot1Banners(params);
		modelAndView.addObject("footBanners", footBanners);
		modelAndView.setViewName("web/lottery/sdMorekj");
		return modelAndView;
	}
	
	/**
	 * 3D开奖分页模板
	 * 方法名: sdtemplate 
	 * 创建人: lifan 
	 * 时间：2017年8月29日 下午3:36:19
	 * @param @param mxParams
	 * @param @return
	 * @return ModelAndView
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/sdtemplate")
	public ModelAndView sdtemplate(MXParams mxParams){
		ModelAndView modelAndView = new ModelAndView();
		mxParams.setLotteryType("sd");
		List<LotteryPojo> lotteryLists = webLotteryService.findLotteryByType(mxParams);
		List<LotteryPojo> lotterylists2 = webLotteryService.findSdsjhLotteryByType(mxParams);
		int lenth = lotteryLists.size();
		int lenth2 = lotterylists2.size();
		//3d开奖号码转换为map的方式来做
		List<HashMap<String, Object>> mapLists = new ArrayList<HashMap<String, Object>>();
		//循环取得所有的开奖号码
		for (int i = 0; i < lenth; i++) {
			HashMap<String, Object> map = new HashMap<String, Object>();
			String[] aa = lotteryLists.get(i).getNumber().split(",");
			int bb = 0;
			String cc = "";
			for (int j = 0; j < aa.length; j++) {
				bb+=Integer.valueOf(aa[j]);
				cc+=aa[j];
			}
			//如果没有对应的试机号了，那么就用*号替代
			if (lenth2-i>=1) {
				String cc2 = "";
				String[] aa2 = lotterylists2.get(i).getNumber().split(",");
				for (int j = 0; j < aa2.length; j++) {
					cc2+=aa2[j];
				}
				map.put("number2sjh", cc2);
			}else {
				map.put("number2sjh", "***");
			}
			map.put("qihao", lotteryLists.get(i).getQihao());
			map.put("number", lotteryLists.get(i).getNumber());
			map.put("number2", cc);
			map.put("numsum", bb);
			mapLists.add(map);
		}
		int count = webLotteryService.count(mxParams);
		modelAndView.addObject("itemCount", count);
		modelAndView.addObject("lotteryRst", mapLists);
		modelAndView.setViewName("web/lottery/template/sdtemplate");
		return modelAndView;
	}
	
	/**
	 * 七星彩开奖结果
	 * 方法名: lotteryList 
	 * 创建人: lifan 
	 * 时间：2017年8月22日 下午3:10:39
	 * @param @param mxParams
	 * @param @return
	 * @return ModelAndView
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/qxcrstlist")
	public ModelAndView qxclotteryList(MXParams mxParams){
		ModelAndView modelAndView = new ModelAndView();
		mxParams.setLotteryType("qxc");
		mxParams.setPageSize(20);//设置初始化显示条数
		List<LotteryPojo> lotteryLists = webLotteryService.findLotteryByType(mxParams);
		
		//转换为map的方式来做
		List<HashMap<String, Object>> mapLists = new ArrayList<HashMap<String, Object>>();
		for (LotteryPojo lotteryPojo : lotteryLists) {
			HashMap<String, Object> map = new HashMap<String, Object>();
			String[] aa = lotteryPojo.getNumber().split(",");
			String  bb = "";
			for (int i = 0; i < aa.length; i++) {
				bb+=aa[i];
			}
			map.put("qihao", lotteryPojo.getQihao());
			map.put("number", lotteryPojo.getNumber());
			map.put("number2", bb);
			mapLists.add(map);
		}
		int count = webLotteryService.count(mxParams);
		modelAndView.addObject("itemCount", count);
		modelAndView.addObject("lotteryRst", mapLists);
		//获取foot1号的banner信息
		MXParams params = new MXParams();
		List<Banner> footBanners = bannerService.findWebFoot1Banners(params);
		modelAndView.addObject("footBanners", footBanners);
		modelAndView.setViewName("web/lottery/qxcMorekj");
		return modelAndView;
	}
	
	/**
	 * 七星彩开奖分页模板
	 * 方法名: qxctemplate 
	 * 创建人: lifan 
	 * 时间：2017年8月29日 下午3:37:59
	 * @param @param mxParams
	 * @param @return
	 * @return ModelAndView
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/qxctemplate")
	public ModelAndView qxctemplate(MXParams mxParams){
		ModelAndView modelAndView = new ModelAndView();
		mxParams.setLotteryType("qxc");
		List<LotteryPojo> lotteryLists = webLotteryService.findLotteryByType(mxParams);
		
		//转换为map的方式来做
		List<HashMap<String, Object>> mapLists = new ArrayList<HashMap<String, Object>>();
		for (LotteryPojo lotteryPojo : lotteryLists) {
			HashMap<String, Object> map = new HashMap<String, Object>();
			String[] aa = lotteryPojo.getNumber().split(",");
			String  bb = "";
			for (int i = 0; i < aa.length; i++) {
				bb+=aa[i];
			}
			map.put("qihao", lotteryPojo.getQihao());
			map.put("number", lotteryPojo.getNumber());
			map.put("number2", bb);
			mapLists.add(map);
		}
		int count = webLotteryService.count(mxParams);
		modelAndView.addObject("itemCount", count);
		modelAndView.addObject("lotteryRst", mapLists);
		modelAndView.setViewName("web/lottery/template/qxctemplate");
		return modelAndView;
	}
}
