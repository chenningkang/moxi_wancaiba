<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>彩票圈-首页</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
	<%@include file="/common/commonmobile.jsp" %>
	<style>
		@media screen and (min-width:460px){
			.sc{width:48%;float:left!important;margin-left:1%;margin-right:1%}
			.logotop .logolf{width:34%;}
			.logotop .logort{width:64%;}
			.logotop .zones li{width:100%}
		}
  	</style>
  	<!-- 开奖信息 -->
  	<script type="text/javascript" src="/resources/js/mx_kaijian_mobile.js"></script>
 </head>
 <body>
 	<!-- 引入通用头部 -->
 	<%@include file="/common/mobile/header.jsp" %>
 	
	<!-- 开奖公告区域 -->
	<div class="boxnofl">
		<div class="nav">
			<div class="title">
				<span>开奖公告</span>
			</div>
			<div class="fix"></div>
			<!-- 开奖结果 -->
			<div class="kjh">
				<table border="0" cellspacing="0" cellpadding="0" align="center">
					<!-- 福彩3D -->
					<tr id="fc3dresult"></tr>
					<!-- 体彩P3 -->
					<tr id="pl3result"></tr>
					<!-- 体彩P5 -->
					<tr id="pl5result"></tr>
					<!-- 双色球 -->
					<tr id="ssqresult"></tr>
					<!-- 大乐透 -->
					<tr id="dltresult"></tr>
					<!-- 七星彩 -->
					<tr id="qxcresult"></tr>
					<!-- 七乐彩 -->
					<tr id="qlcresult"></tr>
				</table>
			</div>
		</div>
	</div>
	<!-- 解太湖迷区域 -->
	<div class="box">
		<div class="sc">
			<div class="lottery">
				<div class="title" id="sdjietaihumi">
					<span>3D解太湖谜</span>
					<a class="more_detail" data-cid="${channelList['3djietaihumi']}" href="/mobile/content/more/${channelList['3djietaihumi']}" target="_blank">更多..</a>
				</div>
				<ul id="moxisdjietaihumi">
				</ul>
			</div>
		</div>
	</div>
	<!-- 福彩3D杀码 -->
	<div class="box">
		<div class="sc">
			<div class="lottery">
				<div class="title" id="sdshama">
					<span>福彩3D杀码</span>
					<a class="more_detail" data-cid="${channelList['3dshama']}" href="/mobile/content/more/${channelList['3dshama']}" target="_blank">更多..</a>
				</div>
				<ul id="moxisdshama"></ul>
			</div>
		</div>
	</div>
	<!-- 福彩3D胆码 -->
	<div class="box">
		<div class="sc">
			<div class="lottery">
				<div class="title" id="sddanma">
					<span>福彩3D胆码</span>
					<a class="more_detail" data-cid="${channelList['3ddanma']}" href="/mobile/content/more/${channelList['3ddanma']}" target="_blank">更多..</a>
				</div>
				<ul id="moxisddanma"></ul>
			</div>
		</div>
	</div>
	<!-- 体彩P3杀码 -->
	<div class="box">
		<div class="sc">
			<div class="lottery">
				<div class="title" id="p3shama">
					<span>体彩P3杀码</span>
					<a class="more_detail" data-cid="${channelList['p3shama']}" href="/mobile/content/more/${channelList['p3shama']}" target="_blank">更多..</a>
				</div>
				<ul id="moxip3shama"></ul>
			</div>
		</div>
	</div>
	<!-- 体彩P3胆码 -->
	<div class="box">
		<div class="sc">
			<div class="lottery">
				<div class="title" id="p3danma">
					<span>体彩P3胆码</span>
					<a class="more_detail" data-cid="${channelList['p3danma']}" href="/mobile/content/more/${channelList['p3danma']}" target="_blank">更多..</a>
				</div>
				<ul id="moxip3danma"></ul>
			</div>
		</div>
	</div>
	<!-- 双色球条件 -->
	<div class="box">
		<div class="sc">
			<div class="lottery">
				<div class="title" id="ssqtiaojian">
					<span>双色球条件</span>
					<a class="more_detail" data-cid="${channelList['ssqtiaojian']}" href="/mobile/content/more/${channelList['ssqtiaojian']}" target="_blank">更多..</a>
				</div>
				<ul id="moxissqtiaojian"></ul>
			</div>
		</div>
	</div>
	<!-- 双色球预测 -->
	<div class="box">
		<div class="sc">
			<div class="lottery">
				<div class="title" id="ssqyuce">
					<span>双色球预测</span>
					<a class="more_detail" data-cid="${channelList['ssqyuce']}" href="/mobile/content/more/${channelList['ssqyuce']}" target="_blank">更多..</a>
				</div>
				<ul id="moxissqyuce"></ul>
			</div>
		</div>
	</div>
	<!-- 大乐透 -->
	<div class="box">
		<div class="sc">
			<div class="lottery">
				<div class="title" id="dlt">
					<span>大乐透</span>
					<a class="more_detail" data-cid="${channelList['dltyuce']}" href="/m/dlt" target="_blank">更多..</a>
				</div>
				<ul id="moxidlt"></ul>
			</div>
		</div>
	</div>
	<!-- 七乐彩 -->
	<div class="box">
		<div class="sc">
			<div class="lottery">
				<div class="title" id="qlc">
					<span>七乐彩</span>
					<a class="more_detail" data-cid="${channelList['qlcyuce']}" href="/m/qlc" target="_blank">更多..</a>
				</div>
				<ul id="moxiqlc"></ul>
			</div>
		</div>
	</div>
	<!-- 七星彩 -->
	<div class="box">
		<div class="sc">
			<div class="lottery">
				<div class="title" id="qxc">
					<span>七星彩</span>
					<a class="more_detail" data-cid="${channelList['qxcyuce']}" href="/m/qxc" target="_blank">更多..</a>
				</div>
				<ul id="moxiqxc"></ul>
			</div>
		</div>
	</div>

	<!-- 引入通用底部 -->
 	<%@include file="/common/mobile/footer.jsp" %>



	<script type="text/javascript">
	$(function(){
		
		//首页banner自动播放
		autoBanner("#b_pic");
		//频道id
		var jietaihuId = $("#sdjietaihumi").find("a").data("cid");
		var sdshamaId = $("#sdshama").find("a").data("cid");
		var sddanmaId = $("#sddanma").find("a").data("cid");
		var p3shamaId = $("#p3shama").find("a").data("cid");
		var p3danmaId = $("#p3danma").find("a").data("cid");
		var ssqtiaojianId = $("#ssqtiaojian").find("a").data("cid");
		var ssqyuceId = $("#ssqyuce").find("a").data("cid");
		var dltId = $("#dlt").find("a").data("cid");
		var qlcId = $("#qlc").find("a").data("cid");
		var qxcId = $("#qxc").find("a").data("cid");
		
		
		//加载首页频道list
		moxi_index_load(jietaihuId,0,10,"#moxisdjietaihumi");
		moxi_index_load(sdshamaId,0,10,"#moxisdshama");
		moxi_index_load(sddanmaId,0,10,"#moxisddanma");
		moxi_index_load(p3shamaId,0,10,"#moxip3shama");
		moxi_index_load(p3danmaId,0,10,"#moxip3danma");
		moxi_index_load(ssqtiaojianId,0,10,"#moxissqtiaojian");
		moxi_index_load(ssqyuceId,0,10,"#moxissqyuce");
		moxi_index_load(dltId,0,10,"#moxidlt");
		moxi_index_load(qlcId,0,10,"#moxiqlc");
		moxi_index_load(qxcId,0,10,"#moxiqxc");
		
		
	});
		
	</script>
 </body>
</html>