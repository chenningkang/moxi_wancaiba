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
				位置：<a href="/" target="_self">彩票圈</a> >> <a href="/m/p3" target="_self">体彩P3</a>
			</div>
		</div>
	</div>
	

	<!-- 列表一览 -->
	<div class="fix"></div>
	<div class="box">
		<!-- 双色球开奖结果 -->
		<div class="chan">
			<div class="kjnum">
				<ol class="kjinfo p3" id="tcp3kj">
				</ol>
			</div>
		</div>
		<!-- P3预测 -->
		<div class="sc">
			<div class="lottery">
				<div class="title" id="p3yuce">
					<span>P3预测</span>
					<a class="more_detail" data-cid="${channelList['p3yuce']}" href="/mobile/content/more/${channelList['p3yuce']}" target="_blank">更多..</a>
				</div>
				<ul id="moxip3yuce">
				</ul>
			</div>
		</div>
		<!-- P3条件-->
		<div class="sc">
			<div class="lottery">
				<div class="title" id="p3tiaojian">
					<span>P3条件</span>
					<a class="more_detail" data-cid="${channelList['p3tiaojian']}" href="/mobile/content/more/${channelList['p3tiaojian']}" target="_blank">更多..</a>
				</div>
				<ul id="moxip3tiaojian">
				</ul>
			</div>
		</div>
		<!-- P3字谜 -->
		<div class="sc">
			<div class="lottery">
				<div class="title" id="p3zimi">
					<span>P3字谜</span>
					<a class="more_detail" data-cid="${channelList['p3zimi']}" href="/mobile/content/more/${channelList['p3zimi']}" target="_blank">更多..</a>
				</div>
				<ul id="moxip3zimi">
				</ul>
			</div>
		</div>
		<!-- P3图谜-->
		<div class="sc">
			<div class="lottery">
				<div class="title" id="p3tumi">
					<span>P3图谜</span>
					<a class="more_detail" data-cid="${channelList['p3tumi']}" href="/mobile/content/more/${channelList['p3tumi']}" target="_blank">更多..</a>
				</div>
				<ul id="moxip3tumi">
				</ul>
			</div>
		</div>
		<!-- P3胆码-->
		<div class="sc">
			<div class="lottery">
				<div class="title" id="p3danma">
					<span>P3胆码</span>
					<a class="more_detail" data-cid="${channelList['p3danma']}" href="/mobile/content/more/${channelList['p3danma']}" target="_blank">更多..</a>
				</div>
				<ul id="moxip3danma">
				</ul>
			</div>
		</div>
		<!-- P3杀码-->
		<div class="sc">
			<div class="lottery">
				<div class="title" id="p3shama">
					<span>P3杀码</span>
					<a class="more_detail" data-cid="${channelList['p3shama']}" href="/mobile/content/more/${channelList['p3shama']}" target="_blank">更多..</a>
				</div>
				<ul id="moxip3shama">
				</ul>
			</div>
		</div>
		<!-- P3技巧-->
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
	</div>

	<!-- 引入通用的尾部 -->
	<%@include file="/common/mobile/footer.jsp" %>

	<script type="text/javascript">
		$(function(){
			var p3yuceId = $("#p3yuce").find("a").data("cid");
			var p3tiaojianId = $("#p3tiaojian").find("a").data("cid");
			var p3zimiId = $("#p3zimi").find("a").data("cid");
			var p3tumiId = $("#p3tumi").find("a").data("cid");
			var p3danmaId = $("#p3danma").find("a").data("cid");
			var p3shamaId = $("#p3shama").find("a").data("cid");
			var p3jiqiaoId = $("#p3jiqiao").find("a").data("cid");
			
			moxi_index_load(p3yuceId,0,10,"#moxip3yuce");
			moxi_index_load(p3tiaojianId,0,10,"#moxip3tiaojian");
			moxi_index_load(p3zimiId,0,10,"#moxip3zimi");
			moxi_index_load(p3tumiId,0,10,"#moxip3tumi");
			moxi_index_load(p3danmaId,0,10,"#moxip3danma");
			moxi_index_load(p3shamaId,0,10,"#moxip3shama");
			moxi_index_load(p3jiqiaoId,0,10,"#moxip3jiqiao");
			
			moxi_pl3Reslt();
		});
		
		function moxi_pl3Reslt(){
			$.ajax({
				type:"post",
				url:webPath+"/content/pl3Reslt",
				success:function(data){
					var number = data.number;
					var length = number.length;
					var subnumber = number.substring(1,length-1);
					var attr = subnumber.split(",");
					$("#tcp3kj").prepend(
						"<li class='title'><strong>&nbsp;体彩P3</strong>&nbsp;&nbsp;&nbsp;&nbsp;第 "+data.quanqihao+" 期开奖号码</li>"+
						"<li class='fix'></li>"+
						"<li class='numli'>"+
							"<span class='red_num'>"+attr[0]+"</span>"+
							"<span class='red_num'>"+attr[1]+"</span>"+
							"<span class='red_num'>"+attr[2]+"</span>"+
						"</li>"
					);
				}
			});
		};
	
	</script>
 </body>
</html>