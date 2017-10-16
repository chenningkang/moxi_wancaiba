package com.moxi.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.moxi.model.LotteryPojo;
import com.moxi.service.lottery.admin.ILotteryService;
import com.moxi.util.SendMassageUtil;
import com.moxi.util.Utils;

@Component
public class LotteryCreate {
	
	@Autowired
	private ILotteryService lotteryService;
	
	/**
	 * 自动爬取彩票双色球的开奖信息
	 * 每周二、四、日21:15分开始爬取
	 * 方法名: incomeSsq 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午3:14:04
	 * @param 
	 * @return void
	 * @exception
	 * @since 1.0.0
	 * @throws
	 * （1~7 1=SUN 或 SUN，MON，TUE，WED，THU，FRI，SAT）
	 * cron = "0 20 21 ? * 1,3,5"
	 */
	@Scheduled(cron = "0 0 22 ? * TUE,THU,SUN")
	public void incomeSsq() {
		//彩票类型
		String lottoryType = "ssq";
		//请求地址
		String shuangseqiu_url = Utils.readProperryFile(lottoryType);
		try {
			Map<Object, Object> map = new HashMap<Object, Object>();
			//彩票类型
			map.put("type", lottoryType);
			//发起彩票接口的请求,拿到请求到的数据
			String content = SendMassageUtil.HTTPPOST(shuangseqiu_url);
			
			if (content != null && !content.equals("")) {
				//只拿一条数据
				List<LotteryPojo> list = Utils.manipulation(content,"ssq", 1);
				// 数据保存
				for (int i = 0; i < list.size(); i++) {
					LotteryPojo bean = list.get(i);
					bean.setSysCreateTime(Utils.syscreateTimeChange(bean.getDateline()));
					bean.setIsDelete(0);
					lotteryService.saveLotteryResult(bean);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 大乐透开奖结果（每周一、三、六21:30开奖）
	 * 方法名: incomeDlt 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午3:21:57
	 * @param 
	 * @return void
	 * @exception
	 * @since 1.0.0
	 * @throws
	 * （1~7 1=SUN 或 SUN，MON，TUE，WED，THU，FRI，SAT）
	 */
	@Scheduled(cron = "0 0 21 ? * MON,WED,SAT")
	public void incomeDlt() {
		//彩票类型
		String lottoryType = "dlt";
		//请求地址
		String dlt_url = Utils.readProperryFile(lottoryType);
		try {
			Map<Object, Object> map = new HashMap<Object, Object>();
			//彩票类型
			map.put("type", lottoryType);
			//发起彩票接口的请求,拿到请求到的数据
			String content = SendMassageUtil.HTTPPOST(dlt_url);
			
			if (content != null && !content.equals("")) {
				//只拿一条数据
				List<LotteryPojo> list = Utils.manipulation(content,"dlt", 1);
				// 数据保存
				for (int i = 0; i < list.size(); i++) {
					LotteryPojo bean = list.get(i);
					bean.setSysCreateTime(Utils.syscreateTimeChange(bean.getDateline()));
					bean.setIsDelete(0);
					lotteryService.saveLotteryResult(bean);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 七星彩开奖结果（每周二、五、日开奖）
	 * 方法名: incomeQxc 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午3:21:57
	 * @param 
	 * @return void
	 * @exception
	 * @since 1.0.0
	 * @throws
	 * （1~7 1=SUN 或 SUN，MON，TUE，WED，THU，FRI，SAT）
	 */
	@Scheduled(cron = "0 0 21 ? * TUE,FRI,SUN")
	public void incomeQxc() {
		//彩票类型
		String lottoryType = "qxc";
		//请求地址
		String qxc_url = Utils.readProperryFile(lottoryType);
		try {
			Map<Object, Object> map = new HashMap<Object, Object>();
			//彩票类型
			map.put("type", lottoryType);
			//发起彩票接口的请求,拿到请求到的数据
			String content = SendMassageUtil.HTTPPOST(qxc_url);
			
			if (content != null && !content.equals("")) {
				//只拿一条数据
				List<LotteryPojo> list = Utils.manipulation(content,"qxc", 1);
				// 数据保存
				for (int i = 0; i < list.size(); i++) {
					LotteryPojo bean = list.get(i);
					bean.setSysCreateTime(Utils.syscreateTimeChange(bean.getDateline()));
					bean.setIsDelete(0);
					lotteryService.saveLotteryResult(bean);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 七乐彩开奖结果(每周一、三、五开奖)
	 * 方法名: incomeQlc 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午3:29:24
	 * @param 
	 * @return void
	 * @exception
	 * @since 1.0.0
	 * @throws
	 * （1~7 1=SUN 或 SUN，MON，TUE，WED，THU，FRI，SAT）
	 */
	@Scheduled(cron = "0 0 22 ? * MON,WED,FRI")
	public void incomeQlc() {
		//彩票类型
		String lottoryType = "qlc";
		//请求地址
		String qlc_url = Utils.readProperryFile(lottoryType);
		try {
			Map<Object, Object> map = new HashMap<Object, Object>();
			//彩票类型
			map.put("type", lottoryType);
			//发起彩票接口的请求,拿到请求到的数据
			String content = SendMassageUtil.HTTPPOST(qlc_url);
			
			if (content != null && !content.equals("")) {
				//只拿一条数据
				List<LotteryPojo> list = Utils.manipulation(content,"qlc", 1);
				// 数据保存
				for (int i = 0; i < list.size(); i++) {
					LotteryPojo bean = list.get(i);
					bean.setSysCreateTime(Utils.syscreateTimeChange(bean.getDateline()));
					bean.setIsDelete(0);
					lotteryService.saveLotteryResult(bean);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 福彩3D开奖结果（每天开奖）
	 * 方法名: incomeSd 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午3:33:06
	 * @param 
	 * @return void
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@Scheduled(cron = "0 0 23 * * ?")
	public void incomeSd() {
		//彩票类型
		String lottoryType = "sd";
		//请求地址
		String sd_url = Utils.readProperryFile(lottoryType);
		try {
			Map<Object, Object> map = new HashMap<Object, Object>();
			//彩票类型
			map.put("type", lottoryType);
			//发起彩票接口的请求,拿到请求到的数据
			String content = SendMassageUtil.HTTPPOST(sd_url);
			
			if (content != null && !content.equals("")) {
				//只拿一条数据
				List<LotteryPojo> list = Utils.manipulation(content,"sd", 1);
				// 数据保存
				for (int i = 0; i < list.size(); i++) {
					LotteryPojo bean = list.get(i);
					bean.setSysCreateTime(Utils.syscreateTimeChange(bean.getDateline()));
					bean.setIsDelete(0);
					lotteryService.saveLotteryResult(bean);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 3d试机号
	 * 方法名: incomeSd 
	 * 创建人: lifan 
	 * 时间：2017年8月28日 上午11:38:12
	 * @param 
	 * @return void
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@Scheduled(cron = "0 0 23 * * ?")
	public void incomeSdsjh() {
		//彩票类型
		String lottoryType = "sdsjh";
		//请求地址
		String sdsjh_url = Utils.readProperryFile(lottoryType);
		try {
			Map<Object, Object> map = new HashMap<Object, Object>();
			//彩票类型
			map.put("type", lottoryType);
			//发起彩票接口的请求,拿到请求到的数据
			String content = SendMassageUtil.HTTPPOST(sdsjh_url);
			
			if (content != null && !content.equals("")) {
				//只拿一条数据
				List<LotteryPojo> list = Utils.manipulation(content,"sdsjh", 1);
				// 数据保存
				for (int i = 0; i < list.size(); i++) {
					LotteryPojo bean = list.get(i);
					bean.setSysCreateTime(Utils.syscreateTimeChange(bean.getDateline()));
					bean.setIsDelete(0);
					lotteryService.saveLotteryResult(bean);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	/**
	 * 排列三开奖结果（每天开奖）
	 * 方法名: incomePls 
	 * 创建人: lifan 
	 * 时间：2017年8月23日 下午3:35:04
	 * @param 
	 * @return void
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
	@Scheduled(cron = "0 30 21 * * ?")
	public void incomePls() {
		//彩票类型
		String lottoryType = "pls";
		//请求地址
		String pls_url = Utils.readProperryFile(lottoryType);
		try {
			Map<Object, Object> map = new HashMap<Object, Object>();
			//彩票类型
			map.put("type", lottoryType);
			//发起彩票接口的请求,拿到请求到的数据
			String content = SendMassageUtil.HTTPPOST(pls_url);
			
			if (content != null && !content.equals("")) {
				//只拿一条数据
				List<LotteryPojo> list = Utils.manipulation(content,"pls", 1);
				// 数据保存
				for (int i = 0; i < list.size(); i++) {
					LotteryPojo bean = list.get(i);
					bean.setSysCreateTime(Utils.syscreateTimeChange(bean.getDateline()));
					bean.setIsDelete(0);
					lotteryService.saveLotteryResult(bean);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
