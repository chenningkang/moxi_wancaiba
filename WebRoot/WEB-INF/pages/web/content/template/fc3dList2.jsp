<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>彩票圈-福彩3D开奖综合</title>
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
				您现在的位置：<a href="/" target="_self">彩票圈</a> >> <a href="/3d" target="_self">福彩3D</a>
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
					<ol class="kjinfo sd" id="fc3dkj" style="height:90px">
					</ol>
				</div>
				<div class="list2">
					<div class="title" id="3dyuce">
						<span>3D预测</span><span class="more"><a data-cid="${channelList['3dyuce']}" href="/web/content/more/${channelList['3dyuce']}" target="_blank">更多..</a></span>
					</div>
					<ul id="moxi3dyuce"></ul>
				</div>
				<div class="list2" style="float:right;">
					<div class="title" id="3dtumi">
						<span>3D图谜</span><span class="more"><a data-cid="${channelList['3dtumi']}" href="/web/content/more/${channelList['3dtumi']}" target="_blank">更多..</a></span>
					</div>
					<ul id="moxi3dtumi"></ul>
				</div>
				<div class="fix"></div>
				<div class="list2">
					<div class="title" id="3dzimi">
						<span>3D字谜</span><span class="more"><a data-cid="${channelList['3dzimi']}" href="/web/content/more/${channelList['3dzimi']}" target="_blank">更多..</a></span>
					</div>
					<ul id="moxi3dzimi"></ul>
				</div>
				<div class="list2" style="float:right;">
					<div class="title" id="3djietaihumi">
						<span>3D解太湖谜</span><span class="more"><a data-cid="${channelList['3djietaihumi']}" href="/web/content/more/${channelList['3djietaihumi']}" target="_blank">更多..</a></span>
					</div>
					<ul id="moxi3djietaihumi">
					</ul>
				</div>
				
				<div class="fix"></div>
				<div class="list2">
					<div class="title" id="3ddanma">
						<span>3D胆码</span><span class="more"><a data-cid="${channelList['3ddanma']}" href="/web/content/more/${channelList['3ddanma']}" target="_blank">更多..</a></span>
					</div>
					<ul id="moxi3ddanma"></ul>
				</div>
				<div class="list2" style="float:right;">
					<div class="title" id="3dshama">
						<span>3D杀码</span><span class="more"><a data-cid="${channelList['3dshama']}" href="/web/content/more/${channelList['3dshama']}" target="_blank">更多..</a></span>
					</div>
					<ul id="moxi3dshama"></ul>
				</div>
			</div>
			
			<!-- 右侧 -->
			<div class="right" style="margin-top:-10px">
				<div class="list5">
					<div class="title" id="3djiqiao">
						<span>3D技巧</span><span class="more"><a data-cid="${channelList['3djiqiao']}" href="/web/content/more/${channelList['3djiqiao']}" target="_blank">更多..</a></span>
					</div>
					<ul id="moxi3djiqiao"></ul>
				</div>
				<div class="list5">
					<div class="title" id="3dtiaojian">
						<span>3D条件</span><span class="more"><a data-cid="${channelList['3dtiaojian']}" href="/web/content/more/${channelList['3dtiaojian']}" target="_blank">更多..</a></span>
					</div>
					<ul id="moxi3dtiaojian"></ul>
				</div>
			</div>
		</div>
	</div>

	<!-- 引入通用的尾部 -->
	<%@include file="/common/web/footer.jsp" %>

	<script type="text/javascript">
		$(function(){
			var sdyuceId = $("#3dyuce").find("a").data("cid");
			var sdtumiId = $("#3dtumi").find("a").data("cid");
			var sdzimiId = $("#3dzimi").find("a").data("cid");
			var sdjietaihumiId = $("#3djietaihumi").find("a").data("cid");
			var sddanmaId = $("#3ddanma").find("a").data("cid");
			var sdshamaId = $("#3dshama").find("a").data("cid");
			var sdjiqiaoId = $("#3djiqiao").find("a").data("cid");
			var sdtiaojianId = $("#3dtiaojian").find("a").data("cid");
			
			moxi_index_load(sdyuceId,0,10,"#moxi3dyuce");
			moxi_index_load(sdtumiId,0,10,"#moxi3dtumi");
			moxi_index_load(sdzimiId,0,10,"#moxi3dzimi");
			moxi_index_load(sdjietaihumiId,0,10,"#moxi3djietaihumi");
			moxi_index_load(sddanmaId,0,13,"#moxi3ddanma");
			moxi_index_load(sdshamaId,0,13,"#moxi3dshama");
			moxi_index_load(sdjiqiaoId,0,15,"#moxi3djiqiao");
			moxi_index_load(sdtiaojianId,0,18,"#moxi3dtiaojian");
			
			//福彩3d开奖结果
			moxi_fc3dReslt();
		});
		
		
		function moxi_fc3dReslt(){
			$.ajax({
				type:"post",
				url:webPath+"/content/fc3dReslt",
				success:function(data){
					//alert(data.number+"--"+data.type+"--"+data.qihao);
					var number = data.number;
					var length = number.length;
					var subnumber = number.substring(1,length-1);
					var attr = subnumber.split(",");
					$("#fc3dkj").prepend(
						"<li class='title'><strong>&nbsp;福彩3D</strong>&nbsp;&nbsp;&nbsp;&nbsp;第 "+data.quanqihao+" 期开奖信息</li>"+
						"<li class='fix'></li>"+
						"<li class='webkj'>"+
							"<span class='kjlabel'>开奖号码：</span>"+
							"<span class='red_num'>"+attr[0]+"</span>"+
							"<span class='red_num'>"+attr[1]+"</span>"+
							"<span class='red_num'>"+attr[2]+"</span>"+
						"</li>"+
						"<div class='morekj'><a href='/web/lottery/sdrstlist'>更多开奖结果</a></div>"
					);
				}
			});
		};
	
	</script>
 </body>
</html>