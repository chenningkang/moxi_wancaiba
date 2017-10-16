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
  		.tzPage a, .tzPage span {
		    display: block;
		    float: left;
		    padding: 0.3em 0.6em;
		    margin-right: 302px;
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
				您现在的位置：<a href="/" target="_self">彩票圈</a> >> <a href="/3d" target="_self">福彩3D</a>
			</div>
		</div>
	</div>
	<!-- 列表一览 -->
	<div class="fix"></div>
	<div class="box">
		<table border="0" align="center" cellpadding="0" cellspacing="0"
			bordercolor="#5C8FD8" style="border:#5C8FD8 2px solid;margin-top:20px" width="296">
			<thead>
				<tr>
					<td colspan="39" align="center" bgcolor="#B2DBEE"
						style="border-bottom:#5C8FD8 1px solid"  height="32"><strong style="font-size:16px;">福彩3D开奖历史记录</strong></td>
				</tr>
				<tr bgcolor="#99CCFF">
					<td width="60" height="22"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center">期号</div></td>
					<td width="80" height="22"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center">开奖号码</div></td>
					<td width="22"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center">百</div></td>
					<td width="22"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center">十</div></td>
					<td width="22"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center">个</div></td>
					<td width="40"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid"><div
							align="center">和值</div></td>
					<td width="80" height="22"
						style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid;background:#71f1ec"><div
							align="center">试机号</div></td>
				</tr>
			</thead>
			<!-- 开奖结果 -->
			<tbody id="tbody" data-type="sd">
				<c:forEach items="${lotteryRst}" var="lrst">
					<tr>
						<td height="22" style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<div align="center">${lrst.qihao}</div>
						</td>
						<td height="22" style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<div align="center">${lrst.number2}</div>
						</td>
						<td height="22" align="center"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${num.index+1 ==1}"><span class="h_q" data-num="${lnum}">${lnum}</span></c:if>
							</c:forEach>
						</td>
						<td height="22"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${num.index+1 ==2}"><span class="h_q" data-num="${lnum}">${lnum}</span></c:if>
							</c:forEach>
						</td>
						<td height="22"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
							<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
								<c:if test="${num.index+1 ==3}"><span class="h_q" data-num="${lnum}">${lnum}</span></c:if>
							</c:forEach>
						</td>
						<td height="22" align="center"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
								<span>${lrst.numsum}</span>
						</td>
						<td height="22" align="center"
							style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
								<span>${lrst.number2sjh}</span>
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
		$(function(){
			var numbai = $("#baiwei").data("num");
			var numshi = $("#shiwei").data("num");
			var numge = $("#gewei").data("num");
			var sunnum = numbai+numshi+numge;
			$("#hezhi").append(sunnum);
		});
	</script>
 </body>
</html>