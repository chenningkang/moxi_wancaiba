<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>彩票圈-${detailDatas.title}</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
	<%@include file="/common/commonmobile.jsp" %>
	
	<style>
		@media screen and (min-width:460px){
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
	<div class="fix"></div>
	<div class="box">
		<div class="lc">
			<div class="location" >
				位置：<a href="/" target="_self">彩票圈</a> >> <a href="/m/${detailDatas.chDesc}" target="_self">${detailDatas.pname}</a> >> <a href="/mobile/content/more/${detailDatas.chid}" target="_self">${detailDatas.cname}</a> >> <a href="#" target="_self">正文</a>
			</div>
		</div>
	</div>

	<!-- 资讯详情 -->
	<div class="fix"></div>
	<div class="box">
		<div class="detail">
			<div class="content" id="leftcnt">
				<!-- 标题 -->
				<h2>${detailDatas.title}</h2>
				<div class="fix"></div>
				<div class="about">标签：${detailDatas.tag}&nbsp;&nbsp;&nbsp;<span>时间：${mx:formatDate(detailDatas.createTime,'yyyy-MM-dd')}</span></div>
				<div class="fix"></div>
				<!-- 内容详情 -->
				<div class="text">
					<div class="innertext">
						${detailDatas.content}
					</div>
					
				</div>
			</div>
				
			
		</div>
	</div>

	<!-- 引入通用的尾部 -->
	<%@include file="/common/mobile/footer.jsp" %>

 </body>
</html>