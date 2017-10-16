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
				位置：<a href="/" target="_self">彩票圈</a> >> <a href="/3d" target="_self">福彩3D</a>
			</div>
		</div>
	</div>
	

	<!-- 列表一览 -->
	<div class="fix"></div>
	<div class="box">
		<!-- 开奖结果 -->
		<div class="chan">
			<div class="kjnum">
				<ol class="kjinfo sd" id="fc3dkj">
				</ol>
			</div>
		</div>
		<!-- 3D预测 -->
		<div class="sc">
			<div class="lottery">
				<div class="title" id="sdyuce">
					<span>3D预测</span>
					<a class="more_detail" data-cid="${channelList['3dyuce']}" href="/mobile/content/more/${channelList['3dyuce']}" target="_blank">更多..</a>
				</div>
				<ul id="moxisdyuce">
				</ul>
			</div>
		</div>
		<!-- 3D图谜 -->
		<div class="sc">
			<div class="lottery">
				<div class="title" id="sdtumi">
					<span>3D图谜</span>
					<a class="more_detail" data-cid="${channelList['3dtumi']}" href="/mobile/content/more/${channelList['3dtumi']}" target="_blank">更多..</a>
				</div>
				<ul id="moxisdtumi">
				</ul>
			</div>
		</div>
		<!-- 3D字谜 -->
		<div class="sc">
			<div class="lottery">
				<div class="title" id="sdzimi">
					<span>3D字谜</span>
					<a class="more_detail" data-cid="${channelList['3dzimi']}" href="/mobile/content/more/${channelList['3dzimi']}" target="_blank">更多..</a>
				</div>
				<ul id="moxisdzimi">
				</ul>
			</div>
		</div>
		<!-- 3D解太湖谜 -->
		<div class="sc">
			<div class="lottery">
				<div class="title" id="sdjietaihumi">
					<span>3D解太湖谜</span>
					<a class="more_detail" data-cid="${channelList['3djietaihumi']}" href="/mobile/content/more/${channelList['3djietaihumi']}" target="_blank">更多..</a>
				</div>
				<ul id="moxisdjietaihumi">
				</ul>
			</div>
		</div>
		<!-- 3D胆码 -->
		<div class="sc">
			<div class="lottery">
				<div class="title" id="sddanma">
					<span>3D胆码</span>
					<a class="more_detail" data-cid="${channelList['3ddanma']}" href="/mobile/content/more/${channelList['3ddanma']}" target="_blank">更多..</a>
				</div>
				<ul id="moxisddanma">
				</ul>
			</div>
		</div>
		<!-- 3D杀码 -->
		<div class="sc">
			<div class="lottery">
				<div class="title" id="sdshama">
					<span>3D杀码</span>
					<a class="more_detail" data-cid="${channelList['3dshama']}" href="/mobile/content/more/${channelList['3dshama']}" target="_blank">更多..</a>
				</div>
				<ul id="moxisdshama">
				</ul>
			</div>
		</div>
		<!-- 3D技巧 -->
		<div class="sc">
			<div class="lottery">
				<div class="title" id="sdjiqiao">
					<span>3D技巧 </span>
					<a class="more_detail" data-cid="${channelList['3djiqiao']}" href="/mobile/content/more/${channelList['3djiqiao']}" target="_blank">更多..</a>
				</div>
				<ul id="moxisdjiqiao">
				</ul>
			</div>
		</div>
		<!-- 3D条件 -->
		<div class="sc">
			<div class="lottery">
				<div class="title" id="sdtiaojian">
					<span>3D条件</span>
					<a class="more_detail" data-cid="${channelList['3dtiaojian']}" href="/mobile/content/more/${channelList['3dtiaojian']}" target="_blank">更多..</a>
				</div>
				<ul id="moxisdtiaojian">
				</ul>
			</div>
		</div>
		
	</div>

	<!-- 引入通用的尾部 -->
	<%@include file="/common/mobile/footer.jsp" %>

	<script type="text/javascript">
		$(function(){
			
			var sdyuceId = $("#sdyuce").find("a").data("cid");
			var sdtumiId = $("#sdtumi").find("a").data("cid");
			var sdzimiId = $("#sdzimi").find("a").data("cid");
			var sdjietaihumiId = $("#sdjietaihumi").find("a").data("cid");
			var sddanmaId = $("#sddanma").find("a").data("cid");
			var sdshamaId = $("#sdshama").find("a").data("cid");
			var sdjiqiaoId = $("#sdjiqiao").find("a").data("cid");
			var sdtiaojianId = $("#sdtiaojian").find("a").data("cid");
			
			moxi_index_load(sdyuceId,0,10,"#moxisdyuce");
			moxi_index_load(sdtumiId,0,10,"#moxisdtumi");
			moxi_index_load(sdzimiId,0,10,"#moxisdzimi");
			moxi_index_load(sdjietaihumiId,0,10,"#moxisdjietaihumi");
			moxi_index_load(sddanmaId,0,10,"#moxisddanma");
			moxi_index_load(sdshamaId,0,10,"#moxisdshama");
			moxi_index_load(sdjiqiaoId,0,10,"#moxisdjiqiao");
			moxi_index_load(sdtiaojianId,0,10,"#moxisdtiaojian");
			
			//福彩3d开奖结果
			moxi_fc3dReslt();
		});
		
		/*福彩3D开奖结果*/
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
						"<li class='title'><strong>&nbsp;福彩3D</strong>&nbsp;&nbsp;&nbsp;&nbsp;第 "+data.quanqihao+" 期开奖号码</li>"+
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