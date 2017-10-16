package com.moxi.dao.friendLink.admin;

import java.util.HashMap;
import java.util.List;

import com.moxi.model.Banner;
import com.moxi.model.Content;
import com.moxi.model.MXParams;
import com.moxi.model.LinkManager;

/**
 * 内容管理Mapper
 * IContentMapper
 * 创建人:lifan 
 * 时间：2017年07月17日 11:00:33
 * @version 1.0.0
 * 
 */
public interface IAdminFriendLinkMapper {

	/**
	 * 查询友情链接列表
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
	public List<HashMap<String, Object>> findFriendLinks(MXParams params);
	
	/**
	 * 根据id查询友情链接
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
	public LinkManager getFriendLink(Integer id);
	
	
	/**
	 *  求总数
	 * 方法名: count 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:09:25
	 * @param @param params
	 * @param @return
	 * @return int
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public int count(MXParams params);
	
	/**
	 * 获取友情链接的单条数据
	 * 方法名: get 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:09:31
	 * @param @param id
	 * @param @return
	 * @return Banner
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public Banner get(Integer id);
	
	/**
	 * 保存友情链接
	 * 方法名: save 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:09:56
	 * @param @param friendLink3
	 * @param @return
	 * @return int
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public int save(LinkManager friendLink3);
	
	/**
	 * 更新友情链接
	 * 方法名: update 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:10:03
	 * @param @param friendLink3
	 * @param @return
	 * @return int
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public int update(LinkManager friendLink3);
	
	/**
	 * 删除友情链接
	 * 方法名: delete 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午2:10:14
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
	 
	
}
