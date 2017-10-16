<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>彩票圈-福彩双色球开奖综合</title>
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
				位置：<a href="/" target="_self">彩票圈</a> >> <a href="/m/qlc" target="_self">七乐彩</a>
			</div>
		</div>
	</div>
	

	<!-- 列表一览 -->
	<div class="fix"></div>
	<div class="box">
		<!-- 双色球开奖结果 -->
		<div class="chan">
			<div class="kjnum">
				<ol class="kjinfo qlc" id="qlckj">
				</ol>
			</div>
		</div>
		<!-- 七乐彩预测 -->
		<div class="sc">
			<div class="lottery">
				<div class="title" id="qlcyuce">
					<span>七乐彩预测</span>
					<a class="more_detail" data-cid="${channelList['qlcyuce']}" href="/mobile/content/more/${channelList['qlcyuce']}" target="_blank">更多..</a>
				</div>
				<ul id="moxiqlcyuce">
				</ul>
			</div>
		</div>
		<!-- 七乐彩杀号-->
		<div class="sc">
			<div class="lottery">
				<div class="title" id="qlcshahao">
					<span>七乐彩杀号</span>
					<a class="more_detail" data-cid="${channelList['qlcshahao']}" href="/mobile/content/more/${channelList['qlcshahao']}" target="_blank">更多..</a>
				</div>
				<ul id="moxiqlcshahao">
				</ul>
			</div>
		</div>
		<!-- 七乐彩技巧 -->
		<div class="sc">
			<div class="lottery">
				<div class="title" id="qlcjiqiao">
					<span>七乐彩技巧</span>
					<a class="more_detail" data-cid="${channelList['qlcyuce']}" href="/mobile/content/more/${channelList['qlcyuce']}" target="_blank">更多..</a>
				</div>
				<ul id="moxiqlcjiqiao">
				</ul>
			</div>
		</div>
	</div>

	<!-- 引入通用的尾部 -->
	<%@include file="/common/mobile/footer.jsp" %>

	<script type="text/javascript">
		$(function(){
			
			var qlcyuceId = $("#qlcyuce").find("a").data("cid");
			var qlcshahaoId = $("#qlcshahao").find("a").data("cid");
			var qlcjiqiaoId = $("#qlcjiqiao").find("a").data("cid");
			
			moxi_index_load(qlcyuceId,0,10,"#moxiqlcyuce");
			moxi_index_load(qlcshahaoId,0,10,"#moxiqlcshahao");
			moxi_index_load(qlcjiqiaoId,0,10,"#moxiqlcjiqiao");
			
			//福彩3d开奖结果
			moxi_qlcReslt();
		});
		
		/*福彩3D开奖结果*/
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
						"<li class='title'><strong>七乐彩</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第 "+data.quanqihao+" 期开奖号码</li>"+
						"<li class='fix'></li>"+
						"<li class='numli'>"+
							"<span class='red_num'>"+attr[0]+"</span>"+
							"<span class='red_num'>"+attr[1]+"</span>"+
							"<span class='red_num'>"+attr[2]+"</span>"+
							"<span class='red_num'>"+attr[3]+"</span>"+
							"<span class='red_num'>"+attr[4]+"</span>"+
							"<span class='red_num'>"+attr[5]+"</span>"+
							"<span class='red_num'>"+attr[6]+"</span><br>"+
							"<span class='blue_num'>"+attr[7]+"</span>"+
						"</li>"
					);
				}
			});
		};
	
	</script>
 </body>
</html>