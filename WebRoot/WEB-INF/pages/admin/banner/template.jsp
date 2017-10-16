<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<%@taglib prefix="mx" uri="/WEB-INF/tld/mx.tld"%>
<c:forEach var="banner" varStatus="bannerindex" items="${datas}">
	<tr>
		<td>
			<label><input type="checkbox"  value="${banner.id}" name="id" class="checkboxstl"></label>
		</td>
		<td>
			${banner.id}
			<c:if test="${bannerindex.index==0}"><input type="hidden" id="itemCount" value="${itemCount}"/></c:if>
		</td>	
		<td class="keys">${banner.name}</td>
		<td data-opid="${banner.id}" onclick="tzAdmin.edit(this)" style="width:80px"><img src="${banner.path}" width="80" height="40"/></td>	
		<td style="text-align:left;padding-left:10px">${banner.path}</td>
		<td style="text-align:left;padding-left:10px">${banner.urlLink}</td>
		<td>
			${mx:timeFormat(banner.createTime)}
		</td>
		<td>${banner.cname}</td>
		<td>
			 <input type="text" class="text kc_name" style="width:40px;text-align:center"  opid="${banner.id}"  name="sort"  value="${banner.sort}" onblur="tzAdmin.op3(this);"/>
		</td>
		<td>
			<mx:if test="${banner.status==0}">
				<mx:then><a href="javascript:void(0)" opid="${banner.id}" mark="status" val="1" onclick="tzAdmin.op(this);" class="red">否</a></mx:then>
				<mx:else><a href="javascript:void(0)" opid="${banner.id}" mark="status" val="0" onclick="tzAdmin.op(this);" class="green">是</a></mx:else>
			</mx:if>	
		</td>
		<td>
			<a href="javascript:void(0);" data-opid="${banner.id}" onclick="tzAdmin.edit(this)">编辑</a>
		</td>
		<td>
			<a href="javascript:void(0);" data-opid="${banner.id}" onclick="tzAdmin.remove(this)">删除</a>
		</td>
	</tr>
</c:forEach>
