package com.moxi.web.web.news;

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
import com.moxi.model.News;
import com.moxi.service.banner.web.IWebBannerService;
import com.moxi.service.content.web.IWebContentService;
import com.moxi.service.news.web.IWebNewsService;
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
@RequestMapping("/web/news")
public class WebNewsController extends HttpServlet  {
	
	@Autowired
	private IWebNewsService newsService;
	
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
	
//	/**
//	 * 查询频道对应的资讯列表
//	 * 方法名: clist 
//	 * 创建人: lifan 
//	 * 时间：2017年7月24日 上午10:20:16
//	 * @param @param params
//	 * @param @return
//	 * @return List<Content>
//	 * @exception
//	 * @since 1.0.0
//	 * @throws
//	 */
//	@ResponseBody
//	@RequestMapping("/clist")
//	public List<News> clist(MXParams params){
//		List<Content> contentList = newsService.findWebContents(params);
//		return contentList;
//	}
//	
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
		List<News> newsList = newsService.getWebNewsList(params);
		if (newsList.size()>0) {
			modelAndView.addObject("conList", newsList);
		}
		modelAndView.setViewName("web/contents/template/listNews");
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
			HashMap<String, Object> webNew = newsService.getWebNewsDetail(id);
		//	modelAndView.addObject("detailDatas",webContent);
			modelAndView.addObject("detailDatas",webNew);
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
		
		modelAndView.setViewName("web/contents/newsDetail");
		return modelAndView;
	}
	
//	/**
//	 * 异步加载文章内容
//	 * 方法名: latestDetail 
//	 * 创建人: lifan 
//	 * 时间：2017年8月1日 上午11:17:27
//	 * @param @param id
//	 * @param @return
//	 * @return HashMap<String,Object>
//	 * @exception
//	 * @since 1.0.0
//	 * @throws
//	 */
//	@ResponseBody
//	@RequestMapping("/latestDetail/{id}")
//	public HashMap<String, Object> latestDetail(@PathVariable("id")Integer id){
//		HashMap<String, Object> webContent2 = contentService.getWebContentsDetail(id);
//		return webContent2;
//	}
	
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
	@RequestMapping("/more")
	public ModelAndView more(){
		ModelAndView modelAndView = new ModelAndView();
		MXParams tzParams = new MXParams();
		//	tzParams.setChannelId(chid);
			tzParams.setPageSize(66);//设置list初始化为66条
			List<HashMap<String, Object>> moreList = newsService.findWebNewsMoreList(tzParams);
			int count = newsService.count(tzParams);//拿到内容总数
			modelAndView.addObject("moreDatas",moreList);
			modelAndView.addObject("itemCount",count);//内容总数缓存起来
		
// 		//获取foot1号的banner信息
//		MXParams params = new MXParams();
//		List<Banner> footBanners = bannerService.findWebFoot1Banners(params);
//		modelAndView.addObject("footBanners", footBanners);
		
		modelAndView.setViewName("web/contents/newsList");
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
		List<HashMap<String, Object>> moreList = newsService.findWebNewsMoreList(tzParams);//拿到内容
		int count = newsService.count(tzParams);//拿到内容总数
		modelAndView.setViewName("web/contents/template/pageListTemplate");//跳转到模板页面
		modelAndView.addObject("datas",moreList);//内容缓存到作用于
		modelAndView.addObject("itemCount",count);//内容总数缓存起来
		return modelAndView;
	}
	
//	/**
//	 * 双色球开奖结果
//	 * 方法名: shuangseqiuResult 
//	 * 创建人: lifan 
//	 * 时间：2017年7月25日 下午2:24:45
//	 * @param @return
//	 * @return HashMap<String,Object>
//	 * @exception
//	 * @since 1.0.0
//	 * @throws
//	 */
//	@ResponseBody
//	@RequestMapping("/ssqReslt")
//	public HashMap<String, Object> ssqReslt() {
//		String lottoryType = "shuangseqiu";
//		String shuangseqiu_url = "http://api.kaijiangtong.com/lottery/?name=ssq&format=json&uid=743362&token=70ece3eedfe88729358657bcc5048f62638f8b0e";// 1.双色球
//		String content;
//		try {
//			content = TmFileUtil.HTTPPOST(shuangseqiu_url);
//			HashMap<String, Object> map = TmFileUtil.manipulation(content,lottoryType);
//			return map;
//		} catch (Exception e) {
//			e.printStackTrace();
//			return null;
//		}
//	}
//	
	
	
	
//	@RequestMapping("/conlists/{cid}")
//	public ModelAndView conlists(@PathVariable("cid") Integer cid){
//		ModelAndView modelAndView = new ModelAndView();
//		modelAndView.setViewName("web/contents/fc3d");
//		return modelAndView;
//	}
}
