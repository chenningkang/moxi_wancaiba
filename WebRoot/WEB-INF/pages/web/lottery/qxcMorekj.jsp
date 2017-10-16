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
		.green1{background:rgb(153, 255, 204)}
		.green2{background:rgb(204, 255, 255)}
		.qihaobg{background:rgb(223, 255, 255)}
		.selectednum{background:rgb(0, 204, 204);display:block}
		
  		.tzPage a, .tzPage span {
		    display: block;
		    float: left;
		    padding: 0.3em 0.6em;
		    margin-right: -46px;
		    margin-bottom: 5px;
		    min-width: 1em;
		    text-align: center;
		    line-height: 22px;
		    height: 22px;
		    background: #30939e;
		    color: #fff;
		    font-size: 14px;
		}
		.tzPage a:hover{background:#59a8b1}
  	</style>
  	<script type="text/javascript" src="/resources/sg/tz_page_no_pre.js"></script>
	<script type="text/javascript" src="/resources/js/mx_kaijian_list.js"></script>
 </head>
 <body>
 	<!-- 引入通用的头部 -->
	<%@include file="/common/web/header.jsp" %>

	<!-- 当前所在位置 -->
	<div class="fix"></div>
	<div class="box">
		<div class="location">
			<div class="left">
				您现在的位置：<a href="/" target="_self">彩票圈</a> >> <a href="/qxc" target="_self">七星彩</a>
			</div>
		</div>
	</div>
	<!-- 列表一览 -->
	<div class="fix"></div>
	<div class="box" style="width:1310px;">
		<table border="0" align="center" cellpadding="0" cellspacing="0"
			bordercolor="#5C8FD8" style="border:#5C8FD8 2px solid;margin-top:20px" width="1300">
			<thead>
				<tr>
					<td colspan="80" align="center" bgcolor="#B2DBEE"
						style="border-bottom:#5C8FD8 1px solid"  height="32"><strong style="font-size:16px;">七星彩开奖历史记录走势图</strong></td>
				</tr>
				
				<tr>
					<td width="60" height="16" rowspan="2" class="qihaobg"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center">期号</div></td>
					<td width="60" height="16" rowspan="2"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center">开奖号码</div></td>
					<td width="16"  colspan="10"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">第一位</div></td>
					<td width="16"  colspan="10"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green2">第二位</div></td>
					<td width="16"  colspan="10"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">第三位</div></td>
					<td width="16"  colspan="10"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green2">第四位</div></td>
					<td width="16"  colspan="10"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">第五位</div></td>
					<td width="16"  colspan="10"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green2">第六位</div></td>
					<td width="16"  colspan="10"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">第七位</div></td>
					
				</tr>
				
				<tr>
					<td width="16" 
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">0</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">1</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">2</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">3</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">4</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">5</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">6</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">7</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">8</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">9</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green2">0</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green2">1</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green2">2</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green2">3</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green2">4</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green2">5</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green2">6</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green2">7</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green2">8</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green2">9</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">0</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">1</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">2</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">3</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">4</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">5</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">6</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">7</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">8</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">9</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green2">0</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green2">1</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green2">2</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green2">3</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green2">4</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green2">5</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green2">6</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green2">7</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green2">8</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green2">9</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">0</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">1</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">2</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">3</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">4</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">5</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">6</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">7</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">8</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">9</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green2">0</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green2">1</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green2">2</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green2">3</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green2">4</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green2">5</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green2">6</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green2">7</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green2">8</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green2">9</div></td>		
					
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">0</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">1</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">2</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">3</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">4</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">5</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">6</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">7</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">8</div></td>
					<td width="16"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center" class="green1">9</div></td>
				</tr>
			</thead>
				<!-- 开奖结果 -->
			<tbody id="tbody" data-type="qxc">
				<c:forEach items="${lotteryRst}" var="lrst">
					<tr>
						<td height="16" style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<div align="center">${lrst.qihao}</div>
						</td>
						<td height="16" style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<div align="center">${lrst.number2}</div>
						</td>
						<td height="16" align="center"  class="green1"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==0 && num.index+1 == 1}"><span class="selectednum">0</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green1"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==1 && num.index+1 == 1}"><span class="selectednum">1</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green1"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==2 && num.index+1 == 1}"><span class="selectednum">2</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green1"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==3 && num.index+1 == 1}"><span class="selectednum">3</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green1"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==4 && num.index+1 == 1}"><span class="selectednum">4</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green1"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==5 && num.index+1 == 1}"><span class="selectednum">5</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green1"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==6 && num.index+1 == 1}"><span class="selectednum">6</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green1"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==7 && num.index+1 == 1}"><span class="selectednum">7</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green1"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==8 && num.index+1 == 1}"><span class="selectednum">8</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green1"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==9 && num.index+1 == 1}"><span class="selectednum">9</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green2"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==0 && num.index+1 == 2}"><span class="selectednum">0</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green2"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==1 && num.index+1 == 2}"><span class="selectednum">1</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green2"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==2 && num.index+1 == 2}"><span class="selectednum">2</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green2"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==3 && num.index+1 == 2}"><span class="selectednum">3</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green2"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==4 && num.index+1 == 2}"><span class="selectednum">4</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green2"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==5 && num.index+1 == 2}"><span class="selectednum">5</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green2"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==6 && num.index+1 == 2}"><span class="selectednum">6</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green2"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==7 && num.index+1 == 2}"><span class="selectednum">7</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green2"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==8 && num.index+1 == 2}"><span class="selectednum">8</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green2"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==9 && num.index+1 == 2}"><span class="selectednum">9</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green1"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==0 && num.index+1 == 3}"><span class="selectednum">0</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green1"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==1 && num.index+1 == 3}"><span class="selectednum">1</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green1"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==2 && num.index+1 == 3}"><span class="selectednum">2</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green1"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==3 && num.index+1 == 3}"><span class="selectednum">3</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green1"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==4 && num.index+1 == 3}"><span class="selectednum">4</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green1"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==5 && num.index+1 == 3}"><span class="selectednum">5</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green1"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==6 && num.index+1 == 3}"><span class="selectednum">6</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green1"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==7 && num.index+1 == 3}"><span class="selectednum">7</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green1"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==8 && num.index+1 == 3}"><span class="selectednum">8</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green1"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==9 && num.index+1 == 3}"><span class="selectednum">9</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green2"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==0 && num.index+1 == 4}"><span class="selectednum">0</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green2"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==1 && num.index+1 == 4}"><span class="selectednum">1</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green2"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==2 && num.index+1 == 4}"><span class="selectednum">2</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green2"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==3 && num.index+1 == 4}"><span class="selectednum">3</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green2"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==4 && num.index+1 == 4}"><span class="selectednum">4</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green2"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==5 && num.index+1 == 4}"><span class="selectednum">5</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green2"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==6 && num.index+1 == 4}"><span class="selectednum">6</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green2"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==7 && num.index+1 == 4}"><span class="selectednum">7</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green2"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==8 && num.index+1 == 4}"><span class="selectednum">8</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green2"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==9 && num.index+1 == 4}"><span class="selectednum">9</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green1"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==0 && num.index+1 == 5}"><span class="selectednum">0</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green1"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==1 && num.index+1 == 5}"><span class="selectednum">1</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green1"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==2 && num.index+1 == 5}"><span class="selectednum">2</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green1"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==3 && num.index+1 == 5}"><span class="selectednum">3</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green1"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==4 && num.index+1 == 5}"><span class="selectednum">4</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green1"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==5 && num.index+1 == 5}"><span class="selectednum">5</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green1"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==6 && num.index+1 == 5}"><span class="selectednum">6</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green1"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==7 && num.index+1 == 5}"><span class="selectednum">7</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green1"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==8 && num.index+1 == 5}"><span class="selectednum">8</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green1"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==9 && num.index+1 == 5}"><span class="selectednum">9</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green2"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==0 && num.index+1 == 6}"><span class="selectednum">0</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green2"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==1 && num.index+1 == 6}"><span class="selectednum">1</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green2"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==2 && num.index+1 == 6}"><span class="selectednum">2</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green2"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==3 && num.index+1 == 6}"><span class="selectednum">3</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green2"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==4 && num.index+1 == 6}"><span class="selectednum">4</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green2"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==5 && num.index+1 == 6}"><span class="selectednum">5</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green2"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==6 && num.index+1 == 6}"><span class="selectednum">6</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green2"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==7 && num.index+1 == 6}"><span class="selectednum">7</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green2"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==8 && num.index+1 == 6}"><span class="selectednum">8</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green2"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==9 && num.index+1 == 6}"><span class="selectednum">9</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green1"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==0 && num.index+1 == 7}"><span class="selectednum">0</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green1"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==1 && num.index+1 == 7}"><span class="selectednum">1</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green1"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==2 && num.index+1 == 7}"><span class="selectednum">2</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green1"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==3 && num.index+1 == 7}"><span class="selectednum">3</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green1"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==4 && num.index+1 == 7}"><span class="selectednum">4</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green1"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==5 && num.index+1 == 7}"><span class="selectednum">5</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green1"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==6 && num.index+1 == 7}"><span class="selectednum">6</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green1"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==7 && num.index+1 == 7}"><span class="selectednum">7</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green1"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==8 && num.index+1 == 7}"><span class="selectednum">8</span></c:if>
							</c:forEach>
						</td>
						<td height="16" align="center" class="green1"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${lnum==9 && num.index+1 == 7}"><span class="selectednum">9</span></c:if>
							</c:forEach>
						</td>
					</tr> 
				</c:forEach>
			</tbody>
		</table>
		<div class="cpage" style="margin-right:50px"></div>
		<input type="hidden" value="${itemCount}" id="itemCount">
		
	</div>

	<!-- 引入通用的尾部 -->
	<%@include file="/common/web/footer.jsp" %>

	<script type="text/javascript">
	
	</script>
 </body>
</html>