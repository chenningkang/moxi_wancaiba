<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>彩票圈-彩票技巧大全</title>
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
 </head>
	<!-- 引入通用的头部 -->
	<%@include file="/common/mobile/header.jsp" %>
	<!-- 当前所在位置 -->
	<div class="box">
		<div class="lc">
			<div class="location" >
				位置：<a href="/" target="_self">彩票圈</a> >> <a href="/m/cpjq" target="_self">彩票技巧</a>
			</div>
		</div>
	</div>


	<!-- 列表一览 -->
	<div class="box">
		<!-- 3D技巧 -->
		<div class="sc">
			<div class="lottery">
				<div class="title" id="3djiqiao">
					<span>3D技巧</span>
					<a class="more_detail" data-cid="${channelList['3djiqiao']}" href="/mobile/content/more/${channelList['3djiqiao']}" target="_blank">更多..</a>
				</div>
				<ul id="moxi3djiqiao">
				</ul>
			</div>
		</div>
		<!-- P3技巧 -->
		<div class="sc">
			<div class="lottery">
				<div class="title" id="p3jiqiao">
					<span>P3技巧</span>
					<a class="more_detail" data-cid="${channelList['p3jiqiao']}" href="/mobile/content/more/${channelList['p3jiqiao']}" target="_blank">更多..</a>
				</div>
				<ul id="moxip3jiqiao">
				</ul>
			</div>
		</div>
		<!-- 双色球技巧 -->
		<div class="sc">
			<div class="lottery">
				<div class="title" id="ssqjiqiao">
					<span>双色球技巧</span>
					<a class="more_detail" data-cid="${channelList['ssqjiqiao']}" href="/mobile/content/more/${channelList['ssqjiqiao']}" target="_blank">更多..</a>
				</div>
				<ul id="moxissqjiqiao">
				</ul>
			</div>
		</div>
		<!-- 大乐透技巧 -->
		<div class="sc">
			<div class="lottery">
				<div class="title" id="dltjiqiao">
					<span>大乐透技巧</span>
					<a class="more_detail" data-cid="${channelList['dltjiqiao']}" href="/mobile/content/more/${channelList['dltjiqiao']}" target="_blank">更多..</a>
				</div>
				<ul id="moxidltjiqiao">
				</ul>
			</div>
		</div>
		<!-- 七乐彩技巧 -->
		<div class="sc">
			<div class="lottery">
				<div class="title" id="qlcjiqiao">
					<span>七乐彩技巧</span>
					<a class="more_detail" data-cid="${channelList['qlcjiqiao']}" href="/mobile/content/more/${channelList['qlcjiqiao']}" target="_blank">更多..</a>
				</div>
				<ul id="moxiqlcjiqiao">
				</ul>
			</div>
		</div>
		<!-- 七星彩技巧-->
		<div class="sc">
			<div class="lottery">
				<div class="title" id="qxcjiqiao">
					<span>七星彩技巧</span>
					<a class="more_detail" data-cid="${channelList['qxcjiqiao']}" href="/mobile/content/more/${channelList['qxcjiqiao']}" target="_blank">更多..</a>
				</div>
				<ul id="moxiqxcjiqiao">
				</ul>
			</div>
		</div>
		
	</div>

	<!-- 引入通用的尾部 -->
	<%@include file="/common/mobile/footer.jsp" %>

	<script type="text/javascript">
	$(function(){
		var sdjiqiaoId = $("#3djiqiao").find("a").data("cid");
		var p3jiqiaoId = $("#p3jiqiao").find("a").data("cid");
		var ssqjiqiaoId = $("#ssqjiqiao").find("a").data("cid");
		var dltjiqiaoId = $("#dltjiqiao").find("a").data("cid");
		var qxcjiqiaoId = $("#qxcjiqiao").find("a").data("cid");
		var qlcjiqiaoId = $("#qlcjiqiao").find("a").data("cid");
		
		moxi_index_load(sdjiqiaoId,0,10,"#moxi3djiqiao");
		moxi_index_load(p3jiqiaoId,0,10,"#moxip3jiqiao");
		moxi_index_load(ssqjiqiaoId,0,10,"#moxissqjiqiao");
		moxi_index_load(dltjiqiaoId,0,10,"#moxidltjiqiao");
		moxi_index_load(qxcjiqiaoId,0,10,"#moxiqxcjiqiao");
		moxi_index_load(qlcjiqiaoId,0,10,"#moxiqlcjiqiao");
		
	});
	
	</script>
 </body>
</html>