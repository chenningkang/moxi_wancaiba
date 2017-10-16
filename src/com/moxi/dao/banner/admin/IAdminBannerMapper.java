package com.moxi.dao.banner.admin;

import java.util.HashMap;
import java.util.List;

import com.moxi.model.Banner;
import com.moxi.model.BannerLocation;
import com.moxi.model.MXParams;

/**
 * banner管理Mapper
 * IContentMapper
 * 创建人:lifan 
 * 时间：2017年07月17日 11:00:33
 * @version 1.0.0
 * 
 */
public interface IAdminBannerMapper {

	/**
	 * 查询banner列表
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
	public List<HashMap<String, Object>> findBanners(MXParams params);
	
	/**
	 * 根据id查询banner信息
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
	public Banner getBanner(Integer id);
	
	
	/**
	 * 求总数
	 * 方法名: count 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午1:55:11
	 * @param @param params
	 * @param @return
	 * @return int
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public int count(MXParams params);
	
	/**
	 * 获取单条banner信息
	 * 方法名: get 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午1:55:37
	 * @param @param id
	 * @param @return
	 * @return Banner
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public Banner get(Integer id);
	
	/**
	 * 保存banner管理
	 * 方法名: save 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午1:55:51
	 * @param @param banner
	 * @param @return
	 * @return int
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public int save(Banner banner);
	
	/**
	 * 更新banner管理
	 * 方法名: update 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午1:56:01
	 * @param @param banner
	 * @param @return
	 * @return int
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public int update(Banner banner);
	
	/**
	 * 删除banner管理
	 * 方法名: delete 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午1:56:25
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

	int updateByKey(Banner banner);
	
	/**
	 * 查询出广告位的位置
	 * 方法名: findLocations 
	 * 创建人: lifan 
	 * 时间：2017年8月30日 下午5:32:31
	 * @param @return
	 * @return List<BannerLocation>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public List<BannerLocation> findLocations();
	
}
