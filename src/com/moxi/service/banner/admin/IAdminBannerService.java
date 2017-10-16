package com.moxi.service.banner.admin;

import java.util.HashMap;
import java.util.List;

import com.moxi.core.ServiceResult;
import com.moxi.model.Banner;
import com.moxi.model.BannerLocation;
import com.moxi.model.MXParams;

/**
 * 
 * IContentService
 * 创建人:lifan 
 * 时间：2017年07月17日 11:02:01
 * @version 1.0.0
 * 
 */
public interface IAdminBannerService {


	/**
	 * 查询banner管理列表
	 * com.moxi.service.content 
	 * 方法名：findContents
	 * 创建人：lifan 
	 * 手机号码:15021297671
	 * 时间：2017年07月17日 11:02:01
	 * @param params
	 * @return 
	 * 返回类型：List<Content>
	 * @exception 
	 * @since  1.0.0
	 */
	public List<HashMap<String, Object>> findBanners(MXParams params);
	
	
	/**
	 * 根据id查询banner
	 * 方法名: getContent 
	 * 创建人: lifan 
	 * 时间：2017年7月21日 下午4:45:02
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
	 */
	public int count(MXParams params);
	
	/**
	 * 获取单条数据
	 * 方法名: get 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:15:58
	 * @param @param id
	 * @param @return
	 * @return Banner
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public Banner get(Integer id);
	
	/**
	 * 保存banner信息
	 * 方法名: save 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:16:03
	 * @param @param banner
	 * @param @return
	 * @return int
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public int save(Banner banner);
	
	/**
	 * 更新banner信息
	 * 方法名: update 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:16:18
	 * @param @param banner
	 * @param @return
	 * @return int
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public int update(Banner banner);
	
	/**
	 * 删除banner信息
	 * 方法名: delete 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:16:23
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
	 * @Description: (修改内容信息)
	 * @return
	 * @author cnk
	 */
	ServiceResult<Object> updateDetails(Banner banner);
	
	/**
	 * @Description: (新增内容信息)
	 * @return
	 * @author cnk
	 */
	ServiceResult<Object> addDetails(Banner banner);
	
	/**
	 * 查询出广告位的位置
	 * 方法名: findLocations 
	 * 创建人: lifan 
	 * 时间：2017年8月30日 下午5:33:18
	 * @param @return
	 * @return List<BannerLocation>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public List<BannerLocation> findLocations();
	
}
