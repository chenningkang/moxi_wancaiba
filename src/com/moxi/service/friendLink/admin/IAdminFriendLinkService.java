package com.moxi.service.friendLink.admin;

import java.util.HashMap;
import java.util.List;

import com.moxi.core.ServiceResult;
import com.moxi.model.Banner;
import com.moxi.model.Channel;
import com.moxi.model.Company;
import com.moxi.model.Content;
import com.moxi.model.MXParams;
import com.moxi.model.LinkManager;

/**
 * IAdminFriendLinkService
 * 创建人:lifan 
 * 时间：2017年07月17日 11:02:01
 * @version 1.0.0
 * 
 */
public interface IAdminFriendLinkService {


	/**
	 * 查询友情链接list
	 * 方法名: findFriendLinks 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:23:48
	 * @param @param params
	 * @param @return
	 * @return List<HashMap<String,Object>>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public List<HashMap<String, Object>> findFriendLinks(MXParams params);
	
	
	/**
	 * 根据id查询友情链接
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
	public LinkManager getFriendLink(Integer id);
	
	
	/**
	 * 求总数
	 * 方法名: count 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:24:03
	 * @param @param params
	 * @param @return
	 * @return int
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public int count(MXParams params);
	
	/**
	 * 获取单条数据
	 * 方法名: get 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:24:08
	 * @param @param id
	 * @param @return
	 * @return Banner
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public Banner get(Integer id);
	
	/**
	 * 保存数据
	 * 方法名: save 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:24:13
	 * @param @param banner
	 * @param @return
	 * @return int
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public int save(Banner banner);
	
	/**
	 * 更新数据
	 * 方法名: update 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:24:18
	 * @param @param friendLink3
	 * @param @return
	 * @return int
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public int update(LinkManager friendLink3);
	
	/**
	 * 删除数据
	 * 方法名: delete 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:24:23
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
	ServiceResult<Object> updateDetails(LinkManager friendLink3);
	
	/**
	 * @Description: (新增内容信息)
	 * @return
	 * @author cnk
	 */
	ServiceResult<Object> addDetails(LinkManager friendLink3);
	
}
