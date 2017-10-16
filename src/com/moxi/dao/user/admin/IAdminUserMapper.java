package com.moxi.dao.user.admin;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.moxi.model.AdminUser;
import com.moxi.model.Channel;
import com.moxi.model.MXParams;
import com.moxi.model.Role;

/**
 * 
 * 类名: IAdminUserMapper
 * 创建人:lifan 
 * 时间：2017年7月17日 下午1:29:40 
 * @version 1.0.0
 *
 */
public interface IAdminUserMapper {

	/**
	 * 根据账号和密码实现登陆
	 * 方法名: getLogin 
	 * 创建人: lifan 
	 * 时间：2017年7月17日 下午1:29:47
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
	 * com.moxi.dao.channel 
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
	 * 根据id查询内容
	 * 方法名: getChannel 
	 * 创建人: lifan 
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public AdminUser getAdminUser(Integer id);
	
	/**
	 * 保存用户信息
	 * 方法名: save 
	 * 创建人: lifan 
	 * 时间：2017年8月25日 上午9:20:22
	 * @param @param adminUser
	 * @param @return
	 * @return int
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public int save(AdminUser adminUser);
	
	/**
	 * 更新用户信息
	 * 方法名: update 
	 * 创建人: lifan 
	 * 时间：2017年8月25日 上午9:20:12
	 * @param @param adminUser
	 * @param @return
	 * @return int
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public int update(AdminUser adminUser);
	
	/**
	 * 删除用户信息
	 * 方法名: delete 
	 * 创建人: lifan 
	 * 时间：2017年8月25日 上午9:20:00
	 * @param @param params
	 * @param @return
	 * @return int
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public int delete(MXParams params);
	
	/**
	 * 批量删除
	 * 方法名: deleteSelected 
	 * 创建人: lifan 
	 * 时间：2017年8月24日 下午5:27:29
	 * @param @param id
	 * @param @return
	 * @return int
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public int deleteSelected(String[] id);
	
	
	/**
	 * 查询出用户的角色名称
	 * 方法名: getUserRole 
	 * 创建人: lifan 
	 * 时间：2017年8月24日 下午2:52:10
	 * @param @param userId
	 * @param @return
	 * @return HashMap<String,Object>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public HashMap<String, Object> getUserRole(@Param("userId")Integer userId);
	
	/**
	 * 查找出所有的权限
	 * 方法名: findRoles 
	 * 创建人: lifan 
	 * 时间：2017年8月28日 下午2:22:40
	 * @param @return
	 * @return List<Role>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public List<Role> findRoles();
}
