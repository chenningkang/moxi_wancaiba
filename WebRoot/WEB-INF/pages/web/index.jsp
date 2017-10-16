<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>彩票圈-首页</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<%@include file="/common/common.jsp" %>
	<style>
		.title{width: 308px;float: left;line-height: 27px;}
		#moxi3dshama,#moxip3shama{height: 224px;}
		#moxi3ddanma,#moxip3danma{height: 252px;}
		#moxi3dshijihao{height: 184px;}
  	</style>
  	<!-- 开奖信息 -->
  	<script type="text/javascript" src="/resources/js/mx_kaijian.js"></script>
  	<!-- 自动播放banner -->
  	<script type="text/javascript" src="/resources/js/mx_autoBanner.js"></script>
 </head>
 <body>
 	<!-- 引入通用的头部 -->
	<%@include file="/common/web/header.jsp" %>

	<div class="fix"></div>
	<!-- 阶层二 -->
	<div class="box">
		<div class="sc">
			<!-- 第一列 -->
			<div class="sc1">
				<!-- 开奖公告区域 -->
				<div class="kjdata" >
					<div class="title">
						<span>开奖公告</span>
						<!-- <p><a href="http://www.8200.cn/kjh/" target="_blank" title="彩票开奖公告">更多..</a></p> -->
					</div>
					<div class="fix"></div>
					<ul class="sjh" id="fc3dsjresult">
						<li></li>
					</ul>
					<!-- 开奖结果 -->
					<div class="kjh">
						<table border="0" cellspacing="0" cellpadding="0" align="center">
							<!-- 双色球 -->
							<tr id="ssqresult"></tr>
							<!-- 福彩3D -->
							<tr id="fc3dresult"></tr>
							<!-- 七乐彩 -->
							<tr id="qlcresult"></tr>
							<!-- 体彩P3 -->
							<tr id="pl3result"></tr>
							<!-- 体彩P5 -->
							<tr id="pl5result"></tr>
							<!-- 大乐透 -->
							<tr id="dltresult"></tr>
							<!-- 七星彩 -->
							<tr id="qxcresult"></tr>
						</table>
					</div>
				</div>
				<!-- 解太湖迷区域 -->
				<div class="taihu">
					<div class="title" id="3djietaihumi">
						<span>3D解太湖谜</span>
						<p><a data-cid="${channelList['3djietaihumi']}" href="/web/content/more/${channelList['3djietaihumi']}" target="_blank">更多..</a></p>
					</div>
					<ul id="moxi3djietaihumi">
					</ul>
				</div>
			</div>
			<!-- 第二列 -->
			<div class="sc2">
				<!-- banner(主位置) -->
				<div class="zones">
					<ul id="b_pic">
						<c:forEach items="${banners}" var="banners">
							<li><a href="${banners.urlLink}" target='_blank'> <img src="${banners.path}" alt="${banners.name}" width="${banners.width}" height="${banners.height}" /></a></li>
						</c:forEach>
					</ul>
				</div>
				<!-- 福彩3D杀码 -->
				<div class="slist">
					<div class="title" style="width:230px;" id="sdshama">
						<span>福彩3D杀码</span>
						<p><a data-cid="${channelList['3dshama']}" href="/web/content/more/${channelList['3dshama']}" target="_blank">更多..</a></p>
					</div>
					<ul id="moxi3dshama"></ul>
				</div>
				<!-- 体彩P3杀码 -->
				<div class="slist" style="float:right;">
					<div class="title" style="width:230px;" id="p3shama">
						<span>体彩P3杀码</span>
						<p><a data-cid="${channelList['p3shama']}" href="/web/content/more/${channelList['p3shama']}" target="_blank">更多..</a></p>
					</div>
					<ul id="moxip3shama">
					</ul>
				</div>
				<!-- 福彩3D胆码 -->
				<div class="slist">
					<div class="title" style="width:230px;" id="3ddanma">
						<span>福彩3D胆码</span>
						<p><a data-cid="${channelList['3ddanma']}" href="/web/content/more/${channelList['3ddanma']}" target="_blank">更多..</a></p>
					</div>
					<ul id="moxi3ddanma"></ul>
				</div>
				<!-- 体彩P3胆码 -->
				<div class="slist" style="float:right;">
					<div class="title" style="width:230px;" id="p3danma">
						<span>体彩P3胆码</span>
						<p><a data-cid="${channelList['p3danma']}" href="/web/content/more/${channelList['p3danma']}" target="_blank">更多..</a></p>
					</div>
					<ul id="moxip3danma"></ul>
				</div>
			</div>
			<!-- 第三列 -->
			<div class="sc3">
				<!-- 试机号专家 -->
				<div class="tj">
					<div class="bgtitle" id="3dshijihao">
						<label>试机号专家</label>
						<p><a data-cid="${channelList['3dshijihao']}" href="/web/content/more/${channelList['3dshijihao']}" target="_blank">更多..</a></p>
					</div>
					<ul id="moxi3dshijihao"></ul>
				</div>
				<!-- 技巧 -->
				<div class="jq">
					<div class="bgtitle" id="cpjiqiao">
						<label>技巧</label>
						<p><a href="/cpjq" data-cid="${channelList['3djiqiao']}" target="_blank">更多..</a></p>
					</div>
					<ul id="moxicpjiqiao"></ul>
				</div>
			</div>
		</div>
	</div>
	
	<div class="fix"></div>
	<div class="fix"></div>
	
	<!-- 阶层二 -->
	<div class="box">
		<div class="content">
			<div class="list1">
				<div class="title" id="ssqtiaojian">
					<span>双色球条件</span>
					<p><a data-cid="${channelList['ssqtiaojian']}" href="/web/content/more/${channelList['ssqtiaojian']}" target="_blank">更多..</a></p>
				</div>
				<ul id="moxissqtiaojian"></ul>
			</div>
			<div class="list2">
				<div class="title" id="3dtiaojian">
					<span>3D条件</span>
					<p><a data-cid="${channelList['3dtiaojian']}" href="/web/content/more/${channelList['3dtiaojian']}" target="_blank">更多..</a></p>
				</div>
				<ul id="moxi3dtiaojian"></ul>
			</div>
			<div class="list3">
				<div class="title" id="p3tiaojian">
					<span>P3条件</span>
					<p><a data-cid="${channelList['p3tiaojian']}" href="/web/content/more/${channelList['p3tiaojian']}" target="_blank">更多..</a></p>
				</div>
				<ul id="moxip3tiaojian"></ul>
			</div>
		</div>
	</div>
	
	<div class="fix"></div>
	
	<!-- 双色球预测 -->
	<div class="box">
		<div class="content">
			<div class="list1">
				<div class="title" id="ssqyuce">
					<span>双色球预测</span>
					<p><a data-cid="${channelList['ssqyuce']}" href="/web/content/more/${channelList['ssqyuce']}" target="_blank">更多..</a></p>
				</div>
				<ul id="moxissqyuce"></ul>
			</div>
			<!-- 3D预测 -->
			<div class="list2">
				<div class="title" id="3dyuce">
					<span>3D预测</span>
					<p><a data-cid="${channelList['3dyuce']}" href="/web/content/more/${channelList['3dyuce']}" target="_blank">更多..</a></p>
				</div>
				<ul id="moxi3dyuce"></ul>
			</div>
			
			<!-- P3预测  -->
			<div class="list3">
				<div class="title" id="p3yuce">
					<span>P3预测</span>
					<p><a data-cid="${channelList['p3yuce']}" href="/web/content/more/${channelList['p3yuce']}" target="_blank">更多..</a></p>
				</div>
				<ul id="moxip3yuce"></ul>
			</div>
		</div>
	</div>
	
	<div class="fix"></div>
	
	<div class="box">
		<div class="content">
			<!-- 双色球杀码 -->
			<div class="list1">
				<div class="title" id="ssqshama">
					<span>双色球杀码</span>
					<p><a data-cid="${channelList['ssqshama']}" href="/web/content/more/${channelList['ssqshama']}" target="_blank">更多..</a></p>
				</div>
				<ul id="moxissqshama"></ul>
			</div>
			
			<!-- 3D图谜 -->
			<div class="list2">
				<div class="title" id="3dtumi">
					<span>3D图谜</span>
					<p><a data-cid="${channelList['3dtumi']}" href="/web/content/more/${channelList['3dtumi']}" target="_blank">更多..</a></p>
				</div>
				<ul id="moxi3dtumi"></ul>
			</div>
			<!-- P3图画 -->
			<div class="list3">
				<div class="title" id="p3tumi">
					<span>P3图迷</span>
					<p><a data-cid="${channelList['p3tumi']}" href="/web/content/more/${channelList['p3tumi']}" target="_blank">更多..</a></p>
				</div>
				<ul id="moxip3tumi"></ul>
			</div>
		</div>
	</div>
	
	<div class="fix"></div>
	
	<div class="box">
		<div class="content">
			<!-- 双色球字图 -->
			<div class="list1">
				<div class="title" id="ssqzitu">
					<span>双色球字图</span>
					<p><a data-cid="${channelList['ssqzitu']}" href="/web/content/more/${channelList['ssqzitu']}" target="_blank">更多..</a></p>
				</div>
				<ul id="moxissqzitu"></ul>
			</div>
			
			<!-- 3D字谜 -->
			<div class="list2">
				<div class="title" id="3dzimi">
					<span>3D字谜</span>
					<p><a data-cid="${channelList['3dzimi']}" href="/web/content/more/${channelList['3dzimi']}" target="_blank">更多..</a></p>
				</div>
				<ul id="moxi3dzimi"></ul>
			</div>
			
			<!-- P3字谜 -->
			<div class="list3">
				<div class="title" id="p3zimi">
					<span>P3字谜</span>
					<p><a data-cid="${channelList['p3zimi']}" href="/web/content/more/${channelList['p3zimi']}" target="_blank">更多..</a></p>
				</div>
				<ul id="moxip3zimi"></ul>
			</div>
		</div>
	</div>
	
	<div class="fix"></div>
	<div class="box">
		<div class="content">
			<div class="list1">
				<div class="title" id="dlt">
					<span>大乐透</span>
					<p><a data-cid="${channelList['dltyuce']}" href="/dlt" target="_blank">更多..</a></p>
				</div>
				<ul id="moxidlt"></ul>
			</div>
			<div class="list2">
				<div class="title" id="qlc">
					<span>七乐彩</span>
					<p><a data-cid="${channelList['qlcyuce']}" href="/qlc" target="_blank">更多..</a></p>
				</div>
				<ul id="moxiqlc"></ul>
			</div>
			<div class="list3">
				<div class="title" id="qxc">
					<span>七星彩</span>
					<p><a data-cid="${channelList['qxcyuce']}" href="/qxc" target="_blank">更多..</a></p>
				</div>
				<ul id="moxiqxc"></ul>
			</div>
		</div>
	</div>
	
	<!-- 引入通用的尾部 -->
	<%@include file="/common/web/footer.jsp" %>

	<script type="text/javascript">
		$(function(){
			
			//首页banner自动播放
			autoBanner("#b_pic");//传入ul对应的id
			
// 			moxi_bannerCtr("华为");
			//频道id
			var jietaihuId = $("#3djietaihumi").find("a").data("cid");
			var sdshamaId = $("#sdshama").find("a").data("cid");
			var p3shamaId = $("#p3shama").find("a").data("cid");
			var sddanmaId = $("#3ddanma").find("a").data("cid");
			var p3danmaId = $("#p3danma").find("a").data("cid");
			var ssqtiaojianId = $("#ssqtiaojian").find("a").data("cid");
			var sdtiaojianId = $("#3dtiaojian").find("a").data("cid");
			var p3tiaojianId = $("#p3tiaojian").find("a").data("cid");
			var ssqyuceId = $("#ssqyuce").find("a").data("cid");
			var sdyuceId = $("#3dyuce").find("a").data("cid");
			var p3yuceId = $("#p3yuce").find("a").data("cid");
			var ssqshamaId = $("#ssqshama").find("a").data("cid");
			var sdtumiId = $("#3dtumi").find("a").data("cid");
			var p3tumiId = $("#p3tumi").find("a").data("cid");
			var ssqzituId = $("#ssqzitu").find("a").data("cid");
			var sdzimiId = $("#3dzimi").find("a").data("cid");
			var p3zimiId = $("#p3zimi").find("a").data("cid");
			var dltId = $("#dlt").find("a").data("cid");
			var qlcId = $("#qlc").find("a").data("cid");
			var qxcId = $("#qxc").find("a").data("cid");
			var sdshijihaoId = $("#3dshijihao").find("a").data("cid");
			var cpjiqiaoId = $("#cpjiqiao").find("a").data("cid");
			
			//加载首页频道list
			moxi_index_load(jietaihuId,0,19,"#moxi3djietaihumi");
			moxi_index_load(sdshamaId,0,8,"#moxi3dshama");
			moxi_index_load(p3shamaId,0,8,"#moxip3shama");
			moxi_index_load(sddanmaId,0,9,"#moxi3ddanma");
			moxi_index_load(p3danmaId,0,9,"#moxip3danma");
			moxi_index_load(ssqtiaojianId,0,10,"#moxissqtiaojian");
			moxi_index_load(sdtiaojianId,0,10,"#moxi3dtiaojian");
			moxi_index_load(sdshijihaoId,0,6,"#moxi3dshijihao");
			moxi_index_load(p3tiaojianId,0,10,"#moxip3tiaojian");
			moxi_index_load(ssqyuceId,0,16,"#moxissqyuce");
			moxi_index_load(sdyuceId,0,16,"#moxi3dyuce");
			moxi_index_load(p3yuceId,0,16,"#moxip3yuce");
			moxi_index_load(ssqshamaId,0,16,"#moxissqshama");
			moxi_index_load(sdtumiId,0,16,"#moxi3dtumi");
			moxi_index_load(p3tumiId,0,16,"#moxip3tumi");
			moxi_index_load(ssqzituId,0,15,"#moxissqzitu");
			moxi_index_load(sdzimiId,0,15,"#moxi3dzimi");
			moxi_index_load(p3zimiId,0,15,"#moxip3zimi");
			moxi_index_load(dltId,0,15,"#moxidlt");
			moxi_index_load(qlcId,0,15,"#moxiqlc");
			moxi_index_load(qxcId,0,15,"#moxiqxc");
			moxi_index_load(cpjiqiaoId,0,17,"#moxicpjiqiao");
			
		});
		
		
		//banner查询
// 		function moxi_bannerCtr(comName){
// 			$.ajax({
// 				type:"post",
// 				url:webPath+"/banner/list",
// 				data:{companyName:comName},
// 				success:function(data){
// 					for(var i=0;i<data.length;i++){
// 						$("#b_pic").append("<li><a href='"+data[i].urlLink+"' target='_blank'> <img src='"+data[i].path+"' alt='"+data[i].name+"' width='"+data[i].width+"' height='"+data[i].height+"' /></a></li>");
// 					}
// 				}
// 			});
// 		};
		
	</script>
 </body>
</html>