<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@include file="/common/taglib.jsp"%>
<c:forEach items="${datas}" var="more" varStatus="num">
	<c:if test="${num.index==0}"><input type="hidden" id="itemCount" value="${itemCount}"/></c:if>
	<li class="bg" data-dopid="${more.id}">
		<span class="num">${num.index+1}</span>
		<c:if test="${more.isTop==1}">
			<a class="best" href="/web/content/detail/${more.id}" target="_blank">${more.title}</a>
		</c:if>
		<c:if test="${more.isTop==0}">
			<a href="/web/content/detail/${more.id}" target="_blank">${more.title}</a>
		</c:if>
	</li>
</c:forEach>
