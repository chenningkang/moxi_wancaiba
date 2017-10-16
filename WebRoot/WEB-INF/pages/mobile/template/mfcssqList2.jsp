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
				位置：<a href="/" target="_self">彩票圈</a> >> <a href="/m/ssq" target="_self">福彩双色球</a>
			</div>
		</div>
	</div>
	

	<!-- 列表一览 -->
	<div class="fix"></div>
	<div class="box">
		<!-- 双色球开奖结果 -->
		<div class="chan">
			<div class="kjnum">
				<ol class="kjinfo ssq" id="ssqkj">
				</ol>
			</div>
		</div>
		<!-- 双色球预测 -->
		<div class="sc">
			<div class="lottery">
				<div class="title" id="ssqyuce">
					<span>双色球预测</span>
					<a class="more_detail" data-cid="${channelList['ssqyuce']}" href="/mobile/content/more/${channelList['ssqyuce']}" target="_blank">更多..</a>
				</div>
				<ul id="moxissqyuce">
				</ul>
			</div>
		</div>
		<!-- >双色球条件-->
		<div class="sc">
			<div class="lottery">
				<div class="title" id="ssqtiaojian">
					<span>双色球条件</span>
					<a class="more_detail" data-cid="${channelList['ssqtiaojian']}" href="/mobile/content/more/${channelList['ssqtiaojian']}" target="_blank">更多..</a>
				</div>
				<ul id="moxissqtiaojian">
				</ul>
			</div>
		</div>
		<!-- 双色球胆码 -->
		<div class="sc">
			<div class="lottery">
				<div class="title" id="ssqdanma">
					<span>双色球胆码</span>
					<a class="more_detail" data-cid="${channelList['ssqdanma']}" href="/mobile/content/more/${channelList['ssqdanma']}" target="_blank">更多..</a>
				</div>
				<ul id="moxissqdanma">
				</ul>
			</div>
		</div>
		<!-- 双色球杀码 -->
		<div class="sc">
			<div class="lottery">
				<div class="title" id="ssqshama">
					<span>双色球杀码</span>
					<a class="more_detail" data-cid="${channelList['ssqshama']}" href="/mobile/content/more/${channelList['ssqshama']}" target="_blank">更多..</a>
				</div>
				<ul id="moxissqshama">
				</ul>
			</div>
		</div>
		<!-- 双色球字图 -->
		<div class="sc">
			<div class="lottery">
				<div class="title" id="ssqzitu">
					<span>双色球字图</span>
					<a class="more_detail" data-cid="${channelList['ssqzitu']}" href="/mobile/content/more/${channelList['ssqzitu']}" target="_blank">更多..</a>
				</div>
				<ul id="moxissqzitu">
				</ul>
			</div>
		</div>
		<!-- 双色球技巧-->
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
	</div>

	<!-- 引入通用的尾部 -->
	<%@include file="/common/mobile/footer.jsp" %>

	<script type="text/javascript">
		$(function(){
			
			var ssqyuceId = $("#ssqyuce").find("a").data("cid");
			var ssqtiaojianId = $("#ssqtiaojian").find("a").data("cid");
			var ssqdanmaId = $("#ssqdanma").find("a").data("cid");
			var ssqshamaId = $("#ssqshama").find("a").data("cid");
			var ssqzituId = $("#ssqzitu").find("a").data("cid");
			var ssqjiqiaoId = $("#ssqjiqiao").find("a").data("cid");
			
			moxi_index_load(ssqyuceId,0,10,"#moxissqyuce");
			moxi_index_load(ssqtiaojianId,0,10,"#moxissqtiaojian");
			moxi_index_load(ssqdanmaId,0,10,"#moxissqdanma");
			moxi_index_load(ssqshamaId,0,10,"#moxissqshama");
			moxi_index_load(ssqzituId,0,10,"#moxissqzitu");
			moxi_index_load(ssqjiqiaoId,0,10,"#moxissqjiqiao");
			
			//福彩3d开奖结果
			moxi_ssqResult();
		});
		
		/*福彩3D开奖结果*/
		function moxi_ssqResult(){
			$.ajax({
				type:"post",
				url:webPath+"/content/ssqReslt",
				success:function(data){
					//alert(data.number+"--"+data.type+"--"+data.qihao);
					var number = data.number;
					var length = number.length;
					var subnumber = number.substring(1,length-1);
					var attr = subnumber.split(",");
					$("#ssqkj").prepend(
							"<li class='title'><strong>双色球</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第 "+data.quanqihao+" 期开奖号码</li>"+
							"<li class='fix'></li>"+
							"<li class='numli'>"+
								"<span class='red_num'>"+attr[0]+"</span>"+
								"<span class='red_num'>"+attr[1]+"</span>"+
								"<span class='red_num'>"+attr[2]+"</span>"+
								"<span class='red_num'>"+attr[3]+"</span>"+
								"<span class='red_num'>"+attr[4]+"</span>"+
								"<span class='red_num'>"+attr[5]+"</span>"+
								"<span class='blue_num'>"+attr[6]+"</span>"+
							"</li>"
						);
				}
			});
		};
	
	</script>
 </body>
</html>