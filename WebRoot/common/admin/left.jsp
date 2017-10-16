<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/tld/mx.tld" prefix="mx" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="c_left">
	<div class="c_logo">
		<a href="/"><img alt="彩票圈" src="/resources/images/logo/caipiaoq.png" width="190" height="75"></a>
	</div>
	<div class="c_nav">
		<ul>
			
			<c:if test="${mx:indexOf(pageContext.request.requestURI,'gatherList')!=-1}">
				<li>
					<a href="#" style="color:#fff;background:#28b779">
						<span class="c_text">数据采集</span>
					</a>
				</li>
			</c:if>
			<c:if test="${mx:indexOf(pageContext.request.requestURI,'gatherList')==-1}">
				<li>
					<a href="/admin/content/gatherList">
						<span class="c_text">数据采集</span>
					</a>
				</li>
			</c:if>
		</ul>
	</div>
</div>