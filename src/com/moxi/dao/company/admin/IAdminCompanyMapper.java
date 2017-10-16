package com.moxi.dao.company.admin;

import java.util.HashMap;
import java.util.List;

import com.moxi.model.Banner;
import com.moxi.model.Company;
import com.moxi.model.Content;
import com.moxi.model.MXParams;

/**
 * 公司管理Mapper
 * 类名: IAdminCompanyMapper
 * 创建人:lifan 
 * 时间：2017年8月23日 下午2:05:03 
 * @version 1.0.0
 *
 */
public interface IAdminCompanyMapper {

	/**
	 * 查询公司管理列表
	 * com.moxi.dao.content 
	 * 方法名：findContents
	 * 创建人：lifan 
	 * 手机号码:15021297671
	 * 时间：2017年07月17日 11:00:33
	 * @param params
	 * @return 
	 * 返回类型：List<Content>
	 * @exception 
	 * @since  1.0.0
	 */
	public List<HashMap<String, Object>> findCompanys(MXParams params);
	
	/**
	 * 根据id查询公司
	 * 方法名: getContent 
	 * 创建人: lifan 
	 * 时间：2017年7月21日 下午4:44:18
	 * @param @param params
	 * @param @return
	 * @return Content
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public Company getCompany(Integer id);
	
	
	/**
	 * 求总数
	 * com.moxi.dao.content 
	 * 方法名：count
	 * 创建人：lifan 
	 * 手机号码:15021297671
	 * 时间：2017年07月17日 11:00:33
	 * @param id
	 * @return 
	 * 返回类型：List<Content>
	 * @exception 
	 * @since  1.0.0
	 */
	public int count(MXParams params);
	
	/**
	 * 获取公司管理单条数据
	 * com.moxi.dao.content 
	 * 方法名：getContent
	 * 创建人：lifan 
	 * 手机号码:15021297671
	 * 时间：2017年07月17日 11:00:33
	 * @param id
	 * @return 
	 * 返回类型：List<Content>
	 * @exception 
	 * @since  1.0.0
	 */
	public Company get(Integer id);
	
	/**
	 * 保存公司信息
	 * com.moxi.dao.content 
	 * 方法名：save
	 * 创建人：lifan 
	 * 手机号码:15021297671
	 * 时间：2017年07月17日 11:00:33
	 * @param content
	 * @return 
	 * 返回类型：Content
	 * @exception 
	 * @since  1.0.0
	 */
	public int save(Company company);
	
	/**
	 * 更新公司信息
	 * com.moxi.dao.content 
	 * 方法名：update
	 * 创建人：lifan 
	 * 手机号码:15021297671
	 * 时间：2017年07月17日 11:00:33
	 * @param content
	 * @return 
	 * 返回类型：int
	 * @exception 
	 * @since  1.0.0
	 */
	public int update(Company company);
	
	/**
	 * 删除公司信息
	 * com.moxi.dao.content 
	 * 方法名：delete
	 * 创建人：lifan 
	 * 手机号码:15021297671
	 * 时间：2017年07月17日 11:00:33 
	 * @param params
	 * @return 
	 * 返回类型：int
	 * @exception 
	 * @since  1.0.0
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

	int updateByKey(Company company);
	
	/**
	 * 查询出所有的公司名称
	 * 方法名: findAllCompanys 
	 * 创建人: lifan 
	 * 时间：2017年8月21日 上午11:03:58
	 * @param @return
	 * @return List<Company>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public List<Company> findAllCompanys();
	
}
