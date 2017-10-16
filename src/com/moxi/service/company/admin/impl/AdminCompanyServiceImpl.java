package com.moxi.service.company.admin.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moxi.core.ServiceResult;
import com.moxi.core.StateCodeConstant;
import com.moxi.dao.company.admin.IAdminCompanyMapper;
import com.moxi.model.Company;
import com.moxi.model.MXParams;
import com.moxi.service.company.admin.IAdminCompanyService;
import com.moxi.util.TmStringUtils;

/**
 * 公司管理
 * 类名: AdminCompanyServiceImpl
 * 创建人:lifan 
 * 时间：2017年8月23日 下午2:17:49 
 * @version 1.0.0
 *
 */
@Service
public class AdminCompanyServiceImpl implements IAdminCompanyService{

	
	@Autowired
	private IAdminCompanyMapper companyMapper;
	
	@Override
	public List<HashMap<String, Object>> findCompanys(MXParams params){
		if(TmStringUtils.isEmpty(params.getOrder()))params.setOrder("a.id asc");
		return companyMapper.findCompanys(params);
	}
	
	@Override
	public int count(MXParams params){
		return companyMapper.count(params);
	}

	@Override
	public int save(Company company) {
		return companyMapper.save(company);
	}

	@Override
	public int update(Company company) {
		return companyMapper.update(company);
	}

	@Override
	public int delete(MXParams params) {
		return companyMapper.delete(params);
	}

	@Override
	public int deleteSelected(String[] id) {
		return companyMapper.deleteSelected(id);
	}
	
	@Override
	public Company getCompany(Integer id) {
		return companyMapper.getCompany(id);
	}

	@Override
	public ServiceResult<Object> updateDetails(Company company) {
		ServiceResult<Object> result = new ServiceResult<Object>();
		int i = companyMapper.update(company);
		System.out.println(i);
		if (i == 1) {
			result.setStateCode(StateCodeConstant.SUCCESS_CODE);
			result.setMessage("新增成功");
		} else {
			result.setStateCode(StateCodeConstant.ERROR_CODE);
			result.setMessage("新增失败");
		}
		return result;
	
	}

	@Override
	public ServiceResult<Object> addDetails(Company company) {
		ServiceResult<Object> result = new ServiceResult<Object>();
		int i = companyMapper.save(company);
		System.out.println(i);
		if (i == 1) {
			result.setStateCode(StateCodeConstant.SUCCESS_CODE);
			result.setMessage("新增成功");
		} else {
			result.setStateCode(StateCodeConstant.ERROR_CODE);
			result.setMessage("新增失败");
		}
		return result;
	}
	
	@Override
	public List<Company> findAllCompanys() {
		List<Company> allCompanyList  = new ArrayList<Company>();
		allCompanyList=companyMapper.findAllCompanys();
		return allCompanyList;
	}
}
