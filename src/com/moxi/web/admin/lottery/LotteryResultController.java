package com.moxi.web.admin.lottery;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONException;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.moxi.model.LotteryPojo;
import com.moxi.model.MXParams;
import com.moxi.service.lottery.admin.ILotteryService;
import com.moxi.util.SendMassageUtil;
import com.moxi.util.TmStringUtils;
import com.moxi.util.Utils;

/**
 * 各彩票开奖结果进入数据库控制层
 * 类名: LotteryResultController
 * 创建人:lifan 
 * 时间：2017年8月8日 上午10:12:57 
 * @version 1.0.0
 *
 */
@Controller
@RequestMapping("/admin/lottery")
public class LotteryResultController {
	
	@Autowired
	private ILotteryService lotteryService;

//	/**
//	 * 双色球开奖结果进入数据库
//	 * 方法名: incomeSsq 
//	 * 创建人: lifan 
//	 * 时间：2017年8月8日 上午9:52:22
//	 * @param 
//	 * @return void
//	 * @exception
//	 * @since 1.0.0
//	 * @throws
//	 */
//	@RequestMapping("/ssq")
//	@ResponseBody
//	public void incomeSsq() {
//		//彩票类型
//		String lottoryType = "ssq";
//		//请求地址
//		String shuangseqiu_url = Utils.readProperryFile(lottoryType);// 1.双色球
//		try {
//			Map<Object, Object> map = new HashMap<Object, Object>();
//			//彩票类型
//			map.put("type", lottoryType);
//			//发起彩票接口的请求,拿到请求到的数据
//			String content = SendMassageUtil.HTTPPOST(shuangseqiu_url);
////			JSONObject obj = new JSONObject().fromObject(content); // 返回的里面的code
////			JSONObject objsum = (JSONObject) obj.get("status");
////			String retunCode = null;
////			if (objsum != null) {
////				retunCode = (String) objsum.get("code");// 返回的里面的code
////			}
//			
//			if (content != null && !content.equals("")) {
//				//只拿一条数据
//				List<LotteryPojo> list = Utils.manipulation(content,"ssq", 1);
//				// 数据保存
//				for (int i = 0; i < list.size(); i++) {
//					LotteryPojo bean = list.get(i);
//					bean.setSysCreateTime(Utils.syscreateTimeChange(bean.getDateline()));
//					bean.setIsDelete(0);
//					lotteryService.saveLotteryResult(bean);
//				}
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	}
//	
//	/**
//	 * 3d开奖数据进入数据库
//	 * 方法名: income3D 
//	 * 创建人: lifan 
//	 * 时间：2017年8月8日 上午9:52:03
//	 * @param 
//	 * @return void
//	 * @exception
//	 * @since 1.0.0
//	 * @throws
//	 */
//	@RequestMapping("/3d")
//	@ResponseBody
//	public void income3D() {
//		//彩票类型
//		String lottoryType = "3D";
//		//请求地址
//		String sd_url = Utils.readProperryFile(lottoryType);// 1.双色球
//		try {
//			Map<Object, Object> map = new HashMap<Object, Object>();
//			//彩票类型
//			map.put("type", lottoryType);
//			//发起彩票接口的请求,拿到请求到的数据
//			String content = SendMassageUtil.HTTPPOST(sd_url);
//			
//			if (TmStringUtils.isNotEmpty(content)) {
//				//只拿一条数据
//				List<LotteryPojo> list = Utils.manipulation(content,"3D", 1);
//				// 数据保存
//				for (int i = 0; i < list.size(); i++) {
//					LotteryPojo bean = list.get(i);
//					bean.setSysCreateTime(Utils.syscreateTimeChange(bean.getDateline()));
//					bean.setIsDelete(0);
//					lotteryService.saveLotteryResult(bean);
//				}
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	}
//	
//	/**
//	 * 七乐彩开奖结果进入数据库
//	 * 方法名: incomeqilecai 
//	 * 创建人: lifan 
//	 * 时间：2017年8月8日 上午9:54:08
//	 * @param 
//	 * @return void
//	 * @exception
//	 * @since 1.0.0
//	 * @throws
//	 */
//	@RequestMapping("/qlc")
//	@ResponseBody
//	public void incomeqilecai() {
//		//彩票类型
//		String lottoryType = "qilecai";
//		//请求地址
//		String qilecai_url = Utils.readProperryFile(lottoryType);// 1.双色球
//		try {
//			Map<Object, Object> map = new HashMap<Object, Object>();
//			//彩票类型
//			map.put("type", lottoryType);
//			//发起彩票接口的请求,拿到请求到的数据
//			String content = SendMassageUtil.HTTPPOST(qilecai_url);
//			
//			if (TmStringUtils.isNotEmpty(content)) {
//				//只拿一条数据
//				List<LotteryPojo> list = Utils.manipulation(content,"qilecai", 1);
//				// 数据保存
//				for (int i = 0; i < list.size(); i++) {
//					LotteryPojo bean = list.get(i);
//					bean.setSysCreateTime(Utils.syscreateTimeChange(bean.getDateline()));
//					bean.setIsDelete(0);
//					lotteryService.saveLotteryResult(bean);
//				}
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	}
//	
//	/**
//	 * 体彩p3进入数据库
//	 * 方法名: incomeP3 
//	 * 创建人: lifan 
//	 * 时间：2017年8月8日 上午9:57:15
//	 * @param 
//	 * @return void
//	 * @exception
//	 * @since 1.0.0
//	 * @throws
//	 */
	@RequestMapping("/pls")
	@ResponseBody
	public void incomeP3() {
		//彩票类型
		String lottoryType = "pls";
		//请求地址
		String pailiesan_url = Utils.readProperryFile(lottoryType);// 1.双色球
		try {
			Map<Object, Object> map = new HashMap<Object, Object>();
			//彩票类型
			map.put("type", lottoryType);
			//发起彩票接口的请求,拿到请求到的数据
			String content = SendMassageUtil.HTTPPOST(pailiesan_url);
			
			if (TmStringUtils.isNotEmpty(content)) {
				//只拿一条数据
				List<LotteryPojo> list = Utils.manipulation(content,"pls", 1);
				// 数据保存
				for (int i = 0; i < list.size(); i++) {
					LotteryPojo bean = list.get(i);
//					bean.setSysCreateTime(Utils.syscreateTimeChange(bean.getDateline()));
//					bean.setIsDelete(0);
//					lotteryService.saveLotteryResult(bean);
					System.out.println(bean.getNumber());
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
//	
//	/**
//	 * 体彩p5进入数据库
//	 * 方法名: incomeP5 
//	 * 创建人: lifan 
//	 * 时间：2017年8月8日 上午9:58:04
//	 * @param 
//	 * @return void
//	 * @exception
//	 * @since 1.0.0
//	 * @throws
//	 */
//	@RequestMapping("/p5")
//	@ResponseBody
//	public void incomeP5() {
//		//彩票类型
//		String lottoryType = "pailiewu";
//		//请求地址
//		String pailiewu_url = Utils.readProperryFile(lottoryType);// 1.双色球
//		try {
//			Map<Object, Object> map = new HashMap<Object, Object>();
//			//彩票类型
//			map.put("type", lottoryType);
//			//发起彩票接口的请求,拿到请求到的数据
//			String content = SendMassageUtil.HTTPPOST(pailiewu_url);
//			
//			if (TmStringUtils.isNotEmpty(content)) {
//				//只拿一条数据
//				List<LotteryPojo> list = Utils.manipulation(content,"pailiewu", 1);
//				// 数据保存
//				for (int i = 0; i < list.size(); i++) {
//					LotteryPojo bean = list.get(i);
//					bean.setSysCreateTime(Utils.syscreateTimeChange(bean.getDateline()));
//					bean.setIsDelete(0);
//					lotteryService.saveLotteryResult(bean);
//				}
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	}
//	
//	/**
//	 * 大乐透进入数据库
//	 * 方法名: incomeDlt 
//	 * 创建人: lifan 
//	 * 时间：2017年8月8日 上午9:59:03
//	 * @param 
//	 * @return void
//	 * @exception
//	 * @since 1.0.0
//	 * @throws
//	 */
	@RequestMapping("/dlt")
	@ResponseBody
	public void incomeDlt() {
		//彩票类型
		String lottoryType = "dlt";
		//请求地址
		String daletou_url = Utils.readProperryFile(lottoryType);// 1.双色球
		try {
			Map<Object, Object> map = new HashMap<Object, Object>();
			//彩票类型
			map.put("type", lottoryType);
			//发起彩票接口的请求,拿到请求到的数据
			String content = SendMassageUtil.HTTPPOST(daletou_url);
			
			if (TmStringUtils.isNotEmpty(content)) {
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
//	
//	/**
//	 * 七星彩进入数据库
//	 * 方法名: incomeQxc 
//	 * 创建人: lifan 
//	 * 时间：2017年8月8日 上午10:00:00
//	 * @param 
//	 * @return void
//	 * @exception
//	 * @since 1.0.0
//	 * @throws
//	 */
	@RequestMapping("/qxc")
	@ResponseBody
	public void incomeQxc() {
		//彩票类型
		String lottoryType = "qxc";
		//请求地址
		String qixingcai_url = Utils.readProperryFile(lottoryType);// 1.双色球
		try {
			Map<Object, Object> map = new HashMap<Object, Object>();
			//彩票类型
			map.put("type", lottoryType);
			//发起彩票接口的请求,拿到请求到的数据
			String content = SendMassageUtil.HTTPPOST(qixingcai_url);
			
			if (TmStringUtils.isNotEmpty(content)) {
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
//	
//	/**
//	 * 3D试机号进入数据库
//	 * 方法名: incomeSdsjh 
//	 * 创建人: lifan 
//	 * 时间：2017年8月8日 上午10:01:52
//	 * @param 
//	 * @return void
//	 * @exception
//	 * @since 1.0.0
//	 * @throws
//	 */
//	@RequestMapping("/sdsjh")
//	@ResponseBody
//	public void incomeSdsjh() {
//		//彩票类型
//		String lottoryType = "3Dshijihao";
//		//请求地址
//		String SDshijihao_url = Utils.readProperryFile(lottoryType);// 1.双色球
//		try {
//			Map<Object, Object> map = new HashMap<Object, Object>();
//			//彩票类型
//			map.put("type", lottoryType);
//			//发起彩票接口的请求,拿到请求到的数据
//			String content = SendMassageUtil.HTTPPOST(SDshijihao_url);
//			
//			if (TmStringUtils.isNotEmpty(content)) {
//				//只拿一条数据
//				List<LotteryPojo> list = Utils.manipulation(content,"3Dshijihao", 1);
//				// 数据保存
//				for (int i = 0; i < list.size(); i++) {
//					LotteryPojo bean = list.get(i);
//					bean.setSysCreateTime(Utils.syscreateTimeChange(bean.getDateline()));
//					bean.setIsDelete(0);
//					lotteryService.saveLotteryResult(bean);
//				}
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	}
	
	/**
	 * 彩票开奖通用请求
	 * 方法名: saveLotteryResult 
	 * 创建人: lifan 
	 * 时间：2017年8月15日 上午10:04:32
	 * @param 
	 * @return void
	 * @exception
	 * @since 1.0.0
	 * @throws
	 */
//	@RequestMapping("/slrst")
//	@ResponseBody
//	public void saveLotteryResult(){
////		String name = "ssq";// 彩种
////		String uid = "743362";// 用户ID
////		String token = "70ece3eedfe88729358657bcc5048f62638f8b0e";// token
//		MXParams mxParams = new MXParams();
//		mxParams.setCpname("qxc");
//		mxParams.setCpuid("743362");
//		mxParams.setCptoken("70ece3eedfe88729358657bcc5048f62638f8b0e");
//		
//		String url = "http://api.caipiaokong.com/lottery/";
//		url += "?name=" + mxParams.getCpname();
//		url += "&format=json";// 数据格式，此文件仅支持json
//		url += "&uid=" + mxParams.getCpuid();
//		url += "&token=" + mxParams.getCptoken();
//		//拿到完整请求路径
//		String urlAll = new StringBuffer(url).toString();
//		String charset = "UTF-8";
//		//通过模拟请求得到JSON字符串
//		String jsonResult = Utils.get(urlAll, charset);
//		// 转化为JSON类
//		JSONObject object = JSONObject.fromObject(jsonResult);
//		try {
//			Iterator it = object.keys();
//			while (it.hasNext()) {
//				String key = (String) it.next();
//				String value = object.getString(key);
//				JSONObject object1 = JSONObject.fromObject(value);// 转化为JSON类
//				
//				LotteryPojo lotteryPojo = new LotteryPojo();
//				lotteryPojo.setQihao(key);
//				lotteryPojo.setNumber(object1.getString("number"));
//				lotteryPojo.setDateline(object1.getString("dateline"));
//				lotteryPojo.setSysCreateTime(Utils.syscreateTimeChange(object1.getString("dateline")));
//				lotteryPojo.setType(mxParams.getCpname());
//				lotteryPojo.setIsDelete(0);
//				lotteryService.saveLotteryResult(lotteryPojo);
//			}
//		} catch (JSONException e) {
//			e.printStackTrace();
//		}
//	}
	
}
