<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@include file="/common/taglib.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>彩票圈-体彩七星彩开奖综合</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<%@include file="/common/common.jsp" %>
	<style>
		.title{width: 308px;float: left;line-height: 27px;}
  	</style>
 </head>
 <body>
 	<!-- 引入通用的头部 -->
	<%@include file="/common/web/header.jsp" %>

	<!-- 当前所在位置 -->
	<div class="fix"></div>
	<div class="box">
		<div class="location">
			<div class="left">
				您现在的位置：<a href="/" target="_self">彩票圈</a> >> <a href="/qxc" target="_self">七星彩</a>
			</div>
		</div>
	</div>

	<!-- 列表一览 -->
	<div class="fix"></div>
	<div class="box">
		<div class="chan">
			<div class="left">
				<div class="list1">
					<ol class="kjinfo qxc" id="qxckj" style="height:90px">
					</ol>
				</div>
				<div class="list2">
				    <div class="title" id="qxcyuce">
				       <span>七星彩预测</span>
						<span class="more"><a data-cid="${channelList['qxcyuce']}"
							href="/web/content/more/${channelList['qxcyuce']}" target="_blank">更多..</a></span>
					</div>
					<ul id="moxiqxcyuce"></ul>
				</div>
				<div class="list2" style="float:right;">
					<div class="title" id="qxctumi">
						<span>七星彩图谜</span><span class="more"><a data-cid="${channelList['qxctumi']}"
							href="/web/content/more/${channelList['qxctumi']}" target="_blank">更多..</a></span>
					</div>
					<ul id="moxiqxctumi"></ul>
				</div>
				<div class="fix"></div>
				<div class="list2">
					<div class="title" id="qxcshahao">
						<span>七星彩杀号</span><span class="more"><a data-cid="${channelList['qxcshahao']}"
							href="/web/content/more/${channelList['qxcshahao']}" target="_blank">更多..</a></span>
					</div>
					<ul id="moxiqxcshahao"></ul>
				</div>
				<div class="list2" style="float:right;">
					<div class="title" id="qxcjieguo">
						<span>七星彩开奖结果</span><span class="more"><a data-cid="${channelList['qxcjieguo']}"
							href="/web/content/more/${channelList['qxcjieguo']}" target="_blank">更多..</a></span>
					</div>
					<ul id="moxiqxcjieguo"></ul>
				</div>
			</div>
			<div class="right">
				<div class="list5 top10" style="margin-top:0px">
					<div class="title" id="qxcjiqiao">
						<span>七星彩技巧</span><span class="more"><a data-cid="${channelList['qxcjiqiao']}"
							href="/web/content/more/${channelList['qxcjiqiao']}" target="_blank"">更多..</a></span>
					</div>
					<ul id="moxiqxcjiqiao"></ul>
				</div>
			</div>
		</div>
	</div>

	<!-- 引入通用的尾部 -->
	<%@include file="/common/web/footer.jsp" %>

	<script type="text/javascript">
	$(function(){
		var qxcyuceId = $("#qxcyuce").find("a").data("cid");
		var qxctumiId = $("#qxctumi").find("a").data("cid");
		var qxcshahaoId = $("#qxcshahao").find("a").data("cid");
		var qxcjieguoId = $("#qxcjieguo").find("a").data("cid");
		var qxcjiqiaoId = $("#qxcjiqiao").find("a").data("cid");
		
		moxi_index_load(qxcyuceId,0,10,"#moxiqxcyuce");
		moxi_index_load(qxctumiId,0,10,"#moxiqxctumi");
		moxi_index_load(qxcshahaoId,0,10,"#moxiqxcshahao");
		moxi_index_load(qxcjieguoId,0,10,"#moxiqxcjieguo");
		moxi_index_load(qxcjiqiaoId,0,20,"#moxiqxcjiqiao");
		
		//七星彩开奖结果
		moxi_qxcReslt();
	});
	
	
	//七星彩开奖结果
	function moxi_qxcReslt(){
		$.ajax({
			type:"post",
			url:webPath+"/content/qxcReslt",
			success:function(data){
				var number = data.number;
				var length = number.length;
				var subnumber = number.substring(1,length-1);
				var attr = subnumber.split(",");
				$("#qxckj").prepend(
					"<li class='title'><strong>体彩七星彩</strong>&nbsp;&nbsp;&nbsp;&nbsp;第 "+data.quanqihao+" 期开奖信息</li>"+
					"<li class='fix'></li>"+
					"<li class='webkj'>"+
						"<span class='kjlabel'>开奖号码：</span>"+
						"<span class='red_num'>"+attr[0]+"</span>"+
						"<span class='red_num'>"+attr[1]+"</span>"+
						"<span class='red_num'>"+attr[2]+"</span>"+
						"<span class='red_num'>"+attr[3]+"</span>"+
						"<span class='red_num'>"+attr[4]+"</span>"+
						"<span class='red_num'>"+attr[5]+"</span>"+
						"<span class='red_num'>"+attr[6]+"</span>"+
					"</li>"+
					"<div class='morekj'><a href='/web/lottery/qxcrstlist'>更多开奖结果</a></div>"
				);
			}
		});
	};
	</script>
 </body>
</html>