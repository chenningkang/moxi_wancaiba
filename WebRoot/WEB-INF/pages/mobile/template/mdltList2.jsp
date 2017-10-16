<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>彩票圈-体彩大乐透开奖综合</title>
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
				位置：<a href="/" target="_self">彩票圈</a> >> <a href="/m/dlt" target="_self">大乐透</a>
			</div>
		</div>
	</div>
	

	<!-- 列表一览 -->
	<div class="fix"></div>
	<div class="box">
		<!-- 开奖结果 -->
		<div class="chan">
			<div class="kjnum">
				<ol class="kjinfo dlt" id="dltkj">
				</ol>
			</div>
		</div>
		<!-- 大乐透预测 -->
		<div class="sc">
			<div class="lottery">
				<div class="title" id="dltyuce">
					<span>大乐透预测</span>
					<a class="more_detail" data-cid="${channelList['dltyuce']}" href="/mobile/content/more/${channelList['dltyuce']}" target="_blank">更多..</a>
				</div>
				<ul id="moxidltyuce">
				</ul>
			</div>
		</div>
		<!-- 大乐透胆码 -->
		<div class="sc">
			<div class="lottery">
				<div class="title" id="dltdanma">
					<span>大乐透胆码</span>
					<a class="more_detail" data-cid="${channelList['dltdanma']}" href="/mobile/content/more/${channelList['dltdanma']}" target="_blank">更多..</a>
				</div>
				<ul id="moxidltdanma">
				</ul>
			</div>
		</div>
		<!-- 大乐透杀号 -->
		<div class="sc">
			<div class="lottery">
				<div class="title" id="dltshahao">
					<span>大乐透杀号</span>
					<a class="more_detail" data-cid="${channelList['dltshahao']}" href="/mobile/content/more/${channelList['dltshahao']}" target="_blank">更多..</a>
				</div>
				<ul id="moxidltshahao">
				</ul>
			</div>
		</div>
		<!-- 大乐透技巧 -->
		<div class="sc">
			<div class="lottery">
				<div class="title" id="dltjiqiao">
					<span>3D解太湖谜</span>
					<a class="more_detail" data-cid="${channelList['dltjiqiao']}" href="/mobile/content/more/${channelList['dltjiqiao']}" target="_blank">更多..</a>
				</div>
				<ul id="moxidltjiqiao">
				</ul>
			</div>
		</div>
		
	</div>

	<!-- 引入通用的尾部 -->
	<%@include file="/common/mobile/footer.jsp" %>

	<script type="text/javascript">
		$(function(){
			var dltyuceId = $("#dltyuce").find("a").data("cid");
			var dltdanmaId = $("#dltdanma").find("a").data("cid");
			var dltshahaoId = $("#dltshahao").find("a").data("cid");
			var dltjiqiaoId = $("#dltjiqiao").find("a").data("cid");
			
			moxi_index_load(dltyuceId,0,10,"#moxidltyuce");
			moxi_index_load(dltdanmaId,0,10,"#moxidltdanma");
			moxi_index_load(dltshahaoId,0,10,"#moxidltshahao");
			moxi_index_load(dltjiqiaoId,0,10,"#moxidltjiqiao");
			
			//大乐透开奖结果
			moxi_dltReslt();
		});
		
		
		//大乐透开奖结果
		function moxi_dltReslt(){
			$.ajax({
				type:"post",
				url:webPath+"/content/dltReslt",
				success:function(data){
					var number = data.number;
					var length = number.length;
					var subnumber = number.substring(1,length-1);
					var attr = subnumber.split(",");
					$("#dltkj").prepend(
						"<li class='title'><strong>大乐透</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第 "+data.quanqihao+" 期开奖号码</li>"+
						"<li class='fix'></li>"+
						"<li class='numli'>"+
							"<span class='red_num'>"+attr[0]+"</span>"+
							"<span class='red_num'>"+attr[1]+"</span>"+
							"<span class='red_num'>"+attr[2]+"</span>"+
							"<span class='red_num'>"+attr[3]+"</span>"+
							"<span class='red_num'>"+attr[4]+"</span>"+
							"<span class='blue_num'>"+attr[5]+"</span>"+
							"<span class='blue_num'>"+attr[6]+"</span>"+
						"</li>"
					);
				}
			});
		};
	
	</script>
 </body>
</html>