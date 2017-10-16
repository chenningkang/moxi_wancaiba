package com.moxi.service.lottery.admin.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moxi.dao.lottery.admin.ILotteryMapper;
import com.moxi.model.LotteryPojo;
import com.moxi.service.lottery.admin.ILotteryService;

/**
 * 彩票开奖结果
 * 类名: AdminLotteryServiceImpl
 * 创建人:lifan 
 * 时间：2017年8月7日 下午2:40:45 
 * @version 1.0.0
 *
 */
@Service
public class AdminLotteryServiceImpl implements ILotteryService{

	@Autowired
	private ILotteryMapper lotteryMapper;

	@Override
	public void saveLotteryResult(LotteryPojo bean) {
		lotteryMapper.saveLotteryResult(bean);
	}
	
	
	
}
