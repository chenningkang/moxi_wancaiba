package com.moxi.web.admin.company;

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
import com.moxi.model.Company;
import com.moxi.model.MXParams;
import com.moxi.service.company.admin.IAdminCompanyService;

/**
 * 公司管理
 * 类名: AdminCompanyController
 * 创建人:lifan 
 * 时间：2017年8月23日 下午2:27:42 
 * @version 1.0.0
 *
 */
@Controller
@RequestMapping("/admin/company")
public class AdminCompanyController {
	
	
	@Autowired
	private IAdminCompanyService companyService;
	
	/**
	 * 列表查询
	 * 方法名: list 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:27:54
	 * @param @param params
	 * @param @return
	 * @return String
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/list")
	public String list(MXParams params){
		return "admin/company/list";
	}
	
	/**
	 * 模板页面
	 * 方法名: template 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:28:01
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
		List<HashMap<String, Object>> companys = companyService.findCompanys(params);
		int count = companyService.count(params);
		modelAndView.setViewName("admin/company/template");
		modelAndView.addObject("datas",companys);
		modelAndView.addObject("itemCount",count);
		return modelAndView;
	}
	
	/**
	 * 查询出公司信息
	 * 方法名: findCompanys 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:28:08
	 * @param @param params
	 * @param @return
	 * @return List<HashMap<String,Object>>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@ResponseBody
	@RequestMapping("/findCompanys")
	public List<HashMap<String, Object>> findCompanys(MXParams params){
		List<HashMap<String, Object>> companys = companyService.findCompanys(params);
		return companys;
	}
	
	/**
	 * 更新
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
	public String update(Company  company){
		companyService.update(company);
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
		companyService.delete(params);
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
		companyService.deleteSelected(id);
		return "success";
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
			Company company = companyService.getCompany(id);
			modelAndView.addObject("editCompany", company);
		}
		modelAndView.setViewName("admin/company/add");
		return modelAndView;
	}
	
	
	/**
	 * 保存数据
	 * 方法名: save 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:28:25
	 * @param @param company
	 * @param @param request
	 * @param @return
	 * @return JsonResult
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@ResponseBody
	@RequestMapping("/save")
	public JsonResult save(Company  company, HttpServletRequest  request ){
		JsonResult jsonResult = new JsonResult();
		Company company1  = new Company();
		company1.setId(company.getId());
		company1.setCname(company.getCname());
		company1.setAddress(company.getAddress());
		company1.setPhone(company.getPhone());
		company1.setIntroduce(company.getIntroduce());
		company1.setNature(company.getNature());
		if(company1.getId()==null){
			//表示新增
			ServiceResult<Object> result =companyService.addDetails(company1);
			jsonResult.setStateCode(result.getStateCode());
			jsonResult.setMessage(result.getMessage());
			return jsonResult;
		}else{
			//表示修改
			ServiceResult<Object> result =companyService.updateDetails(company1);
			jsonResult.setStateCode(result.getStateCode());
			jsonResult.setMessage(result.getMessage());
			return jsonResult;
			
		}
	}
	
	/**
	 * 添加内容
	 * 方法名: add 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:28:31
	 * @param @return
	 * @return ModelAndView
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@RequestMapping("/add")
	public ModelAndView add(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/company/add");
		return modelAndView;
	}
}
