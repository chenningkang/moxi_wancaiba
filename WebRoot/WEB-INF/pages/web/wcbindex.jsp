<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	trimDirectiveWhitespaces="true"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE HTML>


<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,width=device-width,user-scalable=no,minimal-ui">
<meta name="baidu_union_verify"
content="497535482027a87febb04a14fb67a2e1">
<meta content="yes" name="apple-mobile-web-app-capable">
<meta content="yes" name="apple-touch-fullscreen">
<meta content="black" name="apple-mobile-web-app-status-bar-style">
<meta content="telephone=no, email=no" name="format-detection">
<meta content="no" name="wap-font-scale">

<%@include file="/common/common.jsp" %>
<title>魔曦_万彩吧</title>
<meta name="keywords" content="魔曦_万彩吧">
<meta name="description"
	content="魔曦_万彩吧">
<link href="/css/base.css?v=20170317" rel="stylesheet" />
<link rel="stylesheet" href="/resources/css/wancaiba/home.css"/>
<link rel="stylesheet" href="/resources/css/wancaiba/wancaibamain.css"/>   <!-- 这个地方就是引入css的样式 -->
<script src="/resources/js/sectioncate/jquery-1.9.1.min.js"></script>
</head>

<body>

	<meta name="_token" content="hP2tvqLqrsHojVOA5LE2YWZ6dybsXJdeoPPBpxrq" />
	<header class="header">
		<h1>
			<img class="logoh1" alt="魔曦吧"
				onclick="javascript:window.navigate(location)"
				src="/resources/images/logo/moxitu.png">
		</h1>
		<div class="right">
			<!-- <a href="/fm"><i class="icon iuser"></i></a> -->
			<a href="login.jsp"><i><img src="/resources/images/banner/kaijiang.png" alt=""></i></a>
		</div>
	</header>

	<div class="i_nav dn">
		<a href="/kj">开奖</a> <a href="/fc3d/column-23.html">福彩3d</a> <a
			href="/ssq/column-1.html">双色球</a> <a href="/qxc/column-58.html">七星彩</a>
		<a href="http://bbs.c8.cn">社区</a> <a href="/jc">竞彩</a> <a
			href="/pl3/column-45.html">排列三</a> <a href="/dlt/column-39.html">大乐透</a>
		<a href="/zst">走势图</a> <a href="/xj">图库</a> <a
			href="/bjpk10/c_detail-79.html">pk10</a> <a href="/ssc">时时彩</a> <a
			href="/gpc">高频彩</a> <a href="/chatroom">聊天室</a> <a href="/yc">预测</a>
	</div>

	<section id="banner" class="home-banner">
		<ul class="banner-box">
			<!-- <li><a href="http://bbs.c8.cn/"><img -->
			<li><a href="bannerList.jsp"><img
					src="/resources/images/logo/bannermain.jpg"
					alt="万彩吧祝广大用户新年快乐"></a></li>
		</ul>
	</section>

	<nav id="nav">
		<ul>
			<li><a href="kjquanguocai.jsp"><i><img
						src="/resources/images/banner/kaijiang.png"
						alt=""></i><span style="">开奖</span></a></li>
			<li><a href="login.jsp"><i><img
						src="/resources/images/banner/liaoshi.png"
						alt=""></i><span style="">聊室</span></a></li>
			<li><a href="zoushitu.jsp"><i><img
						src="/resources/images/banner/zoushitu.png"
						alt=""></i><span style="">走势图</span></a></li>
			<li><a href="bannerList.jsp"><i><img
						src="/resources/images/banner/shequ.png"
						alt=""></i><span style="">社区</span></a></li>
			<li><a href="#"><i><img
						src="/resources/images/banner/appxiazai.png"
						alt=""></i><span style="">app下载</span></a></li>
			<li style="display:none"><a href="#"><i><img
						src="images/nav-mover.png"></i><span style="color:#eb0c3c">更多</span></a>
			</li>
		</ul>
	</nav>

	<!-- 公告 -->
	<div class="notice">
		<div class="notice_box">
			<ul class="notice_list" id="notice_list">
				<li><a href="http://bbs.c8.cn/post/276789">彩票计划请加微信号：waicaiba222
						获取</a></li>
			</ul>
		</div>
	</div>

	<a class="showpic-1" href="http://123v.cc/?id=c8" target="_blank">赢彩娱乐:全网赔率最高,快速彩票全天开</a>
	<a class="showpic-1" href="https://2535.cc/?id=c8" target="_blank">福彩3d,七星彩,时时彩,100万提款秒到账</a>
	<a class="showpic-1" href="https://88l2.cc/?id=c8" target="_blank">3d,时时彩,pk10,七星彩,送8888元试玩</a>

	<ul class="lottery-hot">
		<li class="lottoLine"> 
			<a data-cid="${channelList['fc3d']}" href="/web/content/conlists/${channelList['fc3d']}" target="_blank">	 
				<div class="lh-block" >   <!--onclick="selectall(2);"  -->
					<div class="lh-pic">
						<img src="/resources/images/banner/3d.png">
					</div>
					<div class="lh-dl" id="fucai3d">
						 <h3 class="lh-name">福彩3d</h3>
						 <p class="lh-info">每天21:15开奖</p>
					</div>
				</div>
			</a>
		</li>
		    
		<li>
			<a data-cid="${channelList['ssq']}" href="/web/content/conlists/${channelList['ssq']}" target="_blank">	
				<div class="lh-block"  >
					<div class="lh-pic">
						<img src="/resources/images/banner/ssq.png">
					</div>
					<div class="lh-dl" id="ssq">
						<h3 class="lh-name">双色球</h3>
						<p class="lh-info">周二,四,日开奖</p>
					</div>
				</div>
			</a>
		</li>

		<li class="lottoLine">
			<a data-cid="${channelList['qxc']}" href="/web/content/conlists/${channelList['qxc']}" target="_blank">	
				<div class="lh-block" >
					<div class="lh-pic">
						<img src="/resources/images/banner/qxc.png">
					</div>
					<div class="lh-dl" id="qxc">
						<h3 class="lh-name">七星彩</h3>
						<p class="lh-info">周二,五,日开奖</p>
					</div>
				</div>
			</a>
		</li>

		<li>
			<a data-cid="${channelList['dlt']}" href="/web/content/conlists/${channelList['dlt']}" target="_blank">	
				<div class="lh-block" >
					<div class="lh-pic">
						<img src="/resources/images/banner/dlt.png">
					</div>
					<div class="lh-dl" id="dlt">
						<h3 class="lh-name">大乐透</h3>
						<p class="lh-info">周一,三,六开奖</p>
					</div>
				</div>
			</a>
		</li>

		<li class="lottoLine">
			<a data-cid="${channelList['pl3']}" href="/web/content/conlists/${channelList['pl3']}" target="_blank">	
				<div class="lh-block" >
					<div class="lh-pic">
						<img src="/resources/images/banner/pls.png">
					</div>
					<div class="lh-dl" id="pl3">
						<h3 class="lh-name">排列三</h3>
						<p class="lh-info">每天20:30开奖</p>
					</div>
				</div>
			</a>
		</li>

		<li class="lottoLine">
			<a data-cid="${channelList['pl5']}" href="/web/content/conlists/${channelList['pl5']}" target="_blank">	
				<div class="lh-block" >
					<div class="lh-pic">
						<img src="/resources/images/banner/plw.png">
					</div>
					<div class="lh-dl" id="pl5">
						<h3 class="lh-name">排列五</h3>
						<p class="lh-info">每天20:30开奖</p>
					</div>
				</div>
			</a>
		</li>

		<li>
			<a data-cid="${channelList['qlc']}" href="/web/content/conlists/${channelList['qlc']}" target="_blank">	
				<div class="lh-block" onclick="selectall(8);">
					<div class="lh-pic" >
						<img src="/resources/images/banner/qlc.png">
					</div>
					<div class="lh-dl" id="qlc">
						<h3 class="lh-name">七乐彩</h3>
						<p class="lh-info">周一,三,五开奖</p>
					</div>
				</div>
			</a>
		</li>
		<li class="lottoLine">
			<a data-cid="${channelList['6c']}" href="/web/content/conlists/${channelList['6c']}" target="_blank">	
				<div class="lh-block" onclick="selectall(9);">
					<div class="lh-pic">
						<img src="/resources/images/banner/lhc1.png">
					</div>
					<div class="lh-dl" id="6c">
						<h3 class="lh-name">6彩</h3>
						<p class="lh-info">周二,四,六开奖</p>
					</div>
				</div>
			</a>
		</li>
	</ul>

	<div class="lottery-wrap">
		<h1 class="lw-title lw-title1">
			高频彩：<span class="lottery-activity">每5或10分钟1期</span> <a href="#"
				class="more">更多</a>
		</h1>
		<ul class="oh">
			<li><a href="gaopingcai.jsp">重庆时时彩</a></li>
			<li><a href="gaopingcai.jsp">天津时时彩</a></li>
			<li><a href="gaopingcai.jsp">北京赛车</a></li>

			<li><a href="gaopingcai.jsp">广西快三</a></li>
			<li><a href="gaopingcai.jsp">江苏快三</a></li>
			<li><a href="gaopingcai.jsp">幸运农场</a></li>

			<li><a href="gaopingcai.jsp">广东11选5</a></li>
			<li><a href="gaopingcai.jsp">江西11选5</a></li>
			<li><a href="gaopingcai.jsp">粤快乐10分</a></li>
		</ul>
	</div>

	<div class="lottery-wrap">
		<h1 class="lw-title lw-title2">
			竞技彩：<span class="lottery-activity">项目丰富，玩法简单</span> <a href="#"
				class="more">更多</a>
		</h1>
		<ul class="oh">
			<li><a href="gaopingcai.jsp">六场半全场</a></li>
			<li><a href="gaopingcai.jsp">四场进球彩</a></li>
			<li><a href="gaopingcai.jsp">胜负彩任九</a></li>
		</ul>
	</div>

	<div class="lottery-wrap">
		<h1 class="lw-title lw-title3">
			地方彩：<span class="lottery-activity">地方特色，简单易中</span> <a href="#"
				class="more">更多</a>
		</h1>
		<ul class="oh">
			<li><a href="gaopingcai.jsp">深圳风采</a></li>
			<li><a href="gaopingcai.jsp">浙江20选5 </a></li>
			<li><a href="gaopingcai.jsp">粤36选7 </a></li>
			<li><a href="gaopingcai.jsp">安徽福25选5</a></li>
			<li><a href="gaopingcai.jsp">新疆25选7</a></li>
			<li><a href="gaopingcai.jsp">6彩</a></li>
		</ul>
	</div>

	<section class="kaij dn">
		<div class="title" id="kaijnav">
			<a class="kj   on  " key='1' href="/qgkj">全国彩</a> <a class='kj '
				key='2' href="/dfkj">地方彩</a><a class='kj ' key='3' href="/gpkj">高频彩</a>
			<a class='kj ' key='4' href="/zckj">竞彩</a> <a class='kj'
				href="/hk6/202.html">6彩</a>
		</div>
		<ul class="kaij-ul on">
			<li class="li-wrap"
				onclick="javascript:window.location.href='ssq/column-1.html'"
				id="kj_8">
				<div class="fl">
					<a href="ssq/column-1.html"> <a style="display: none;"
						href="ssq/c_detail-8.html">
							<div class="pic">
								<img
									data-src="./upload/web_class/2016-09-14/4d5e1a33e4666c11c42e3ab00a98f0352.png"
									alt="双色球结果">
							</div>
					</a> <span class="kaij-name">双色球</span> <span
						class="padding0 lottery_stage">第2017103期 </span>
				</div>
				<div class="item fr">
					<a class="color-orange" href="ssqyc/category-17.html">预测</a> <a
						class="color-orange" href="ssqxj/category-19.html">玄机</a> <a
						class="color-orange" href="ssqzs/category-22.html">走势</a>

				</div>
				<div class="clearfix">
					<!-- <a href="kj/1277.html"> -->
					<a href="ssq/column-1.html" class="lottery_number"> <i
						class="red-spot">01</i> <i class="red-spot">21</i> <i
						class="red-spot">23</i> <i class="red-spot">25</i> <i
						class="red-spot">31</i> <i class="red-spot">33</i> <i
						class="blue-spot">01</i>

					</a> <i class="icon right idetails"></i>
				</div>
			</li>
			<li class="li-wrap"
				onclick="javascript:window.location.href='fc3d/column-23.html'"
				id="kj_11">
				<div class="fl">
					<a href="fc3d/column-23.html"> <a style="display: none;"
						href="fc3d/c_detail-11.html">
							<div class="pic">
								<img
									data-src="./upload/web_class/2016-09-18/843eb9742852623f2fd810fb416490b65.png"
									alt="福彩3D结果">
							</div>
					</a> <span class="kaij-name">福彩3D</span> <span
						class="padding0 lottery_stage">第2017239期 </span>
				</div>
				<div class="item fr">
					<a class="color-orange" href="fc3dyc/category-24.html">预测</a> <a
						class="color-orange" href="fc3dxj/category-25.html">玄机</a> <a
						class="color-orange" href="fc3dzs/category-30.html">走势</a>

				</div>
				<div class="clearfix">
					<!-- <a href="kj/1275.html"> -->
					<a href="fc3d/column-23.html" class="lottery_number"> <i
						class="red-spot">3</i> <i class="red-spot">8</i> <i
						class="red-spot">9</i>
					</a> <i class="icon right idetails"></i>
					<p class="padding0 lottery_shiji"
						style="font-size:.12rem; display:inline-block; vertical-align: baseline;">
						第2017239期 试机号: <i class="red-spot b9-spot">9</i><i
							class="red-spot b9-spot">2</i><i class="red-spot b9-spot">7</i>
					</p>
				</div>
			</li>
			<li class="li-wrap"
				onclick="javascript:window.location.href='qlc/column-31.html'"
				id="kj_38">
				<div class="fl">
					<a href="qlc/column-31.html"> <a style="display: none;"
						href="qlc/c_detail-38.html">
							<div class="pic">
								<img
									data-src="./upload/web_class/2016-09-28/d58a6872730078f6e1715f81d872e4af4.png"
									alt="七乐彩结果">
							</div>
					</a> <span class="kaij-name">七乐彩</span> <span
						class="padding0 lottery_stage">第2017102期 </span>
				</div>
				<div class="item fr">
					<a class="color-orange" href="qlcyc/category-35.html">预测</a> <a
						class="color-orange" href="qlcjq/category-36.html">技巧</a> <a
						class="color-orange" href="qlczs/category-37.html">走势</a>

				</div>
				<div class="clearfix">
					<!-- <a href="kj/1278.html"> -->
					<a href="qlc/column-31.html" class="lottery_number"> <i
						class="red-spot">12</i> <i class="red-spot">17</i> <i
						class="red-spot">18</i> <i class="red-spot">23</i> <i
						class="red-spot">24</i> <i class="red-spot">25</i> <i
						class="red-spot">29</i> <i class="blue-spot">03</i>

					</a> <i class="icon right idetails"></i>
				</div>
			</li>
			<li class="li-wrap"
				onclick="javascript:window.location.href='dlt/column-39.html'"
				id="kj_44">
				<div class="fl">
					<a href="dlt/column-39.html"> <a style="display: none;"
						href="dlt/c_detail-44.html">
							<div class="pic">
								<img
									data-src="./upload/web_class/2016-09-28/dee65f01ca24cbead0b08820d88c96ca5.png"
									alt="大乐透结果">
							</div>
					</a> <span class="kaij-name">大乐透</span> <span
						class="padding0 lottery_stage">第17102期 </span>
				</div>
				<div class="item fr">
					<a class="color-orange" href="dltyc/category-40.html">预测</a> <a
						class="color-orange" href="dltjh/category-41.html">荐号</a> <a
						class="color-orange" href="dltzs/category-43.html">走势</a>

				</div>
				<div class="clearfix">
					<!-- <a href="kj/1279.html"> -->
					<a href="dlt/column-39.html" class="lottery_number"> <i
						class="red-spot">01</i> <i class="red-spot">12</i> <i
						class="red-spot">23</i> <i class="red-spot">24</i> <i
						class="red-spot">29</i> <i class="blue-spot">08</i> <i
						class="blue-spot">12</i>

					</a> <i class="icon right idetails"></i>
				</div>
			</li>
			<li class="li-wrap"
				onclick="javascript:window.location.href='pl3/column-45.html'"
				id="kj_52">
				<div class="fl">
					<a href="pl3/column-45.html"> <a style="display: none;"
						href="pl3/c_detail-52.html">
							<div class="pic">
								<img
									data-src="./upload/web_class/2016-09-28/60ec60c6f9bd87c53a8dfc0efa100b0a7.png"
									alt="排列三结果">
							</div>
					</a> <span class="kaij-name">排列三</span> <span
						class="padding0 lottery_stage">第17239期 </span>
				</div>
				<div class="item fr">
					<a class="color-orange" href="pl3yc/category-46.html">预测</a> <a
						class="color-orange" href="pl3xj/category-47.html">玄机</a> <a
						class="color-orange" href="pl3zs/category-51.html">走势</a>

				</div>
				<div class="clearfix">
					<!-- <a href="kj/1280.html"> -->
					<a href="pl3/column-45.html" class="lottery_number"> <i
						class="red-spot">6</i> <i class="red-spot">0</i> <i
						class="red-spot">5</i>
					</a> <i class="icon right idetails"></i>
					<p class="padding0 lottery_shiji"
						style="font-size:.12rem; display:inline-block; vertical-align: baseline;">
						第17239期 试机号: <i class="red-spot b9-spot">3</i><i
							class="red-spot b9-spot">1</i><i class="red-spot b9-spot">7</i>
					</p>
				</div>
			</li>
			<li class="li-wrap"
				onclick="javascript:window.location.href='pl5/column-53.html'"
				id="kj_57">
				<div class="fl">
					<a href="pl5/column-53.html"> <a style="display: none;"
						href="pl5/c_detail-57.html">
							<div class="pic">
								<img
									data-src="./upload/web_class/2016-09-19/42a804d6e6d9012e7b24ed5c5452348b2.png"
									alt="排列五结果">
							</div>
					</a> <span class="kaij-name">排列五</span> <span
						class="padding0 lottery_stage">第17239期 </span>
				</div>
				<div class="item fr">
					<a class="color-orange" href="pl5yc/category-54.html">预测</a> <a
						class="color-orange" href="pl5jq/category-55.html">技巧</a> <a
						class="color-orange" href="pl5zs/category-56.html">走势</a>

				</div>
				<div class="clearfix">
					<!-- <a href="kj/1281.html"> -->
					<a href="pl5/column-53.html" class="lottery_number"> <i
						class="red-spot">6</i> <i class="red-spot">0</i> <i
						class="red-spot">5</i> <i class="red-spot">8</i> <i
						class="red-spot">0</i>
					</a> <i class="icon right idetails"></i>
				</div>
			</li>
			<li class="li-wrap"
				onclick="javascript:window.location.href='qxc/column-58.html'"
				id="kj_64">
				<div class="fl">
					<a href="qxc/column-58.html"> <a style="display: none;"
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
					<a class="color-orange" href="qxcyc/category-59.html">预测</a> <a
						class="color-orange" href="qxcxj/category-60.html">玄机</a> <a
						class="color-orange" href="qxczs/category-63.html">走势</a>

				</div>
				<div class="clearfix">
					<!-- <a href="kj/1282.html"> -->
					<a href="qxc/column-58.html" class="lottery_number"> <i
						class="red-spot">7</i> <i class="red-spot">0</i> <i
						class="red-spot">6</i> <i class="red-spot">7</i> <i
						class="red-spot">2</i> <i class="red-spot">7</i> <i
						class="red-spot">4</i>
					</a> <i class="icon right idetails"></i>
				</div>
			</li>
		</ul>
	</section>

	<section class="hot-caiz" style="display:none;">
		<div class="title">
			高频彩<a href="" class="mover right "><span>更多</span><i
				class="icon idetails"></i></a>
		</div>
		<ul class="hot-caiz-ul mui-flex2">

		</ul>
	</section>

	<section style="display:none;">
		<div class="title">
			低频彩<a href="" class="mover right"><span>更多</span><i
				class="icon idetails"></i></a>
		</div>
		<ul class="hot-caiz-ul mui-flex2">
			<li class="flex box"><a href="#">
					<div class="pic fl">
						<img src="images/mover.png">
					</div> <span>更多彩种</span>
			</a></li>
		</ul>
	</section>
	<a class="showpic-1" href="http://e666.cc/?id=c8" target="_blank">PK10,时时彩9.85倍,全新代理,天天结算</a>
	<a class="showpic-1" href="http://t999.cc/?id=c8" target="_blank">大发彩票:入款送1%,天天返水0.3%(信誉好)</a>
	<a class="showpic-1" href="https://dd66.cc" target="_blank">VIP彩世界-提款1分钟,日返水,大客户首选</a>
	
	<section class="news">
		<div class="title"  id="wcbnews">
			<span>彩票新闻</span>	
			<p><a  href="/web/news/more" target="_blank"   class="mover right">更多..</a></p>
		</div>
		<ul id="wcblistnews"  class="news-ul">
			
		</ul>		
	</section>

	<footer id="footer">
		<div class="f-download">
			<a id="andriod" href="http://www.c8.cn/go/smanzhuo"
				style="display: block;">安卓客户端</a> <a id="ios"
				href="https://itunes.apple.com/cn/app/%E4%B8%87%E5%BD%A9%E5%90%A7/id1078869616?mt=8"
				style="display: block;">IOS客户端</a>
		</div>
		</div>

		<p>
			<a href="/"> 首页</a> | <a href="#">广告合作</a> | <a href="#">回顶部↑</a><br>
			© 2017  上海市魔曦网络科技有限公司<br> 版权所有 粤ICP备14066812号-1<br>
			万彩吧提醒您：理性购彩，热心公益。未满18周岁的未成年人禁止购彩及兑奖！
		</p>
	</footer>

 	<div class="guide-bottom"
		style="position: fixed;width: 100%;bottom: -60px;height: 60px; line-height:60px;background: rgba(0,0,0,.7);left: 0;z-index: 999;">
		<a class="guidea" href="http://www.c8.cn/go/smanzhuo"
			style=" display: block; color: #fff;"><img
			src="/images/appicon80.png"
			style="width:100%;height: 40px;display: block; float: left; margin: 10px;">万彩吧新版客户端，点击下载!</a>
		<div class="guide-clsoe colse icon"
			style="position: absolute; right: 0; top:20px; width: 100%; height: 30px;  "></div>
	</div>


	
	<script type="text/javascript">
	/* 	function selectall(int){
			
			//频道id
			var fc3d = $("#fucai3d").find("a").data("cid");
 			var ssq = $("#ssq").find("a").data("cid");
 			var qxc = $("#qxc").find("a").data("cid");
 			var dlt = $("#dlt").find("a").data("cid");
 			var pl3 = $("#pl3").find("a").data("cid");
 			var pl5 = $("#pl5").find("a").data("cid");
 			var qlc = $("#qlc").find("a").data("cid");
 			var fc6c = $("#6c").find("a").data("cid");
			
			//加载首页频道list
			
 		if (int == 3) {
 			$.ajax({
				type:"post",
				url:webPath+"/content/conlists/"+ssq,
				success:function(data){
					window.location.href=webPath+"/content/conlists/"+ssq;
				}
			});
 			} 
		};
		 */
		
		//加载新闻列表
	  	$(function(){
	  		moxi_index_loads1(0,5,"#wcblistnews");
		
    	});
		
		
	</script>
	
	<script src="/js/base.js?v=2017"></script>
	<script src="/js/fontSize.js"></script>

	<script src="/js/kj.js"></script>
</body>
</html>