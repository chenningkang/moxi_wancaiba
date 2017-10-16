<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@include file="/common/taglib.jsp"%>
<c:forEach items="${conList}" var="ct" varStatus="i">
	<c:if test="${ct.isTop==1}">
		<li class="best"><a href="/mobile/content/detail/${ct.id}" target="_blank">${ct.title}</a></li>
	</c:if>
	<c:if test="${ct.isTop==0}">
		<li><a href="/mobile/content/detail/${ct.id}" target="_blank">${ct.title}</a></li>
	</c:if>
</c:forEach>
