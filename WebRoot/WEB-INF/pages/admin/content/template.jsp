<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<%@taglib prefix="mx" uri="/WEB-INF/tld/mx.tld"%>
<c:forEach var="content" varStatus="contentindex" items="${datas}">
	<tr>
		<td>
			<label><input type="checkbox"  value="${content.id}" name="id" class="checkboxstl"></label>
		</td>
		<td>
			${content.id}
			<c:if test="${contentindex.index==0}"><input type="hidden" id="itemCount" value="${itemCount}"/></c:if>
		</td>	
		<td style="text-align:left;padding-left:5px" data-opid="${content.id}" onclick="tzAdmin.edit(this)">${content.title}</td>	
		<td class="keys">${content.name}</td>	
		<td>${content.username}</td>	
		<td>
			${mx:timeFormat(content.createTime)}
		</td>	
		<td>
			<mx:if test="${content.isTop==0}">
				<mx:then><a href="javascript:void(0)" opid="${content.id}" mark="isTop" val="1" onclick="tzAdmin.op(this);" class="red">否</a></mx:then>
				<mx:else><a href="javascript:void(0)" opid="${content.id}" mark="isTop" val="0" onclick="tzAdmin.op(this);" class="green">是</a></mx:else>
			</mx:if>	
		</td>	
		<td>
			<mx:if test="${content.status==0}">
				<mx:then><a href="javascript:void(0)" opid="${content.id}" mark="status" val="1" onclick="tzAdmin.op(this);" class="red">否</a></mx:then>
				<mx:else><a href="javascript:void(0)" opid="${content.id}" mark="status" val="0" onclick="tzAdmin.op(this);" class="green">是</a></mx:else>
			</mx:if>	
		</td>
		<td>
			<a href="javascript:void(0);" data-opid="${content.id}" onclick="tzAdmin.edit(this)">编辑</a>
		</td>
		<td>
			<a href="javascript:void(0);" data-opid="${content.id}" onclick="tzAdmin.remove(this)">删除</a>
		</td>
	</tr>
</c:forEach>
