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
				您现在的位置：<a href="/" target="_self">彩票圈</a> >> <a href="/ssq" target="_self">福彩双色球</a>
			</div>
		</div>
	</div>

	<!-- 列表一览 -->
	<div class="fix"></div>
	<div class="box">
		<div class="chan">
			<!-- 左侧 -->
			<div class="left">
				<div class="list1">
					<ol class="kjinfo ssq" id="ssqkj" style="height:90px">
					</ol>
				</div>
				<div class="list2">
					<div class="title" id="ssqyuce">
						<span>双色球预测</span><span class="more"><a data-cid="${channelList['ssqyuce']}" href="/web/content/more/${channelList['ssqyuce']}" target="_blank">更多..</a></span>
					</div>
					<ul id="moxissqyuce"></ul>
				</div>
				<div class="list2" style="float:right;">
					<div class="title" id="ssqtiaojian">
						<span>双色球条件</span><span class="more"><a data-cid="${channelList['ssqtiaojian']}" href="/web/content/more/${channelList['ssqtiaojian']}" target="_blank">更多..</a></span>
					</div>
					<ul id="moxissqtiaojian"></ul>
				</div>
				
				<div class="fix"></div>
				<div class="list2">
					<div class="title" id="ssqdanma">
						<span>双色球胆码</span><span class="more"><a data-cid="${channelList['ssqdanma']}" href="/web/content/more/${channelList['ssqdanma']}" target="_blank">更多..</a></span>
					</div>
					<ul id="moxissqdanma"></ul>
				</div>
				<div class="list2" style="float:right;">
					<div class="title" id="ssqshama">
						<span>双色球杀码</span><span class="more"><a data-cid="${channelList['ssqshama']}" href="/web/content/more/${channelList['ssqshama']}" target="_blank">更多..</a></span>
					</div>
					<ul id="moxissqshama"></ul>
				</div>
			</div>
			
			<!-- 右侧 -->
			<div class="right" style="margin-top:-10px">
				<div class="list5">
					<div class="title" id="ssqzitu">
						<span>双色球字图</span><span class="more"><a data-cid="${channelList['ssqzitu']}" href="/web/content/more/${channelList['ssqzitu']}" target="_blank">更多..</a></span>
					</div>
					<ul id="moxissqzitu"></ul>
				</div>
				<div class="list5">
					<div class="title" id="ssqjiqiao">
						<span>双色球技巧</span><span class="more"><a data-cid="${channelList['ssqjiqiao']}" href="/web/content/more/${channelList['ssqjiqiao']}" target="_blank">更多..</a></span>
					</div>
					<ul id="moxissqjiqiao"></ul>
				</div>
			</div>
		</div>
	</div>

	<!-- 引入通用的尾部 -->
	<%@include file="/common/web/footer.jsp" %>

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
		moxi_index_load(ssqzituId,0,8,"#moxissqzitu");
		moxi_index_load(ssqjiqiaoId,0,10,"#moxissqjiqiao");
		
		//双色球开奖结果
		moxi_ssqResult();
	});
	
	//双色球开奖结果
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
					"<li class='title'><strong>福彩双色球</strong>&nbsp;&nbsp;&nbsp;&nbsp;第 "+data.quanqihao+" 期开奖信息</li>"+
					"<li class='fix'></li>"+
					"<li class='webkj'>"+
						"<span class='kjlabel'>开奖号码：</span>"+
						"<span class='red_num'>"+attr[0]+"</span>"+
						"<span class='red_num'>"+attr[1]+"</span>"+
						"<span class='red_num'>"+attr[2]+"</span>"+
						"<span class='red_num'>"+attr[3]+"</span>"+
						"<span class='red_num'>"+attr[4]+"</span>"+
						"<span class='red_num'>"+attr[5]+"</span>"+
						"<span class='blue_num'>"+attr[6]+"</span>"+
					"</li>"+
					"<div class='morekj'><a href='/web/lottery/ssqrstlist'>更多开奖结果</a></div>"
				);
			}
		});
	};
	
	</script>
 </body>
</html>