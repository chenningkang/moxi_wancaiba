<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<%@taglib prefix="mx" uri="/WEB-INF/tld/mx.tld"%>
<c:forEach var="company" varStatus="companyindex" items="${datas}">
	<tr>
		<td>
			<label><input type="checkbox"  value="${company.id}" name="id" class="checkboxstl"></label>
		</td>
		<td>
			${company.id}
			<c:if test="${companyindex.index==0}"><input type="hidden" id="itemCount" value="${itemCount}"/></c:if>
		</td>	
		<td class="keys" data-opid="${company.id}" onclick="tzAdmin.edit(this)" style="text-align:left;text-indent:5px">${company.cname}</td>	
		<td>${company.phone}</td>
		<td style="text-align:left;text-indent:5px">${company.address}</td>	
		<td>
			${mx:timeFormat(company.createTime)}
		</td>
		<td>
			<a href="javascript:void(0);" data-opid="${company.id}" onclick="tzAdmin.edit(this)" >编辑</a>
		</td>
		<td>
			<a href="javascript:void(0);" data-opid="${company.id}" onclick="tzAdmin.remove(this)" >删除</a>
		</td>
	</tr>
</c:forEach>
