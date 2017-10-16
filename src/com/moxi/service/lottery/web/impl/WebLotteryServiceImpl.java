package com.moxi.service.lottery.web.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moxi.dao.lottery.web.IWebLotteryMapper;
import com.moxi.model.LotteryPojo;
import com.moxi.model.MXParams;
import com.moxi.service.lottery.web.IWebLotteryService;

/**
 * 彩票开奖结果
 * 类名: AdminLotteryServiceImpl
 * 创建人:lifan 
 * 时间：2017年8月7日 下午2:40:45 
 * @version 1.0.0
 *
 */
@Service
public class WebLotteryServiceImpl implements IWebLotteryService{
	
	@Autowired
	private IWebLotteryMapper webLotteryMapper;

	@Override
	public List<LotteryPojo> findLotteryByType(MXParams mxParams) {
		return webLotteryMapper.findLotteryByType(mxParams);
	}
	
	@Override
	public int count(MXParams params) {
		return webLotteryMapper.count(params);
	}

	@Override
	public List<LotteryPojo> findSdsjhLotteryByType(MXParams mxParams) {
		mxParams.setLotteryType("sdsjh");
		return webLotteryMapper.findLotteryByType(mxParams);
	}


}
