
package com.moxi.service.user.impl;


import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moxi.model.MXParams;
import com.moxi.model.AdminUser;
import com.moxi.model.Role;
import com.moxi.core.ServiceResult;
import com.moxi.core.StateCodeConstant;
import com.moxi.dao.user.admin.IAdminUserMapper;
import com.moxi.service.user.IUserService;
import com.moxi.util.TmStringUtils;

/**
 * 
 * 类名: UserServiceImpl
 * 创建人:lifan 
 * 时间：2017年7月17日 下午1:28:39 
 * @version 1.0.0
 *
 */
@Service
public class UserServiceImpl  implements IUserService{


	@Autowired
	private IAdminUserMapper userMapper;
	
	@Override
	public AdminUser getLogin(MXParams params) {
		return userMapper.getLogin(params);	
	}

	@Override
	public List<HashMap<String, Object>> findUsers(MXParams params) {
		if(TmStringUtils.isEmpty(params.getOrder()))params.setOrder("a.id asc");
		return userMapper.findUsers(params);
	}

	@Override
	public int count(MXParams params) {
		return userMapper.count(params);
	}

	@Override
	public AdminUser getAdminUser(Integer id) {
		return userMapper.getAdminUser(id);
	}

	@Override
	public ServiceResult<Object> updateDetails(AdminUser adminUser) {
		ServiceResult<Object> result = new ServiceResult<Object>();
		int i = userMapper.update(adminUser);
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
	public ServiceResult<Object> addDetails(AdminUser adminUser) {
		ServiceResult<Object> result = new ServiceResult<Object>();
		int i = userMapper.save(adminUser);
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
	public int update(AdminUser adminUser) {
		return userMapper.update(adminUser);
	}

	@Override
	public int delete(MXParams params) {
		return userMapper.delete(params);
	}
	
	@Override
	public int deleteSelected(String[] id) {
		return userMapper.deleteSelected(id);
	}

	@Override
	public HashMap<String, Object> getUserRole(Integer userId) {
		return userMapper.getUserRole(userId);
	}

	@Override
	public List<Role> findRoles() {
		return userMapper.findRoles();
	}
}
