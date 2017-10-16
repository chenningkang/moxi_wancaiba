<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@include file="/common/taglib.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>彩票圈-七乐彩开奖综合</title>
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
				您现在的位置：<a href="/" target="_self">彩票圈</a> >> <a href="/qlc" target="_self">七乐彩</a>
			</div>
		</div>
	</div>

	<!-- 列表一览 -->
	<div class="fix"></div>
	<div class="box">
		<div class="chan">
			<div class="left">
				<div class="list1">
					<ol class="kjinfo qlc" id="qlckj" style="height:90px">
						<li class="fix"></li>
					</ol>
				</div>
				<div class="list2">
				    <div class="title" id="qlcyuce">
				       	<span>七乐彩预测</span>
						<span class="more"><a  data-cid="${channelList['qlcyuce']}"
							href="/web/content/more/${channelList['qlcyuce']}" target="_blank">更多..</a></span>
					</div>
					<ul id="moxiqlcyuce"></ul>
				</div>
				<div class="list2" style="float:right;">
					<div class="title" id="qlcshahao">
						<span>七乐彩杀号</span><span class="more"><a  data-cid="${channelList['qlcshahao']}"
							href="/web/content/more/${channelList['qlcshahao']}" target="_blank">更多..</a></span>
					</div>
					<ul id="moxiqlcshahao"></ul>
				</div>
				<div class="fix"></div>
			</div>
			<div class="right" style="margin-top:-10px">
				<div class="list5 top10">
					<div class="title" id="qlcjiqiao">
						<span>七乐彩技巧</span><span class="more"><a   data-cid="${channelList['qlcjiqiao']}"
							href="/web/content/more/${channelList['qlcjiqiao']}" target="_blank">更多..</a></span>
					</div>
					<ul id="moxiqlcjiqiao"></ul>
				</div>
			</div>
		</div>
	</div>

	<!-- 引入通用的尾部 -->
	<%@include file="/common/web/footer.jsp" %>

	<script type="text/javascript">
	$(function(){
		var qlcyuceId = $("#qlcyuce").find("a").data("cid");
		var qlcshahaoId = $("#qlcshahao").find("a").data("cid");
		var qlcjiqiaoId = $("#qlcjiqiao").find("a").data("cid");
		
		moxi_index_load(qlcyuceId,0,10,"#moxiqlcyuce");
		moxi_index_load(qlcshahaoId,0,10,"#moxiqlcshahao");
		moxi_index_load(qlcjiqiaoId,0,10,"#moxiqlcjiqiao");
		
		//七乐彩开奖结果
		moxi_qlcReslt();
	});
	
	//七乐彩开奖结果
	function moxi_qlcReslt(){
		$.ajax({
			type:"post",
			url:webPath+"/content/qlcReslt",
			success:function(data){
				//alert(data.number+"--"+data.type+"--"+data.qihao);
				var number = data.number;
				var length = number.length;
				var subnumber = number.substring(1,length-1);
				var attr = subnumber.split(",");
				$("#qlckj").prepend(
					"<li class='title'><strong>七乐彩</strong>&nbsp;&nbsp;&nbsp;&nbsp;第 "+data.quanqihao+" 期开奖信息</li>"+
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
						"<span class='blue_num'>"+attr[7]+"</span>"+
					"</li>"+
					"<div class='morekj'><a href='/web/lottery/qlcrstlist'>更多开奖结果</a></div>"
				);
			}
		});
	};
	</script>
 </body>
</html>