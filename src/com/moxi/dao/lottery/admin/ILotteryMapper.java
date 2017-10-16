
package com.moxi.dao.lottery.admin;

import com.moxi.model.LotteryPojo;

/**
 * 
 * 类名: ILotteryMapper
 * 创建人:lifan 
 * 时间：2017年8月7日 下午2:31:15 
 * @version 1.0.0
 *
 */
public interface ILotteryMapper {

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
	public void saveLotteryResult(LotteryPojo bean);
}
