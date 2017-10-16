
package com.moxi.dao.lottery.web;

import java.util.List;

import com.moxi.model.LotteryPojo;
import com.moxi.model.MXParams;

public interface IWebLotteryMapper {

	/**
	 * 查询出对应彩票的开奖结果信息
	 * 方法名: findLotteryByType 
	 * 创建人: lifan 
	 * 时间：2017年8月21日 下午5:54:34
	 * @param @param mxParams
	 * @param @return
	 * @return List<LotteryPojo>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public List<LotteryPojo> findLotteryByType(MXParams mxParams);
	
	/**
	 * 统计彩票个数
	 * 方法名: count 
	 * 创建人: lifan 
	 * 时间：2017年8月29日 下午1:23:06
	 * @param @param mxParams
	 * @param @return
	 * @return int
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public int count(MXParams mxParams);
	
}
