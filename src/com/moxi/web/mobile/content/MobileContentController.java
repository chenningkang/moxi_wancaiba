package com.moxi.web.mobile.content;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.moxi.model.Content;
import com.moxi.model.MXParams;
import com.moxi.service.content.web.IWebContentService;
import com.moxi.util.TmFileUtil;

/**
 * 移动端内容管理
 * 类名: MobileContentController
 * 创建人:lifan 
 * 时间：2017年8月23日 下午2:32:17 
 * @version 1.0.0
 *
 */
@Controller
@RequestMapping("/mobile/content")
public class MobileContentController {
	
	@Autowired
	private IWebContentService contentService;
	
	
	/**
	 * 查询内容列表
	 * 方法名: clist 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:32:38
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
	 * 创建人: lifan 
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
		modelAndView.setViewName("mobile/template/listTemplate");
		return modelAndView;
	}
	
	
	/**
	 * 内容详情
	 * 方法名: detail 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:33:03
	 * @param @param id
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
			modelAndView.addObject("detailDatas",webContent);
		}
		modelAndView.setViewName("mobile/detail");
		return modelAndView;
	}
	
	/**
	 * 更多内容
	 * 方法名: more 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:33:09
	 * @param @param chid
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
		if (chid!=null) {
			tzParams.setChannelId(chid);
			tzParams.setPageSize(50);//设置list初始化为50条
			List<HashMap<String, Object>> moreList = contentService.findWebMoreList(tzParams);
			int count = contentService.count(tzParams);//拿到内容总数
			modelAndView.addObject("moreDatas",moreList);
			modelAndView.addObject("itemCount",count);//内容总数缓存起来
		}
		modelAndView.setViewName("mobile/list");
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
	public ModelAndView moreTemplate(MXParams mxParams){
		ModelAndView modelAndView = new ModelAndView();
		List<HashMap<String, Object>> moreList = contentService.findWebMoreList(mxParams);//拿到内容
		int count = contentService.count(mxParams);//拿到内容总数
		modelAndView.setViewName("mobile/template/pageListTemplate");//跳转到模板页面
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
	 * 福彩3D开奖结果
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
	 * 3d试机号开奖结果
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
	@RequestMapping("/fc3dsjReslt")
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
}
