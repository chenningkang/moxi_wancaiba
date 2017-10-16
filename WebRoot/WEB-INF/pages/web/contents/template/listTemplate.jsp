<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@include file="/common/taglib.jsp"%>
    <link href="/resources/css/wancaiba/fc3dbase.css" rel="stylesheet"/>
    <link href="/resources/css/wancaiba/fc3dfans.css" rel="stylesheet"/>
<c:forEach items="${conList}" var="ct" varStatus="i">
	<c:if test="${ct.isTop==1}">
		<li ><a href="/web/content/detail/${ct.id}" target="_blank">${ct.title}</a></li>
	</c:if>
	<c:if test="${ct.isTop==0}">
		<li ><a href="/web/content/detail/${ct.id}" target="_blank">${ct.title}</a></li>
	</c:if>
</c:forEach>
