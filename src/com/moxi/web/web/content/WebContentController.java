package com.moxi.web.web.content;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.servlet.ModelAndView;

import com.moxi.model.Banner;
import com.moxi.model.Content;
import com.moxi.model.Channel;
import com.moxi.model.MXParams;
import com.moxi.service.banner.web.IWebBannerService;
import com.moxi.service.content.web.IWebContentService;
import com.moxi.util.TmFileUtil;

/**
 * 内容管理web
 * ContentController
 * 创建人:lifan
 * 时间：2017年07月17日 11:02:01
 * @version 1.0.0
 * 
 */
@Controller
@RequestMapping("/web/content")
public class WebContentController extends HttpServlet  {
	
	private static final String[] String = null;

	@Autowired
	private IWebContentService contentService;
	
	@Autowired
	private IWebBannerService bannerService;
	
	/**
	 * 列表查询
	 * 方法名: list 
	 * 创建人: lifan 
	 * 时间：2017年7月17日 上午11:03:21
	 * @param @param params
	 * @param @return
	 * @return String
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
//	@RequestMapping("/list")
//	public String list(MXParams params){
//		return "content/list";
//	}
//	
	
	/**
	 * 查询频道对应的资讯列表
	 * 方法名: clist 
	 * 创建人: lifan 
	 * 时间：2017年7月24日 上午10:20:16
	 * @param @param params
	 * @param @return
	 * @return List<Content>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@ResponseBody
	@RequestMapping("/clist")
	public List<Content> clist(MXParams params){
		List<Content> contentList = contentService.findWebContents(params);
		return contentList;
	}
	
	/**
	 * 方法名: clist 
	 * 时间：2017年7月27日 上午10:59:19
	 * @param @param params
	 * @param @return
	 * @return List<Content>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/conlist")
	public ModelAndView conlist(MXParams params){
		ModelAndView modelAndView = new ModelAndView();
		List<Content> contentList = contentService.findWebContents(params);
		if (contentList.size()>0) {
			modelAndView.addObject("conList", contentList);
		}
		modelAndView.setViewName("web/contents/template/listTemplate");
		return modelAndView;
	}
	
	/**
	 * 资讯详情-web
	 * 方法名: detail 
	 * 创建人: lifan 
	 * 时间：2017年7月24日 上午11:31:37
	 * @param @param params
	 * @param @return
	 * @return ModelAndView
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/detail/{id}")
	public ModelAndView detail(@PathVariable("id")Integer id){
		ModelAndView modelAndView = new ModelAndView();
		if (id!=null) {
			HashMap<String, Object> webContent = contentService.getWebContentsDetail(id);
			System.out.println(webContent.get("chid"));
			System.out.println(webContent.get("chid"));
			modelAndView.addObject("detailDatas",webContent);
		}
		
//		//获取foot1号的banner信息
//		MXParams params = new MXParams();
//		List<Banner> footBanners = bannerService.findWebFoot1Banners(params);
//		modelAndView.addObject("footBanners", footBanners);
//		//获取详情页右侧的第一个banner信息
//		List<Banner> detialRightBanner1 = bannerService.findWebDetialRight1(params);
//		modelAndView.addObject("detialRight1", detialRightBanner1);
//		//获取详情页右侧的第二个banner信息
//		List<Banner> detialRightBanner2 = bannerService.findWebDetialRight2(params);
//		modelAndView.addObject("detialRight2", detialRightBanner2);
//		//获取详情页左侧内容底部banner信息
//		List<Banner> detialLeftBanner = bannerService.findWebDetialLeft(params);
//		modelAndView.addObject("detialLeft", detialLeftBanner);
		
		modelAndView.setViewName("web/contents/detail");
		return modelAndView;
	}
	
	/**
	 * 异步加载文章内容
	 * 方法名: latestDetail 
	 * 创建人: lifan 
	 * 时间：2017年8月1日 上午11:17:27
	 * @param @param id
	 * @param @return
	 * @return HashMap<String,Object>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@ResponseBody
	@RequestMapping("/latestDetail/{id}")
	public HashMap<String, Object> latestDetail(@PathVariable("id")Integer id){
		HashMap<String, Object> webContent2 = contentService.getWebContentsDetail(id);
		return webContent2;
	}
	
	/**
	 * 更多资讯-web
	 * 方法名: more 
	 * 创建人: lifan 
	 * 时间：2017年7月24日 下午2:21:16
	 * @param @param id
	 * @param @return
	 * @return ModelAndView
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/more/{chid}")
	public ModelAndView more(@PathVariable("chid")Integer chid){
		ModelAndView modelAndView = new ModelAndView();
		MXParams tzParams = new MXParams();
		if(chid ==83){
			modelAndView.setViewName("web/contents/posts");
			return  modelAndView;
		
		}
		if (chid!=null) {
			tzParams.setChannelId(chid);
			tzParams.setPageSize(66);//设置list初始化为66条
			List<HashMap<String, Object>> moreList = contentService.findWebMoreList(tzParams);
			int count = contentService.count(tzParams);//拿到内容总数
			modelAndView.addObject("moreDatas",moreList);
			modelAndView.addObject("itemCount",count);//内容总数缓存起来
		}
		
//		//获取foot1号的banner信息
//		MXParams params = new MXParams();
//		List<Banner> footBanners = bannerService.findWebFoot1Banners(params);
//		modelAndView.addObject("footBanners", footBanners);
		
		modelAndView.setViewName("web/contents/list");
		return modelAndView;
	}
	
	/**
	 * list页面的分页模板
	 * 方法名: moreTemplate 
	 * 创建人: lifan 
	 * 时间：2017年8月1日 下午2:11:05
	 * @param @param tzParams
	 * @param @return
	 * @return ModelAndView
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/more/template")
	public ModelAndView moreTemplate(MXParams tzParams){
		ModelAndView modelAndView = new ModelAndView();
		List<HashMap<String, Object>> moreList = contentService.findWebMoreList(tzParams);//拿到内容
		int count = contentService.count(tzParams);//拿到内容总数
		modelAndView.setViewName("web/content/template/pageListTemplate");//跳转到模板页面
		modelAndView.addObject("datas",moreList);//内容缓存到作用于
		modelAndView.addObject("itemCount",count);//内容总数缓存起来
		return modelAndView;
	}
	
	/**
	 * 双色球开奖结果
	 * 方法名: shuangseqiuResult 
	 * 创建人: lifan 
	 * 时间：2017年7月25日 下午2:24:45
	 * @param @return
	 * @return HashMap<String,Object>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@ResponseBody
	@RequestMapping("/ssqReslt")
	public HashMap<String, Object> ssqReslt() {
		String lottoryType = "shuangseqiu";
		String shuangseqiu_url = "http://api.kaijiangtong.com/lottery/?name=ssq&format=json&uid=743362&token=70ece3eedfe88729358657bcc5048f62638f8b0e";// 1.双色球
		String content;
		try {
			content = TmFileUtil.HTTPPOST(shuangseqiu_url);
			HashMap<String, Object> map = TmFileUtil.manipulation(content,lottoryType);
			return map;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * 双色球开奖结果
	 * 方法名: shuangseqiuResult 
	 * 创建人: lifan 
	 * 时间：2017年7月25日 下午2:24:45
	 * @param @return
	 * @return HashMap<String,Object>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@ResponseBody
	@RequestMapping("/fc3dReslt")
	public HashMap<String, Object> fc3dReslt() {
		String lottoryType = "3D";
		String fc3d_url = "http://api.kaijiangtong.com/lottery/?name=sd&format=json&uid=743362&token=70ece3eedfe88729358657bcc5048f62638f8b0e";
		String content;
		try {
			content = TmFileUtil.HTTPPOST(fc3d_url);
			HashMap<String, Object> map = TmFileUtil.manipulation(content,lottoryType);
			return map;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	/**
	 * 双色球开奖结果
	 * 方法名: shuangseqiuResult 
	 * 创建人: lifan 
	 * 时间：2017年7月25日 下午2:24:45
	 * @param @return
	 * @return HashMap<String,Object>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
//	@ResponseBody
//	@RequestMapping("/fc3dsjReslt")
	public HashMap<String, Object> fc3dsjReslt() {
		String lottoryType = "3Dshiji";
		String fc3dsj_url = "http://api.kaijiangtong.com/lottery/?name=sdsjh&format=json&uid=743362&token=70ece3eedfe88729358657bcc5048f62638f8b0e";
		String content;
		try {
			content = TmFileUtil.HTTPPOST(fc3dsj_url);
			HashMap<String, Object> map = TmFileUtil.manipulation(content,lottoryType);
			return map;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	
	/**
	 * 七乐彩开奖结果
	 * 方法名: shuangseqiuResult 
	 * 创建人: lifan 
	 * 时间：2017年7月25日 下午2:24:45
	 * @param @return
	 * @return HashMap<String,Object>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@ResponseBody
	@RequestMapping("/qlcReslt")
	public HashMap<String, Object> qlcReslt() {
		String lottoryType = "qilecai";
		String qlc_url = "http://api.kaijiangtong.com/lottery/?name=qlc&format=json&uid=743362&token=70ece3eedfe88729358657bcc5048f62638f8b0e";
		String content;
		try {
			content = TmFileUtil.HTTPPOST(qlc_url);
			HashMap<String, Object> map = TmFileUtil.manipulation(content,lottoryType);
			return map;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	/**
	 * 排列三开奖结果
	 * 方法名: shuangseqiuResult 
	 * 创建人: lifan 
	 * 时间：2017年7月25日 下午2:24:45
	 * @param @return
	 * @return HashMap<String,Object>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@ResponseBody
	@RequestMapping("/pl3Reslt")
	public HashMap<String, Object> pl3Reslt() {
		String lottoryType = "pl3";
		String pl3_url = "http://api.kaijiangtong.com/lottery/?name=pls&format=json&uid=743362&token=70ece3eedfe88729358657bcc5048f62638f8b0e";
		String content;
		try {
			content = TmFileUtil.HTTPPOST(pl3_url);
			HashMap<String, Object> map = TmFileUtil.manipulation(content,lottoryType);
			return map;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	/**
	 * 排列五开奖结果
	 * 方法名: shuangseqiuResult 
	 * 创建人: lifan 
	 * 时间：2017年7月25日 下午2:24:45
	 * @param @return
	 * @return HashMap<String,Object>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@ResponseBody
	@RequestMapping("/pl5Reslt")
	public HashMap<String, Object> pl5Reslt() {
		String lottoryType = "pl5";
		String pl5_url = "http://api.kaijiangtong.com/lottery/?name=plw&format=json&uid=743362&token=70ece3eedfe88729358657bcc5048f62638f8b0e";
		String content;
		try {
			content = TmFileUtil.HTTPPOST(pl5_url);
			HashMap<String, Object> map = TmFileUtil.manipulation(content,lottoryType);
			return map;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	/**
	 * 大乐透开奖结果
	 * 方法名: shuangseqiuResult 
	 * 创建人: lifan 
	 * 时间：2017年7月25日 下午2:24:45
	 * @param @return
	 * @return HashMap<String,Object>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@ResponseBody
	@RequestMapping("/dltReslt")
	public HashMap<String, Object> dltReslt() {
		String lottoryType = "dlt";
		String dlt_url = "http://api.kaijiangtong.com/lottery/?name=dlt&format=json&uid=743362&token=70ece3eedfe88729358657bcc5048f62638f8b0e";
		String content;
		try {
			content = TmFileUtil.HTTPPOST(dlt_url);
			HashMap<String, Object> map = TmFileUtil.manipulation(content,lottoryType);
			return map;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	/**
	 * 七星彩开奖结果
	 * 方法名: shuangseqiuResult 
	 * 创建人: lifan 
	 * 时间：2017年7月25日 下午2:24:45
	 * @param @return
	 * @return HashMap<String,Object>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@ResponseBody
	@RequestMapping("/qxcReslt")
	public HashMap<String, Object> qxcReslt() {
		String lottoryType = "qxc";
		String qxc_url = "http://api.kaijiangtong.com/lottery/?name=qxc&format=json&uid=743362&token=70ece3eedfe88729358657bcc5048f62638f8b0e";
		String content;
		try {
			content = TmFileUtil.HTTPPOST(qxc_url);
			HashMap<String, Object> map = TmFileUtil.manipulation(content,lottoryType);
			return map;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@RequestMapping("/conlists/{cid}")
	public ModelAndView conlists(@PathVariable("cid") Integer cid){
		ModelAndView modelAndView = new ModelAndView();
		List<Channel> channelList = contentService.findWebContentts(cid);//首先拿到子平道，然后走页面
		HashMap<String, Object> listMap = new HashMap<String, Object>();
//		//以键值对的形式存放到map中，可通过key直接拿到所需的id
		for (int i = 0; i < channelList.size(); i++) {
			listMap.put( channelList.get(i).getDescription(), channelList.get(i).getId());
		}
		modelAndView.addObject("chanList", listMap);
		if(cid==2){
			HashMap<String, Object> map=fc3dReslt();//首先拿到那个福彩中奖的信息。
			if((String) map.get("number")!=null){
				String names=(String) map.get("number");
					String shuzu[]=names.substring( 1, names.length()-1).split(",");
					HashMap<String, Object> Maps = new HashMap<String, Object>();
					for (int i = 0; i < shuzu.length; i++) {
						Maps.put( i+"", shuzu[i]);
					}
					modelAndView.addObject("shuzu", Maps);
			}
			//然后拿到所有的子平道，都放到modelAndView中。
			modelAndView.addObject("kj", map);
			modelAndView.setViewName("web/contents/fc3d");
		}else if (cid==3){
			HashMap<String, Object> map=qxcReslt();//首先拿到那个福彩中奖的信息。
			if((String) map.get("number")!=null){
				String names=(String) map.get("number");
					String shuzu[]=names.substring( 1, names.length()-1).split(",");
					HashMap<String, Object> Maps = new HashMap<String, Object>();
					for (int i = 0; i < shuzu.length; i++) {
						Maps.put( i+"", shuzu[i]);
					}
					modelAndView.addObject("shuzu", Maps);
			}
			//然后拿到所有的子平道，都放到modelAndView中。
			modelAndView.addObject("kj", map);
			modelAndView.setViewName("web/contents/qxc");
		}else if (cid==4){
			HashMap<String, Object> map=pl3Reslt();
			if((String) map.get("number")!=null){
				String names=(String) map.get("number");
					String shuzu[]=names.substring( 1, names.length()-1).split(",");
					HashMap<String, Object> Maps = new HashMap<String, Object>();
					for (int i = 0; i < shuzu.length; i++) {
						Maps.put( i+"", shuzu[i]);
					}
					modelAndView.addObject("shuzu", Maps);
			}
			//然后拿到所有的子平道，都放到modelAndView中。
			modelAndView.addObject("kj", map);
			modelAndView.setViewName("web/contents/pl3");
		}else if (cid==5){
			HashMap<String, Object> map=qlcReslt();
			if((String) map.get("number")!=null){
				String names=(String) map.get("number");
					String shuzu[]=names.substring( 1, names.length()-1).split(",");
					HashMap<String, Object> Maps = new HashMap<String, Object>();
					for (int i = 0; i < shuzu.length; i++) {
						Maps.put( i+"", shuzu[i]);
					}
					modelAndView.addObject("shuzu", Maps);
			}
			//然后拿到所有的子平道，都放到modelAndView中。
			modelAndView.addObject("kj", map);
			modelAndView.setViewName("web/contents/qlc");
		}else if (cid==6){
			HashMap<String, Object> map=ssqReslt();
			if((String) map.get("number")!=null){
				String names=(String) map.get("number");
					String shuzu[]=names.substring( 1, names.length()-1).split(",");
					HashMap<String, Object> Maps = new HashMap<String, Object>();
					for (int i = 0; i < shuzu.length; i++) {
						Maps.put( i+"", shuzu[i]);
					}
					modelAndView.addObject("shuzu", Maps);
			}
			//然后拿到所有的子平道，都放到modelAndView中。
			modelAndView.addObject("kj", map);
			modelAndView.setViewName("web/contents/ssq");
		}else if (cid==7){
			HashMap<String, Object> map=dltReslt();
			if((String) map.get("number")!=null){
				String names=(String) map.get("number");
					String shuzu[]=names.substring( 1, names.length()-1).split(",");
					HashMap<String, Object> Maps = new HashMap<String, Object>();
					for (int i = 0; i < shuzu.length; i++) {
						Maps.put( i+"", shuzu[i]);
					}
					modelAndView.addObject("shuzu", Maps);
			}
			//然后拿到所有的子平道，都放到modelAndView中。
			modelAndView.addObject("kj", map);
			modelAndView.setViewName("web/contents/dlt");
		}else if (cid==8){
			HashMap<String, Object> map=pl5Reslt();
			if((String) map.get("number")!=null){
				String names=(String) map.get("number");
					String shuzu[]=names.substring( 1, names.length()-1).split(",");
					HashMap<String, Object> Maps = new HashMap<String, Object>();
					for (int i = 0; i < shuzu.length; i++) {
						Maps.put( i+"", shuzu[i]);
					}
					modelAndView.addObject("shuzu", Maps);
			}
			//然后拿到所有的子平道，都放到modelAndView中。
			modelAndView.addObject("kj", map);
			modelAndView.setViewName("web/contents/pl5");
		}else if (cid==9){
			
			modelAndView.setViewName("web/contents/6c");
		}
		
		return modelAndView;
	}
	
	/**
	 * 
	 * 福彩的top
	 * @param chid
	 * @return
	 */
	@RequestMapping("/moreofTop/{chid}")
	public ModelAndView moreofTop(@PathVariable("chid")Integer chid){
		ModelAndView modelAndView = new ModelAndView();
		if(chid == 78){
			HashMap<String, Object> map=fc3dReslt();//首先拿到那个福彩中奖的信息。
			if((String) map.get("number")!=null){
				String names=(String) map.get("number");
					String shuzu[]=names.substring( 1, names.length()-1).split(",");
					HashMap<String, Object> Maps = new HashMap<String, Object>();
					for (int i = 0; i < shuzu.length; i++) {
						Maps.put( i+"", shuzu[i]);
					}
					modelAndView.addObject("shuzu", Maps);
			}
			//然后拿到所有的子平道，都放到modelAndView中。
			modelAndView.addObject("kj", map);
			
			//还要请求一下3d的试机号
			HashMap<String, Object> maps=fc3dsjReslt();//首先拿到那个福彩中奖的信息。
			if((String) maps.get("number")!=null){
				String namess=(String) maps.get("number");
					String shuzusj[]=namess.substring( 1, namess.length()-1).split(",");
					HashMap<String, Object> Mapss = new HashMap<String, Object>();
					for (int i = 0; i < shuzusj.length; i++) {
						Mapss.put( i+"", shuzusj[i]);
					}
					modelAndView.addObject("shuzusj", Mapss);
			}
			//然后拿到所有的子平道，都放到modelAndView中。
			modelAndView.addObject("kj", map);
			
			modelAndView.setViewName("web/contents/fucai3dkaijiang");
			return  modelAndView;
		}else if(chid == 79){
			modelAndView.setViewName("web/contents/login");
			return  modelAndView;
		}else if(chid ==83){
			modelAndView.setViewName("web/contents/posts");
			return  modelAndView;
		}	
			return  modelAndView;
	}
	
	
}
