package com.moxi.service.user;

import java.util.HashMap;
import java.util.List;

import com.moxi.core.ServiceResult;
import com.moxi.model.AdminUser;
import com.moxi.model.Channel;
import com.moxi.model.MXParams;
import com.moxi.model.Role;

/**
 * 
 * 类名: IUserService
 * 创建人:lifan 
 * 时间：2017年7月17日 下午1:28:16 
 * @version 1.0.0
 *
 */
public interface IUserService {

	/**
	 * 根据账号和密码实现登陆
	 * 方法名: getLogin 
	 * 创建人: lifan 
	 * 时间：2017年7月17日 下午1:28:25
	 * @param @param params
	 * @param @return
	 * @return AdminUser
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public AdminUser getLogin(MXParams params);
	
	
	/**
	 * 查询channel管理列表
	 * com.moxi.service.channel 
	 * 方法名：findChannels
	 * 创建人：lifan 
	 * 手机号码:15021297671
	 * 时间：2017年07月21日 10:08:22
	 * @param params
	 * @return 
	 * 返回类型：List<Channel>
	 * @exception 
	 * @since  1.0.0
	 */
	public List<HashMap<String, Object>> findUsers(MXParams params);
	
	/**
	 * 求总数
	 * com.moxi.dao.channel 
	 * 方法名：count
	 * 创建人：lifan 
	 * 手机号码:15021297671
	 * 时间：2017年07月21日 10:08:22
	 * @param id
	 * @return 
	 * 返回类型：List<Channel>
	 * @exception 
	 * @since  1.0.0
	 */
	public int count(MXParams params);
	
	/**
	 * 根据id查询用户信息
	 * 方法名: getChannel 
	 * 创建人: lifan 
	 * 时间：2017年7月21日 下午4:45:02
	 * @param @param params
	 * @param @return
	 * @return Content
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public AdminUser getAdminUser(Integer id);
	
	/**
	 * @Description: (修改内容信息)
	 * @return
	 * @author cnk
	 */
	ServiceResult<Object> updateDetails(AdminUser  adminUser);
	
	
	/**
	 * @Description: (新增内容信息)
	 * @return
	 * @author cnk
	 */
	ServiceResult<Object> addDetails(AdminUser  adminUser);
	
	/**
	 * 更新channel管理
	 * com.moxi.service.channel 
	 * 方法名：update
	 * @exception 
	 * @since  1.0.0
	 */
	public int update(AdminUser  adminUser);
	
	/**
	 * 删除channel管理
	 * com.moxi.service.channel 
	 * 返回类型：int
	 * @exception 
	 * @since  1.0.0
	 */
	public int delete(MXParams params);
	
	/**
	 * 批量删除
	 * 方法名: deleteSelected 
	 * 创建人: lifan 
	 * 时间：2017年8月24日 下午5:29:00
	 * @param @param id
	 * @param @return
	 * @return int
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public int deleteSelected(String[] id);
	
	/**
	 * 查询用户的角色名称
	 * 方法名: getUserRole 
	 * 创建人: lifan 
	 * 时间：2017年8月24日 下午2:53:05
	 * @param @param userId
	 * @param @return
	 * @return HashMap<String,Object>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public HashMap<String, Object> getUserRole(Integer userId);
	
	/**
	 * 查找出所有的权限
	 * 方法名: findRoles 
	 * 创建人: lifan 
	 * 时间：2017年8月28日 下午2:23:41
	 * @param @return
	 * @return List<Role>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public List<Role> findRoles();
}
