<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/tld/mx.tld" prefix="mx" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="c_header">
	<div class="h_nav">
		<ul>
			<c:choose>
				<c:when test="${mx:indexOf(pageContext.request.requestURI,'/admin/index')!=-1}">
					<li>
						<a href="javascript:void(0);" style="color:#fff;background:#28b779">
							<span class="h_text">首页</span>
						</a>
					</li>
				</c:when>
				<c:otherwise>
					<li>
						<a href="/admin/index">
							<span class="h_text">首页</span>
						</a>
					</li>
				</c:otherwise>
			</c:choose>
			
			<c:if test="${session_user.roleId == 1}">
		        <c:choose>
					<c:when test="${mx:indexOf(pageContext.request.requestURI,'/admin/user')!=-1}">
						<li>
							<a href="javascript:void(0);" style="color:#fff;background:#28b779">
								<span class="h_text">用户管理</span>
							</a>
						</li>
					</c:when>
					<c:otherwise>
						<li>
							<a href="/admin/user/list">
								<span class="h_text">用户管理</span>
							</a>
						</li>
					</c:otherwise>
				</c:choose>
           	</c:if>
           	<c:if test="${session_user.roleId == 1 || session_user.roleId == 2}">
	           	<c:choose>
					<c:when test="${mx:indexOf(pageContext.request.requestURI,'/admin/channel')!=-1}">
						<li>
							<a href="javascript:void(0);" style="color:#fff;background:#28b779">
								<span class="h_text">栏目管理</span>
							</a>
						</li>
					</c:when>
					<c:otherwise>
						<li>
							<a href="/admin/channel/list">
								<span class="h_text">栏目管理</span>
							</a>
						</li>
					</c:otherwise>
				</c:choose>
			</c:if>
			
			<c:choose>
				<c:when test="${mx:indexOf(pageContext.request.requestURI,'/admin/content')!=-1}">
					<li>
						<a href="javascript:void(0);" style="color:#fff;background:#28b779">
							<span class="h_text">内容管理</span>
						</a>
					</li>
				</c:when>
				<c:otherwise>
					<li>
						<a href="/admin/content/list">
							<span class="h_text">内容管理</span>
						</a>
					</li>
				</c:otherwise>
			</c:choose>
			
			<c:choose>
				<c:when test="${mx:indexOf(pageContext.request.requestURI,'/admin/company')!=-1}">
					<li>
						<a href="javascript:void(0);" style="color:#fff;background:#28b779">
							<span class="h_text">客户公司管理</span>
						</a>
					</li>
				</c:when>
				<c:otherwise>
					<li>
						<a href="/admin/company/list">
							<span class="h_text">客户公司管理</span>
						</a>
					</li>
				</c:otherwise>
			</c:choose>
			
			<c:choose>
				<c:when test="${mx:indexOf(pageContext.request.requestURI,'/admin/banner')!=-1}">
					<li>
						<a href="javascript:void(0);" style="color:#fff;background:#28b779">
							<span class="h_text">banner管理</span>
						</a>
					</li>
				</c:when>
				<c:otherwise>
					<li>
						<a href="/admin/banner/list">
							<span class="h_text">banner管理</span>
						</a>
					</li>
				</c:otherwise>
			</c:choose>
			
			<c:choose>
				<c:when test="${mx:indexOf(pageContext.request.requestURI,'/admin/friendLink')!=-1}">
					<li>
						<a href="javascript:void(0);" style="color:#fff;background:#28b779">
							<span class="h_text">友情链接</span>
						</a>
					</li>
				</c:when>
				<c:otherwise>
					<li>
						<a href="/admin/friendLink/list">
							<span class="h_text">友情链接</span>
						</a>
					</li>
				</c:otherwise>
			</c:choose>
		</ul>
	</div>
	<div class="h_info">
		<div class="i_user">
			${session_user_role.roleName}：
			${session_user_username}
		</div>
		<div class="i_info">
			<a href="javascript:void(0);" onclick="tzAdmin.editInfo(this);" data-opid="${session_user.id}">
				<span class="i_exit">个人中心</span>
			</a>
		</div>
		<div class="i_out">
			<a href="/logout">
				<span class="i_exit">退出</span>
			</a>
		</div>
		
	</div>
</div>