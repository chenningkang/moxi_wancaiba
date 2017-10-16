package com.moxi.web.admin.banner;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.moxi.core.JsonResult;
import com.moxi.core.ServiceResult;
import com.moxi.model.Banner;
import com.moxi.model.BannerLocation;
import com.moxi.model.Company;
import com.moxi.model.MXParams;
import com.moxi.service.banner.admin.IAdminBannerService;
import com.moxi.service.company.admin.IAdminCompanyService;

/**
 * banner管理
 * ContentController
 * 创建人:lifan
 * 时间：2017年07月17日 11:02:01
 * @version 1.0.0
 * 
 */
@Controller
@RequestMapping("/admin/banner")
public class AdminBannerController {
	
	@Autowired
	private IAdminBannerService bannerService;
	@Autowired
	private IAdminCompanyService companyService;
	
	/**
	 * 跳转到列表页面
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
	@RequestMapping("/list")
	public String list(MXParams params){
		return "admin/banner/list";
	}
	
	/**
	 * 模板页面
	 * 方法名: template 
	 * 创建人: lifan 
	 * 时间：2017年7月17日 上午11:03:35
	 * @param @param params
	 * @param @return
	 * @return ModelAndView
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/template")
	public ModelAndView template(MXParams params){
		ModelAndView modelAndView = new ModelAndView();
		List<HashMap<String, Object>> banners = bannerService.findBanners(params);//拿到内容
		for (int i = 0; i < banners.size(); i++) {
			String widthHigh=banners.get(i).get("width")+""+"*"+banners.get(i).get("height")+"";
			banners.get(i).put("widthHigh",widthHigh);
		}
		int count = bannerService.count(params);//拿到内容总数
		modelAndView.setViewName("admin/banner/template");//跳转到模板页面
		modelAndView.addObject("datas",banners);//内容缓存到作用于
		modelAndView.addObject("itemCount",count);//内容总数缓存起来
		return modelAndView;
	}
	
	/**
	 * 更新banner信息
	 * 方法名: update 
	 * 创建人: lifan 
	 * 时间：2017年7月20日 下午2:52:23
	 * @param @param content
	 * @param @return
	 * @return String
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@ResponseBody
	@RequestMapping(value="/update",method=RequestMethod.POST)
	public String update(Banner banner){
		bannerService.update(banner);
		return "success";
	}
	
	/**
	 * 删除
	 * 方法名: delete 
	 * 创建人: lifan 
	 * 时间：2017年7月20日 下午2:52:32
	 * @param @param params
	 * @param @return
	 * @return String
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@ResponseBody
	@RequestMapping(value="/delete",method=RequestMethod.POST)
	public String delete(MXParams params){
		bannerService.delete(params);
		return "success";
	}
	
	/**
	 * 批量删除
	 * 方法名: deleteSelected 
	 * 创建人: lifan 
	 * 时间：2017年8月24日 下午5:31:15
	 * @param @param id
	 * @param @return
	 * @return String
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@ResponseBody
	@RequestMapping(value="/deleteSelected",method=RequestMethod.POST)
	public String deleteSelected(String[] id){
		bannerService.deleteSelected(id);
		return "success";
	}
	
	/**
	 * 添加
	 * 方法名: save 
	 * 创建人: lifan 
	 * 时间：2017年7月21日 上午11:58:19
	 * @param @param params
	 * @param @return
	 * @return String
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/add")
	public ModelAndView add(MXParams params){
		ModelAndView modelAndView = new ModelAndView();
		List<Company> companies = companyService.findAllCompanys();
		List<BannerLocation> bLocations = bannerService.findLocations();
		modelAndView.addObject("companies", companies);
		modelAndView.addObject("bLocations", bLocations);
		modelAndView.setViewName("admin/banner/add");
		return modelAndView;
	}
	
	
	/**
	 * 编辑
	 * 方法名: edit 
	 * 创建人: lifan 
	 * 时间：2017年7月21日 下午4:37:51
	 * @param @param params
	 * @param @return
	 * @return String
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/edit/{id}")
	public ModelAndView edit(@PathVariable("id")Integer id){
		ModelAndView modelAndView = new ModelAndView();
		if (id!=null) {
			Banner banner = bannerService.getBanner(id);
			List<Company> companies = companyService.findAllCompanys();
			List<BannerLocation> bLocations = bannerService.findLocations();
			modelAndView.addObject("bLocations", bLocations);
			modelAndView.addObject("companies", companies);
			modelAndView.addObject("editBanner", banner);
		}
		modelAndView.setViewName("admin/banner/add");
		return modelAndView;
	}
	
	/**
	 * 保存
	 * 方法名: save 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:26:26
	 * @param @param banner
	 * @param @param request
	 * @param @return
	 * @return JsonResult
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@ResponseBody
	@RequestMapping("/save")
	public JsonResult save(Banner  banner, HttpServletRequest  request ){
		JsonResult jsonResult = new JsonResult();
		Banner   banner1  = new Banner();
		banner1.setId(banner.getId());
		banner1.setName(banner.getName());
		banner1.setDescription(banner.getDescription());
		banner1.setPath(banner.getPath());
		banner1.setWidth(banner.getWidth());
		banner1.setHeight(banner.getHeight());
		banner1.setUrlLink(banner.getUrlLink());
		banner1.setUserId(banner.getUserId());
		banner1.setComId(banner.getComId());
		banner1.setLocationId(banner.getLocationId());
		if(banner1.getId()==null){
			//表示新增
			banner1.setUpdateTime(new Date());
			ServiceResult<Object> result =bannerService.addDetails(banner1);
			jsonResult.setStateCode(result.getStateCode());
			jsonResult.setMessage(result.getMessage());
			return jsonResult;
		}else{
			//表示修改
			banner1.setUpdateTime(new Date());
			//表示不需要添加了
			ServiceResult<Object> result =bannerService.updateDetails(banner1);
			jsonResult.setStateCode(result.getStateCode());
			jsonResult.setMessage(result.getMessage());
			return jsonResult;
		}
	}
}
