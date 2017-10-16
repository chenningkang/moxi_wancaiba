<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<%@taglib prefix="mx" uri="/WEB-INF/tld/mx.tld"%>
<c:forEach var="user" varStatus="AdminUserindex" items="${datas}">
	<tr>
		<td>
			<label><input type="checkbox"  value="${user.id}" name="id" class="checkboxstl"></label>
		</td>
		<td>
			${user.id}
			<c:if test="${AdminUserindex.index==0}"><input type="hidden" id="itemCount" value="${itemCount}"/></c:if>
		</td>	
		<td class="keys" data-opid="${user.id}" onclick="tzAdmin.edit(this)" style="text-align:left;text-indent:5px">${user.username}</td>
		<td>${user.name}</td>	
		<td>${user.telephone}</td>	
		<td>
			${mx:timeFormat(user.createTime)}
		</td>
		<td>
			<mx:if test="${user.forbiden==0}">
				<mx:then><a href="javascript:void(0)" opid="${user.id}" mark="forbiden" val="1" onclick="tzAdmin.op2(this);" class="red">禁止登陆</a></mx:then>
				<mx:else><a href="javascript:void(0)" opid="${user.id}" mark="forbiden" val="0" onclick="tzAdmin.op2(this);" class="green">允许登陆</a></mx:else>
			</mx:if>	
		</td>
		<td>
			<mx:if test="${user.male==1}">
				<mx:then><a href="javascript:void(0)" opid="${user.id}" mark="male" val="1" class="green">男</a></mx:then>
				<mx:else><a href="javascript:void(0)" opid="${user.id}" mark="male" val="0" class="red">女</a></mx:else>
			</mx:if>	
		</td>
		<td>
			<a href="javascript:void(0);" data-opid="${user.id}" onclick="tzAdmin.edit(this)">编辑</a>
		</td>
		<td>
			<a href="javascript:void(0);" data-opid="${user.id}" onclick="tzAdmin.remove(this);">删除</a>
		</td>
	</tr>
</c:forEach>
