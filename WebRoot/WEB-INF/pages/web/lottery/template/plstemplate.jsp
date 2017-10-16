<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@include file="/common/taglib.jsp"%>
<c:forEach items="${lotteryRst}" var="lrst">
	<tr>
		<c:if test="${num.index==0}"><input type="hidden" id="itemCount" value="${itemCount}"/></c:if>
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
	</tr> 
</c:forEach>