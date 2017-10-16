<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<%@taglib prefix="mx" uri="/WEB-INF/tld/mx.tld"%>
<c:forEach var="friendLink" varStatus="friendLinkindex" items="${datas}">
	<tr>
		<td>
			<label><input type="checkbox"  value="${friendLink.id}" name="id" class="checkboxstl"></label>
		</td>
		<td>
			${friendLink.id}
			<c:if test="${friendLinkindex.index==0}"><input type="hidden" id="itemCount" value="${itemCount}"/></c:if>
		</td>
		<td class="keys" data-opid="${friendLink.id}" onclick="tzAdmin.edit(this)">${friendLink.name}</td>	
		<td style="text-align:left;padding-left:10px" data-opid="${friendLink.id}" onclick="tzAdmin.edit(this)">${friendLink.url}</td>
		<td data-opid="${friendLink.id}" onclick="tzAdmin.edit(this)" style="width:80px"><img src="${friendLink.path}" width="80" height="40"/></td>
		<td style="text-align:left;padding-left:10px">${friendLink.path}</td>
		<td>
			${mx:timeFormat(friendLink.updateTime)}
		</td>
		<td>
			 <input type="text" class="text kc_name" style="width:40px;text-align:center"  opid="${friendLink.id}"  name="sort"  value="${friendLink.sort}" onblur="tzAdmin.op3(this);"/>
		</td>
		<td>
			<mx:if test="${friendLink.status==0}">
				<mx:then><a href="javascript:void(0)" opid="${friendLink.id}" mark="status" val="1" onclick="tzAdmin.op(this);" class="red">否</a></mx:then>
				<mx:else><a href="javascript:void(0)" opid="${friendLink.id}" mark="status" val="0" onclick="tzAdmin.op(this);" class="green">是</a></mx:else>
			</mx:if>	
		</td>
		<td>
			<a href="javascript:void(0);" data-opid="${friendLink.id}" onclick="tzAdmin.edit(this)">编辑</a>
		</td>
		<td>
			<a href="javascript:void(0);" data-opid="${friendLink.id}" onclick="tzAdmin.remove(this)">删除</a>
		</td>
	</tr>
</c:forEach>
