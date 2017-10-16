<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>彩票圈-七星彩开奖综合</title>
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
 <body>
 	<!-- 引入通用的头部 -->
	<%@include file="/common/mobile/header.jsp" %>
	<!-- 当前所在位置 -->
	<div class="box">
		<div class="lc">
			<div class="location" >
				位置：<a href="/" target="_self">彩票圈</a> >> <a href="/m/qxc" target="_self">七星彩</a>
			</div>
		</div>
	</div>
	

	<!-- 列表一览 -->
	<div class="fix"></div>
	<div class="box">
		<!-- 双色球开奖结果 -->
		<div class="chan">
			<div class="kjnum">
				<ol class="kjinfo qxc" id="qxckj">
				</ol>
			</div>
		</div>
		<!-- 七星彩预测 -->
		<div class="sc">
			<div class="lottery">
				<div class="title" id="qxcyuce">
					<span>七乐彩预测</span>
					<a class="more_detail" data-cid="${channelList['qxcyuce']}" href="/mobile/content/more/${channelList['qxcyuce']}" target="_blank">更多..</a>
				</div>
				<ul id="moxiqxcyuce">
				</ul>
			</div>
		</div>
		<!-- 七星彩图谜-->
		<div class="sc">
			<div class="lottery">
				<div class="title" id="qxctumi">
					<span>七星彩图谜</span>
					<a class="more_detail" data-cid="${channelList['qxctumi']}" href="/mobile/content/more/${channelList['qxctumi']}" target="_blank">更多..</a>
				</div>
				<ul id="moxiqxctumi">
				</ul>
			</div>
		</div>
		<!-- 七星彩杀号 -->
		<div class="sc">
			<div class="lottery">
				<div class="title" id="qxcshahao">
					<span>七星彩杀号</span>
					<a class="more_detail" data-cid="${channelList['qxcshahao']}" href="/mobile/content/more/${channelList['qxcshahao']}" target="_blank">更多..</a>
				</div>
				<ul id="moxiqxcshahao">
				</ul>
			</div>
		</div>
		<!-- 七星彩技巧 -->
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
			
			var qxcyuceId = $("#qxcyuce").find("a").data("cid");
			var qxctumiId = $("#qxctumi").find("a").data("cid");
			var qxcshahaoId = $("#qxcshahao").find("a").data("cid");
			var qxcjiqiaoId = $("#qxcjiqiao").find("a").data("cid");
			
			moxi_index_load(qxcyuceId,0,10,"#moxiqxcyuce");
			moxi_index_load(qxctumiId,0,10,"#moxiqxctumi");
			moxi_index_load(qxcshahaoId,0,10,"#moxiqxcshahao");
			moxi_index_load(qxcjiqiaoId,0,10,"#moxiqxcjiqiao");
			
			//七星彩开奖结果
			moxi_qxcReslt();
		});
		
		/*七星彩开奖结果*/
		function moxi_qxcReslt(){
			$.ajax({
				type:"post",
				url:webPath+"/content/qxcReslt",
				success:function(data){
					//alert(data.number+"--"+data.type+"--"+data.qihao);
					var number = data.number;
					var length = number.length;
					var subnumber = number.substring(1,length-1);
					var attr = subnumber.split(",");
					$("#qxckj").prepend(
						"<li class='title'><strong>七星彩</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第 "+data.quanqihao+" 期开奖号码</li>"+
						"<li class='fix'></li>"+
						"<li class='numli'>"+
							"<span class='red_num'>"+attr[0]+"</span>"+
							"<span class='red_num'>"+attr[1]+"</span>"+
							"<span class='red_num'>"+attr[2]+"</span>"+
							"<span class='red_num'>"+attr[3]+"</span>"+
							"<span class='red_num'>"+attr[4]+"</span>"+
							"<span class='red_num'>"+attr[5]+"</span>"+
							"<span class='red_num'>"+attr[6]+"</span>"+
						"</li>"
					);
				}
			});
		};
	
	</script>
 </body>
</html>