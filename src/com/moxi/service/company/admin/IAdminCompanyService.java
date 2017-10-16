package com.moxi.service.company.admin;

import java.util.HashMap;
import java.util.List;

import com.moxi.core.ServiceResult;
import com.moxi.model.Channel;
import com.moxi.model.Company;
import com.moxi.model.MXParams;

/**
 * 公司管理实现类
 */
public interface IAdminCompanyService {


	/**
	 * 查询公司列表
	 * 方法名: findCompanys 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:18:23
	 * @param @param params
	 * @param @return
	 * @return List<HashMap<String,Object>>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public List<HashMap<String, Object>> findCompanys(MXParams params);
	
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
	 * 保存公司信息
	 * 方法名: save 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:20:27
	 * @param @param company
	 * @param @return
	 * @return int
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public int save(Company company);
	
	/**
	 * 更新公司信息
	 * 方法名: update 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:20:37
	 * @param @param company
	 * @param @return
	 * @return int
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public int update(Company company);
	
	/**
	 * 删除公司信息
	 * 方法名: delete 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:20:42
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
	 * 根据id查询公司信息
	 * 方法名: getCompany 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:20:59
	 * @param @param id
	 * @param @return
	 * @return Company
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public Company getCompany(Integer id);
	
	
	/**
	 * @Description: (修改内容信息)
	 * @return
	 * @author cnk
	 */
	ServiceResult<Object> updateDetails(Company company);
	
	
	/**
	 * @Description: (新增内容信息)
	 * @return
	 * @author cnk
	 */
	ServiceResult<Object> addDetails(Company company);
	
	/**
	 * 查询出所有的公司
	 * 方法名: findAllCompanys 
	 * 创建人: lifan 
	 * 时间：2017年8月21日 上午11:04:43
	 * @param @return
	 * @return List<Company>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	 public List<Company> findAllCompanys();
}
