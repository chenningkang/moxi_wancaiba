<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<%@taglib prefix="mx" uri="/WEB-INF/tld/mx.tld"%>
<c:forEach var="channel" varStatus="channelindex" items="${datas}">
	<tr>
		<td>
			<label><input type="checkbox"  value="${channel.id}" name="id" class="checkboxstl"></label>
		</td>
		<td>
			${channel.id}
			<c:if test="${channelindex.index==0}"><input type="hidden" id="itemCount" value="${itemCount}"/></c:if>
		</td>	
		<td class="keys" data-opid="${channel.id}" onclick="tzAdmin.edit(this)" style="text-align:left;padding-left:10px">${channel.name}</td>	
		<td>${channel.username}</td>	
		<td>
			${mx:timeFormat(channel.createTime)}
		</td>	
		<td>
			<mx:if test="${channel.status==0}">
				<mx:then><a href="javascript:void(0)" opid="${channel.id}" mark="status" val="1" onclick="tzAdmin.op(this);" class="red">否</a></mx:then>
				<mx:else><a href="javascript:void(0)" opid="${channel.id}" mark="status" val="0" onclick="tzAdmin.op(this);" class="green">是</a></mx:else>
			</mx:if>	
		</td>
		<td>
			<a href="javascript:void(0);" data-opid="${channel.id}" onclick="tzAdmin.edit(this)">编辑</a>
		</td>
		<td>
			<a href="javascript:void(0);" data-opid="${channel.id}" onclick="tzAdmin.remove(this)">删除</a>
		</td>
	</tr>
</c:forEach>
