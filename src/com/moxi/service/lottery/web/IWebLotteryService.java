
package com.moxi.service.lottery.web;

import java.util.List;

import com.moxi.model.LotteryPojo;
import com.moxi.model.MXParams;

public interface IWebLotteryService {

	/**
	 * 查询开奖结果
	 * 方法名: findLotteryByType 
	 * 创建人: lifan 
	 * 时间：2017年8月21日 下午5:56:36
	 * @param @param mxParams
	 * @param @return
	 * @return List<LotteryPojo>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public List<LotteryPojo> findLotteryByType(MXParams mxParams);
	
	/**
	 * 统计双色球结果个数
	 * 方法名: countSsq 
	 * 创建人: lifan 
	 * 时间：2017年8月29日 下午1:24:44
	 * @param @param params
	 * @param @return
	 * @return int
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public int count(MXParams params);
	
	/**
	 * 查询福彩试机号结果
	 * 方法名: findQlcLotteryByType 
	 * 创建人: lifan 
	 * 时间：2017年8月22日 下午3:12:06
	 * @param @param mxParams
	 * @param @return
	 * @return List<LotteryPojo>
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	public List<LotteryPojo> findSdsjhLotteryByType(MXParams mxParams);
	
}
