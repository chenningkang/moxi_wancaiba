<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	trimDirectiveWhitespaces="true"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,width=device-width, user-scalable=no, minimal-ui">
<meta content="no" name="apple-mobile-web-app-capable">
<meta content="black" name="apple-mobile-web-app-status-bar-style">
<meta content="telephone=no, email=no" name="format-detection">
<meta content="no" name="wap-font-scale">
<title>魔曦万彩吧</title>
<meta name="keywords"
	content="彩票开奖查询_双色球开奖结果_3d开奖结果_大乐透开奖结果_排列五开奖结果_七星彩开奖结果_王中王铁算盘开奖结果_六开彩开奖现场直播_香港最快,万彩吧">
<meta name="description"
	content="万彩吧彩票开奖查询_双色球开奖结果_3d开奖结果_大乐透开奖结果_排列五开奖结果_七星彩开奖结果_王中王铁算盘开奖结果_六开彩开奖现场直播_香港最快">
<link href="/resources/css/wancaiba/base2.css" rel="stylesheet" />
<link href="/resources/css/wancaiba/home2.css" rel="stylesheet" />
<link href="/resources/css/wancaiba/datepicker.css" rel="stylesheet" />
<script src="/resources/js/sectioncate/jquery-1.9.1.min.js"></script>
<script type="text/javascript">var basePath="/";var adminPath="/admin";var webPath="/web";</script>
<script type="text/javascript" src="/resources/sg/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="/resources/sg/sgutil.js"></script>
<script type="text/javascript" src="/resources/sg/sg.js"></script>
<script type="text/javascript" src="/resources/js/sectioncate/wcb_web.js"></script>
<style type="text/css">
		ul li{list-style:none}
		/*头部*/
		.header{height: .4rem;line-height: .4rem;background-color: #e23a3a;border: 0;width: 100%}
		.header .arrow-back{position:absolute;top:.12rem;left:.14rem;width:.13rem;height:.13rem;color:#fff;background:0 0;display:inline-block;vertical-align:middle;border-style:solid;border-width:.02rem 0 0 .02rem;-webkit-transform:rotate(-45deg);-moz-transform:rotate(-45deg);-o-transform:rotate(-45deg);transform:rotate(-45deg)}
		.header center{font-size: .18rem;color: #fff;width: 50%;word-break: keep-all;margin: 0 auto}
		
		.toptitle{width:100%;height:40px;line-height:40px;text-align:center;border-bottom:5px solid #e0dbdb}
		.tabs{height: 40px;width: 100%;}
	    .tabs li{height:40px;width:20%;line-height:40px;float:left;overflow: hidden;}
	    .tabs li a {display: block;outline: none;color:#111;font-size:14px}
	    
	    .tabs .thistab,.tabs .thistab a{border-bottom: 5px solid red;color:red}
	    
	    .conbox{width:96%;margin:0 auto}
	    
	    .tab_conbox{width:100%}
	    .tab_conbox .tab_con {display:none;}
	    .tab_conbox .tab_con .conli{height:92px;}
	    .tab_conbox .tab_con .conli .cllf{width:76%;height:92px;float:left}
	    .tab_conbox .tab_con .conli .cllf .cllf-title{height:52px;}
	    .tab_conbox .tab_con .conli .cllf .cllf-msg{height:31px;font-size:12px}
	    .tab_conbox .tab_con .listli{margin-top:5px;border-bottom:1px solid #e0dbdb}
	    .tab_conbox .tab_con .conli .clrt{width:24%;height:92px;float:left}
	    
	    .fl{float:left}
	    .fr{float:right}
	    .mrt20{margin-right:20px}
	</style>

</head>

<body>
	<meta name="_token" content="64RdDr6Grj8WCglbld1CablC9EsyKWBLtWQ0MnMK" />
	<script src="/ajax/libs/jquery/jquery.min.js"></script>
	<header id="header" class="header">
		<div class="mainNav">
			<a href="/"><img class="logoh1" alt="万彩吧"
				src="/resources/images/logo/moxitu.png"></a>
			<span class="jia"></span> <a>彩票开奖查询</a>
		</div>
		<div class="right">
			<a href="/go/anzhuo"><i class="icon idow"></i></a> <a href="/fm"><i
				class="icon iuser"></i></a>
		</div>
	</header>
	
	
		<div class="toptitle">
 			<ul class="tabs" id="tabs">
		       <li><a href="javascript:void(0);">全国彩</a></li>
		       <li><a href="javascript:void(0);">地方彩</a></li>
		       <li><a href="javascript:void(0);">高频彩</a></li>
		       <li><a href="javascript:void(0);">竞彩</a></li>
		       <a data-cid="${channelList['6c']}" href="/web/content/conlists/${channelList['6c']}" target="_blank">6彩</a>
		    </ul>
 		</div>
 		

 		
 		
 		<div class="conbox">
 			<ul class="tab_conbox" id="tab_conbox">
 				
 				<li class="tab_con">
					<ul>      
						<li  onclick="selectall(1);">
							<div class="fl" id="ssq">
								<a data-cid="${channelList['ssq']}"   target="_blank" > <a style="display: none;"
									href="ssq/c_detail-8.html">
										<div class="pic">
											<img
												data-src="./upload/web_class/2016-09-14/4d5e1a33e4666c11c42e3ab00a98f0352.png"
												alt="双色球结果">
										</div>
								</a > <span class="kaij-name">双色球</span> <span
									class="padding0 lottery_stage">第2017103期 </span>
							</div>
							<div class="item fr">
								<a class="color-orange" href="#">预测</a> <a
									class="color-orange" href="#">玄机</a> <a
									class="color-orange" href="#">走势</a>
			
							</div>
							<div class="clearfix">
								<a  class="lottery_number"> <i
									class="red-spot">01</i> <i class="red-spot">21</i> <i
									class="red-spot">23</i> <i class="red-spot">25</i> <i
									class="red-spot">31</i> <i class="red-spot">33</i> <i
									class="blue-spot">01</i>
			
								</a> <i class="icon right idetails"></i>
							</div>
						</li>
						<li  onclick="selectall(2);">	
							<div class="fl" id="fc3d">
								<a data-cid="${channelList['fc3d']}"  > <a style="display: none;">
										<div class="pic">
											<img
												data-src="./upload/web_class/2016-09-18/843eb9742852623f2fd810fb416490b65.png"
												alt="福彩3D结果">
										</div>
								</a> <span class="kaij-name">福彩3D</span> <span
									class="padding0 lottery_stage">第2017240期 </span>
							</div>
							<div class="item fr">
								<a class="color-orange" href="#">预测</a> <a
									class="color-orange" href="#">玄机</a> <a
									class="color-orange" href="#">走势</a>
			
							</div>
							<div class="clearfix">
								<a class="lottery_number"> <i
									class="red-spot">5</i> <i class="red-spot">9</i> <i
									class="red-spot">1</i>
								</a> <i class="icon right idetails"></i>
								<p class="padding0 lottery_shiji"
									style="font-size:.12rem; display:inline-block;">
									第2017240期 试机号: <i class="red-spot b9-spot">8</i><i
										class="red-spot b9-spot">5</i><i class="red-spot b9-spot">2</i>
								</p>
							</div>
						</li>
						<li   onclick="selectall(3);">
							<div class="fl" id="qlc">
								<a data-cid="${channelList['qlc']}"  > <a style="display: none;"
									href="qlc/c_detail-38.html">
										<div class="pic">
											<img
												data-src="./upload/web_class/2016-09-28/d58a6872730078f6e1715f81d872e4af4.png"
												alt="七乐彩结果">
										</div>
								</a> <span class="kaij-name">七乐彩</span> <span
									class="padding0 lottery_stage">第2017103期 </span>
							</div>
							<div class="item fr">
								<a class="color-orange" href="#">预测</a> <a
									class="color-orange" href="#">技巧</a> <a
									class="color-orange" href="#">走势</a>
			
							</div>
							<div class="clearfix">
								<a  class="lottery_number"> <i
									class="red-spot">04</i> <i class="red-spot">09</i> <i
									class="red-spot">14</i> <i class="red-spot">17</i> <i
									class="red-spot">22</i> <i class="red-spot">25</i> <i
									class="red-spot">29</i> <i class="blue-spot">11</i>
			
								</a> <i class="icon right idetails"></i>
							</div>
						</li>
						<li   onclick="selectall(4);">	
							<div class="fl" id="dlt" >
								<a data-cid="${channelList['dlt']}" > <a style="display: none;"
									href="dlt/c_detail-44.html">
										<div class="pic">
											<img
												data-src="./upload/web_class/2016-09-28/dee65f01ca24cbead0b08820d88c96ca5.png"
												alt="大乐透结果">
										</div>
								</a> <span class="kaij-name">大乐透</span> <span
									class="padding0 lottery_stage">第17103期 </span>
							</div>
							<div class="item fr">
								<a class="color-orange" href="#">预测</a> <a
									class="color-orange" href="#">荐号</a> <a
									class="color-orange" href="#">走势</a>
			
							</div>
							<div class="clearfix">
								<a  class="lottery_number"> <i
									class="red-spot">04</i> <i class="red-spot">19</i> <i
									class="red-spot">20</i> <i class="red-spot">24</i> <i
									class="red-spot">29</i> <i class="blue-spot">03</i> <i
									class="blue-spot">04</i>
			
								</a> <i class="icon right idetails"></i>
							</div>
						</li>	
						<li   onclick="selectall(5);">
							<div class="fl" id="pl3" >
								<a data-cid="${channelList['pl3']}" > <a style="display: none;"
									href="pl3/c_detail-52.html">
										<div class="pic">
											<img
												data-src="./upload/web_class/2016-09-28/60ec60c6f9bd87c53a8dfc0efa100b0a7.png"
												alt="排列三结果">
										</div>
								</a> <span class="kaij-name">排列三</span> <span
									class="padding0 lottery_stage">第17240期 </span>
							</div>
							<div class="item fr">
								<a class="color-orange" href="#">预测</a> <a
									class="color-orange" href="#">玄机</a> <a
									class="color-orange" href="#">走势</a>
			
							</div>
							<div class="clearfix">
								
								<a  class="lottery_number"> <i
									class="red-spot">5</i> <i class="red-spot">1</i> <i
									class="red-spot">7</i>
								</a> <i class="icon right idetails"></i>
								<p class="padding0 lottery_shiji"
									style="font-size:.12rem; display:inline-block;">
									第17240期 试机号: <i class="red-spot b9-spot">7</i><i
										class="red-spot b9-spot">4</i><i class="red-spot b9-spot">3</i>
								</p>
							</div>
						</li>
						<li   onclick="selectall(6);">
							<div class="fl" id="pl5" >
								<a data-cid="${channelList['pl5']}"  > <a style="display: none;"
									href="pl5/c_detail-57.html">
										<div class="pic">
											<img
												data-src="./upload/web_class/2016-09-19/42a804d6e6d9012e7b24ed5c5452348b2.png"
												alt="排列五结果">
										</div>
								</a> <span class="kaij-name">排列五</span> <span
									class="padding0 lottery_stage">第17240期 </span>
							</div>
							<div class="item fr">
								<a class="color-orange" href="#">预测</a> <a
									class="color-orange" href="#">技巧</a> <a
									class="color-orange" href="#">走势</a>
			
							</div>
							<div class="clearfix">
								
								<a  class="lottery_number"> <i
									class="red-spot">5</i> <i class="red-spot">1</i> <i
									class="red-spot">7</i> <i class="red-spot">0</i> <i
									class="red-spot">3</i>
								</a> <i class="icon right idetails"></i>
							</div>
						</li>
						<li   onclick="selectall(7);">	
							<div class="fl" id="qxc" >
								<a data-cid="${channelList['qxc']}" > <a style="display: none;"
									href="qxc/c_detail-64.html">
										<div class="pic">
											<img
												data-src="./upload/web_class/2016-09-19/efce162980a4af2a729ef95f9147925a0.png"
												alt="七星彩结果">
										</div>
								</a> <span class="kaij-name">七星彩</span> <span
									class="padding0 lottery_stage">第17103期 </span>
							</div>
							<div class="item fr">
								<a class="color-orange" href="#">预测</a> <a
									class="color-orange" href="#">玄机</a> <a
									class="color-orange" href="#">走势</a>
			
							</div>
							<div class="clearfix">
								<a  class="lottery_number"> <i
									class="red-spot">7</i> <i class="red-spot">0</i> <i
									class="red-spot">6</i> <i class="red-spot">7</i> <i
									class="red-spot">2</i> <i class="red-spot">7</i> <i
									class="red-spot">4</i>
								</a> <i class="icon right idetails"></i>
							</div>	
						</li>	
							
					</ul>
				</li>
				
				
				
				<li class="tab_con">
					<ul>
						<li onclick="selectall();">
								<div class="fl">
								<a style="display: none;" href="#">
									<div class="pic">
										<img
											data-src="./upload/web_class/2016-09-22/b56f37ffd75dfb5c56d00988089ca3dd3.png"
											alt="重庆百变王牌结果">
									</div>
								</a> <span class="kaij-name">重庆百变王牌</span> <span
									class="padding0 lottery_stage">第2017012681期 </span>
							</div>
							<div class="item fr">
								<a class="color-orange" href="#">技巧</a>
			
							</div>
							<div class="clearfix liuhe">
								<a href="cqbbwp/c_detail-124.html" class="lottery_number"> <i
									class='red-spot'>11</i> <i class='red-spot'>06</i> <i
									class='red-spot'>08</i> <i class='red-spot'>09</i> <i
									class='red-spot'>10</i> <i class='red-spot'>07</i> <i
									class='blue-spot'>2</i>
			
								</a> <i class="icon right idetails"></i>
							</div>
						</li>
						<li onclick="selectall();">
								<div class="fl">
								<a style="display: none;" href="#">
									<div class="pic">
										<img
											data-src="./upload/web_class/2016-09-22/b56f37ffd75dfb5c56d00988089ca3dd3.png"
											alt="重庆百变王牌结果">
									</div>
								</a> <span class="kaij-name">重庆百变王牌</span> <span
									class="padding0 lottery_stage">第2017012681期 </span>
							</div>
							<div class="item fr">
								<a class="color-orange" href="#">技巧</a>
			
							</div>
							<div class="clearfix liuhe">
								<a href="cqbbwp/c_detail-124.html" class="lottery_number"> <i
									class='red-spot'>11</i> <i class='red-spot'>06</i> <i
									class='red-spot'>08</i> <i class='red-spot'>09</i> <i
									class='red-spot'>10</i> <i class='red-spot'>07</i> <i
									class='blue-spot'>2</i>
			
								</a> <i class="icon right idetails"></i>
							</div>
						</li>
						<li onclick="selectall();">
								<div class="fl">
								<a style="display: none;" href="#">
									<div class="pic">
										<img
											data-src="./upload/web_class/2016-09-22/b56f37ffd75dfb5c56d00988089ca3dd3.png"
											alt="重庆百变王牌结果">
									</div>
								</a> <span class="kaij-name">重庆百变王牌</span> <span
									class="padding0 lottery_stage">第2017012681期 </span>
							</div>
							<div class="item fr">
								<a class="color-orange" href="#">技巧</a>
			
							</div>
							<div class="clearfix liuhe">
								<a href="cqbbwp/c_detail-124.html" class="lottery_number"> <i
									class='red-spot'>11</i> <i class='red-spot'>06</i> <i
									class='red-spot'>08</i> <i class='red-spot'>09</i> <i
									class='red-spot'>10</i> <i class='red-spot'>07</i> <i
									class='blue-spot'>2</i>
			
								</a> <i class="icon right idetails"></i>
							</div>
						</li>
						<li onclick="selectall();">
								<div class="fl">
								<a style="display: none;" href="#">
									<div class="pic">
										<img
											data-src="./upload/web_class/2016-09-22/b56f37ffd75dfb5c56d00988089ca3dd3.png"
											alt="重庆百变王牌结果">
									</div>
								</a> <span class="kaij-name">重庆百变王牌</span> <span
									class="padding0 lottery_stage">第2017012681期 </span>
							</div>
							<div class="item fr">
								<a class="color-orange" href="#">技巧</a>
			
							</div>
							<div class="clearfix liuhe">
								<a href="cqbbwp/c_detail-124.html" class="lottery_number"> <i
									class='red-spot'>11</i> <i class='red-spot'>06</i> <i
									class='red-spot'>08</i> <i class='red-spot'>09</i> <i
									class='red-spot'>10</i> <i class='red-spot'>07</i> <i
									class='blue-spot'>2</i>
			
								</a> <i class="icon right idetails"></i>
							</div>
						</li>
						<li onclick="selectall();">
								<div class="fl">
								<a style="display: none;" href="#">
									<div class="pic">
										<img
											data-src="./upload/web_class/2016-09-22/b56f37ffd75dfb5c56d00988089ca3dd3.png"
											alt="重庆百变王牌结果">
									</div>
								</a> <span class="kaij-name">重庆百变王牌</span> <span
									class="padding0 lottery_stage">第2017012681期 </span>
							</div>
							<div class="item fr">
								<a class="color-orange" href="#">技巧</a>
			
							</div>
							<div class="clearfix liuhe">
								<a href="cqbbwp/c_detail-124.html" class="lottery_number"> <i
									class='red-spot'>11</i> <i class='red-spot'>06</i> <i
									class='red-spot'>08</i> <i class='red-spot'>09</i> <i
									class='red-spot'>10</i> <i class='red-spot'>07</i> <i
									class='blue-spot'>2</i>
			
								</a> <i class="icon right idetails"></i>
							</div>
						</li>
					</ul>
				</li>
					
				<li class="tab_con">
					<ul>
						<li onclick="selectall();">
								<div class="fl">
								<a style="display: none;" href="#">
									<div class="pic">
										<img
											data-src="./upload/web_class/2016-09-22/b56f37ffd75dfb5c56d00988089ca3dd3.png"
											alt="重庆百变王牌结果">
									</div>
								</a> <span class="kaij-name">重庆百变王牌</span> <span
									class="padding0 lottery_stage">第2017012681期 </span>
							</div>
							<div class="item fr">
								<a class="color-orange" href="#">技巧</a>
			
							</div>
							<div class="clearfix liuhe">
								<a href="cqbbwp/c_detail-124.html" class="lottery_number"> <i
									class='red-spot'>11</i> <i class='red-spot'>06</i> <i
									class='red-spot'>08</i> <i class='red-spot'>09</i> <i
									class='red-spot'>10</i> <i class='red-spot'>07</i> <i
									class='blue-spot'>2</i>
			
								</a> <i class="icon right idetails"></i>
							</div>
						</li>
						<li onclick="selectall();">
								<div class="fl">
								<a style="display: none;" href="#">
									<div class="pic">
										<img
											data-src="./upload/web_class/2016-09-22/b56f37ffd75dfb5c56d00988089ca3dd3.png"
											alt="重庆百变王牌结果">
									</div>
								</a> <span class="kaij-name">重庆百变王牌</span> <span
									class="padding0 lottery_stage">第2017012681期 </span>
							</div>
							<div class="item fr">
								<a class="color-orange" href="#">技巧</a>
			
							</div>
							<div class="clearfix liuhe">
								<a href="cqbbwp/c_detail-124.html" class="lottery_number"> <i
									class='red-spot'>11</i> <i class='red-spot'>06</i> <i
									class='red-spot'>08</i> <i class='red-spot'>09</i> <i
									class='red-spot'>10</i> <i class='red-spot'>07</i> <i
									class='blue-spot'>2</i>
			
								</a> <i class="icon right idetails"></i>
							</div>
						</li>
						<li onclick="selectall();">
								<div class="fl">
								<a style="display: none;" href="#">
									<div class="pic">
										<img
											data-src="./upload/web_class/2016-09-22/b56f37ffd75dfb5c56d00988089ca3dd3.png"
											alt="重庆百变王牌结果">
									</div>
								</a> <span class="kaij-name">重庆百变王牌</span> <span
									class="padding0 lottery_stage">第2017012681期 </span>
							</div>
							<div class="item fr">
								<a class="color-orange" href="#">技巧</a>
			
							</div>
							<div class="clearfix liuhe">
								<a href="cqbbwp/c_detail-124.html" class="lottery_number"> <i
									class='red-spot'>11</i> <i class='red-spot'>06</i> <i
									class='red-spot'>08</i> <i class='red-spot'>09</i> <i
									class='red-spot'>10</i> <i class='red-spot'>07</i> <i
									class='blue-spot'>2</i>
			
								</a> <i class="icon right idetails"></i>
							</div>
						</li>
						<li onclick="selectall();">
								<div class="fl">
								<a style="display: none;" href="#">
									<div class="pic">
										<img
											data-src="./upload/web_class/2016-09-22/b56f37ffd75dfb5c56d00988089ca3dd3.png"
											alt="重庆百变王牌结果">
									</div>
								</a> <span class="kaij-name">重庆百变王牌</span> <span
									class="padding0 lottery_stage">第2017012681期 </span>
							</div>
							<div class="item fr">
								<a class="color-orange" href="#">技巧</a>
			
							</div>
							<div class="clearfix liuhe">
								<a href="cqbbwp/c_detail-124.html" class="lottery_number"> <i
									class='red-spot'>11</i> <i class='red-spot'>06</i> <i
									class='red-spot'>08</i> <i class='red-spot'>09</i> <i
									class='red-spot'>10</i> <i class='red-spot'>07</i> <i
									class='blue-spot'>2</i>
			
								</a> <i class="icon right idetails"></i>
							</div>
						</li>
					</ul>
				</li>
				<li class="tab_con">
					<ul>
						<li onclick="selectall();">
							<div class="fl">
								<a style="display: none;" href="#">
									<div class="pic">
										<img
											data-src="./upload/web_class/2016-09-22/b56f37ffd75dfb5c56d00988089ca3dd3.png"
											alt="重庆百变王牌结果">
									</div>
								</a> <span class="kaij-name">重庆百变王牌</span> <span
									class="padding0 lottery_stage">第2017012681期 </span>
							</div>
							<div class="item fr">
								<a class="color-orange" href="#">技巧</a>
			
							</div>
							<div class="clearfix liuhe">
								<a href="cqbbwp/c_detail-124.html" class="lottery_number"> <i
									class='red-spot'>11</i> <i class='red-spot'>06</i> <i
									class='red-spot'>08</i> <i class='red-spot'>09</i> <i
									class='red-spot'>10</i> <i class='red-spot'>07</i> <i
									class='blue-spot'>2</i>
			
								</a> <i class="icon right idetails"></i>
							</div>
						</li>
						<li onclick="selectall();">
								<div class="fl">
								<a style="display: none;" href="#">
									<div class="pic">
										<img
											data-src="./upload/web_class/2016-09-22/b56f37ffd75dfb5c56d00988089ca3dd3.png"
											alt="重庆百变王牌结果">
									</div>
								</a> <span class="kaij-name">重庆百变王牌</span> <span
									class="padding0 lottery_stage">第2017012681期 </span>
							</div>
							<div class="item fr">
								<a class="color-orange" href="#">技巧</a>
			
							</div>
							<div class="clearfix liuhe">
								<a href="cqbbwp/c_detail-124.html" class="lottery_number"> <i
									class='red-spot'>11</i> <i class='red-spot'>06</i> <i
									class='red-spot'>08</i> <i class='red-spot'>09</i> <i
									class='red-spot'>10</i> <i class='red-spot'>07</i> <i
									class='blue-spot'>2</i>
			
								</a> <i class="icon right idetails"></i>
							</div>
						</li>
						<li onclick="selectall();">
								<div class="fl">
								<a style="display: none;" href="#">
									<div class="pic">
										<img
											data-src="./upload/web_class/2016-09-22/b56f37ffd75dfb5c56d00988089ca3dd3.png"
											alt="重庆百变王牌结果">
									</div>
								</a> <span class="kaij-name">重庆百变王牌</span> <span
									class="padding0 lottery_stage">第2017012681期 </span>
							</div>
							<div class="item fr">
								<a class="color-orange" href="#">技巧</a>
			
							</div>
							<div class="clearfix liuhe">
								<a href="cqbbwp/c_detail-124.html" class="lottery_number"> <i
									class='red-spot'>11</i> <i class='red-spot'>06</i> <i
									class='red-spot'>08</i> <i class='red-spot'>09</i> <i
									class='red-spot'>10</i> <i class='red-spot'>07</i> <i
									class='blue-spot'>2</i>
			
								</a> <i class="icon right idetails"></i>
							</div>
						</li>
						
					</ul>
				</li>	
			<!--  6c的地方先暂时注释
			 	<li class="tab_con">
					<ul>
						
					</ul>
				</li>
			 -->	
				
				
				
				
				
 				
 			</ul>
 		</div>
	

	<footer id="footer">
		<div class="f-download">
			<a id="andriod" href="http://c8.cn/go/anzhuo" style="display: block;">安卓客户端</a>
			<a id="ios"
				href="https://itunes.apple.com/cn/app/%E4%B8%87%E5%BD%A9%E5%90%A7/id1078869616?mt=8"
				style="display: block;">IOS客户端</a>
		</div>

		<p>
			<a href="/"> 首页</a> | <a href="#">广告合作</a> | <a href="#">回顶部↑</a><br>
			© 2001-2015 深圳市球讯网络科技有限公司<br> 版权所有 粤ICP备14066812号-1<br>

		</p>
	</footer>

	<div class="guide-bottom"
		style="position: fixed;width: 100%;bottom: -60px;height: 60px; line-height:60px;background: rgba(0,0,0,.7);left: 0;z-index: 999;">
		<a class="guidea" href="http://c8.cn/go/anzhuo"
			style=" display: block; color: #fff;"><img
			src="/img/appicon80.png"
			style="width: 40px;height: 40px;display: block; float: left; margin: 10px;">万彩吧新版客户端，点击下载!</a>
		<div class="guide-clsoe colse icon"
			style="position: absolute; right: 0; top:20px; width: 30px; height: 30px;  "></div>
	</div>
	
		<script type="text/javascript">
		    $(function(){
		      $.jqtab = function(tab_title,tab_conbox,event,title_style){
		        $(tab_conbox).find(".tab_con").hide();//先隐藏掉所有的内容
		        $(tab_title).find("li:first").addClass(title_style).show();//给第一个titel切换按钮加上样式
		        $(tab_conbox).find(".tab_con:first").show();//内容的第一个显示出来

		        //开始执行事件
		        $(tab_title).find("li").bind(event,function(){//绑定一个自定义事件并执行
		          $(this).addClass(title_style).siblings("li").removeClass(title_style);
		          var activeindex = $(tab_title).find("li").index(this);//拿到当前的索引
		          $(tab_conbox).children().eq(activeindex).show().siblings().hide();//内容部分根据索引匹配对应的内容
		          return false;
		        });
		      };

		      //开始调用
		      $.jqtab("#tabs","#tab_conbox","click","thistab");//调用方法(title部分ul的id,内容部分ul的id,执行的事件,title的切换样式)
		    });
			
		
	 	function selectall(int){
			
			//频道id
 			var ssq = $("#ssq").find("a").data("cid");
			var fc3d = $("#fc3d").find("a").data("cid");
			var qlc = $("#qlc").find("a").data("cid");
 			var dlt = $("#dlt").find("a").data("cid");
 			var pl3 = $("#pl3").find("a").data("cid");
 			var pl5 = $("#pl5").find("a").data("cid");
 			var qxc = $("#qxc").find("a").data("cid");
			
			//alert(${channelList['6c']});
			
			//加载首页频道list
			
 		if (int == 1) {
 			$.ajax({
				type:"post",
				url:webPath+"/content/conlists/"+ssq,
				success:function(data){
					window.location.href=webPath+"/content/conlists/"+ssq;
				}
			});
			
 			} else if (int == 2) {
 				$.ajax({
 					type:"post",
 					url:webPath+"/content/conlists/"+fc3d,
 					success:function(data){
 						window.location.href=webPath+"/content/conlists/"+fc3d;
 					}
 				});
 			} else if (int == 3) {
 				$.ajax({
 					type:"post",
 					url:webPath+"/content/conlists/"+qlc,
 					success:function(data){
 						window.location.href=webPath+"/content/conlists/"+qlc;
 					}
 				});
 			}else if(int ==4){
 				$.ajax({
 					type:"post",
 					url:webPath+"/content/conlists/"+dlt,
 					success:function(data){
 						window.location.href=webPath+"/content/conlists/"+dlt;
 					}
 				});
 			} else if (int == 5) {
 				$.ajax({
 					type:"post",
 					url:webPath+"/content/conlists/"+pl3,
 					success:function(data){
 						window.location.href=webPath+"/content/conlists/"+pl3;
 					}
 				});
 			} else if (int == 6) {
 				$.ajax({
 					type:"post",
 					url:webPath+"/content/conlists/"+pl5,
 					success:function(data){
 						window.location.href=webPath+"/content/conlists/"+pl5;
 					}
 				});
 			} else if (int == 7) {
 				$.ajax({
 					type:"post",
 					url:webPath+"/content/conlists/"+qxc,
 					success:function(data){
 						window.location.href=webPath+"/content/conlists/"+qxc;
 					}
 				});
			} 
 		
		};
	</script>

</body>
</html>