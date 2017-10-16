<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@include file="/common/taglib.jsp"%>
		
<c:forEach items="${lotteryRst}" var="lrst">
	<tr>
		<c:if test="${num.index==0}"><input type="hidden" id="itemCount" value="${itemCount}"/></c:if>
		<td height="16" style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<div align="center">${lrst.qihao}</div>
		</td>
		<td height="16" style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<div align="center">${lrst.number2}</div>
		</td>
		<td height="16" align="center"  class="green1"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==0 && num.index+1 == 1}"><span class="selectednum">0</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green1"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==1 && num.index+1 == 1}"><span class="selectednum">1</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green1"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==2 && num.index+1 == 1}"><span class="selectednum">2</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green1"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==3 && num.index+1 == 1}"><span class="selectednum">3</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green1"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==4 && num.index+1 == 1}"><span class="selectednum">4</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green1"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==5 && num.index+1 == 1}"><span class="selectednum">5</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green1"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==6 && num.index+1 == 1}"><span class="selectednum">6</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green1"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==7 && num.index+1 == 1}"><span class="selectednum">7</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green1"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==8 && num.index+1 == 1}"><span class="selectednum">8</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green1"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==9 && num.index+1 == 1}"><span class="selectednum">9</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green2"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==0 && num.index+1 == 2}"><span class="selectednum">0</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green2"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==1 && num.index+1 == 2}"><span class="selectednum">1</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green2"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==2 && num.index+1 == 2}"><span class="selectednum">2</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green2"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==3 && num.index+1 == 2}"><span class="selectednum">3</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green2"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==4 && num.index+1 == 2}"><span class="selectednum">4</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green2"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==5 && num.index+1 == 2}"><span class="selectednum">5</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green2"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==6 && num.index+1 == 2}"><span class="selectednum">6</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green2"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==7 && num.index+1 == 2}"><span class="selectednum">7</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green2"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==8 && num.index+1 == 2}"><span class="selectednum">8</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green2"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==9 && num.index+1 == 2}"><span class="selectednum">9</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green1"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==0 && num.index+1 == 3}"><span class="selectednum">0</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green1"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==1 && num.index+1 == 3}"><span class="selectednum">1</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green1"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==2 && num.index+1 == 3}"><span class="selectednum">2</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green1"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==3 && num.index+1 == 3}"><span class="selectednum">3</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green1"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==4 && num.index+1 == 3}"><span class="selectednum">4</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green1"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==5 && num.index+1 == 3}"><span class="selectednum">5</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green1"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==6 && num.index+1 == 3}"><span class="selectednum">6</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green1"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==7 && num.index+1 == 3}"><span class="selectednum">7</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green1"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==8 && num.index+1 == 3}"><span class="selectednum">8</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green1"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==9 && num.index+1 == 3}"><span class="selectednum">9</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green2"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==0 && num.index+1 == 4}"><span class="selectednum">0</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green2"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==1 && num.index+1 == 4}"><span class="selectednum">1</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green2"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==2 && num.index+1 == 4}"><span class="selectednum">2</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green2"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==3 && num.index+1 == 4}"><span class="selectednum">3</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green2"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==4 && num.index+1 == 4}"><span class="selectednum">4</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green2"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==5 && num.index+1 == 4}"><span class="selectednum">5</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green2"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==6 && num.index+1 == 4}"><span class="selectednum">6</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green2"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==7 && num.index+1 == 4}"><span class="selectednum">7</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green2"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==8 && num.index+1 == 4}"><span class="selectednum">8</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green2"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==9 && num.index+1 == 4}"><span class="selectednum">9</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green1"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==0 && num.index+1 == 5}"><span class="selectednum">0</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green1"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==1 && num.index+1 == 5}"><span class="selectednum">1</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green1"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==2 && num.index+1 == 5}"><span class="selectednum">2</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green1"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==3 && num.index+1 == 5}"><span class="selectednum">3</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green1"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==4 && num.index+1 == 5}"><span class="selectednum">4</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green1"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==5 && num.index+1 == 5}"><span class="selectednum">5</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green1"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==6 && num.index+1 == 5}"><span class="selectednum">6</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green1"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==7 && num.index+1 == 5}"><span class="selectednum">7</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green1"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==8 && num.index+1 == 5}"><span class="selectednum">8</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green1"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==9 && num.index+1 == 5}"><span class="selectednum">9</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green2"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==0 && num.index+1 == 6}"><span class="selectednum">0</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green2"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==1 && num.index+1 == 6}"><span class="selectednum">1</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green2"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==2 && num.index+1 == 6}"><span class="selectednum">2</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green2"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==3 && num.index+1 == 6}"><span class="selectednum">3</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green2"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==4 && num.index+1 == 6}"><span class="selectednum">4</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green2"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==5 && num.index+1 == 6}"><span class="selectednum">5</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green2"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==6 && num.index+1 == 6}"><span class="selectednum">6</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green2"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==7 && num.index+1 == 6}"><span class="selectednum">7</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green2"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==8 && num.index+1 == 6}"><span class="selectednum">8</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green2"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==9 && num.index+1 == 6}"><span class="selectednum">9</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green1"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==0 && num.index+1 == 7}"><span class="selectednum">0</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green1"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==1 && num.index+1 == 7}"><span class="selectednum">1</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green1"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==2 && num.index+1 == 7}"><span class="selectednum">2</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green1"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==3 && num.index+1 == 7}"><span class="selectednum">3</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green1"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==4 && num.index+1 == 7}"><span class="selectednum">4</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green1"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==5 && num.index+1 == 7}"><span class="selectednum">5</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green1"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==6 && num.index+1 == 7}"><span class="selectednum">6</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green1"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==7 && num.index+1 == 7}"><span class="selectednum">7</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green1"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==8 && num.index+1 == 7}"><span class="selectednum">8</span></c:if>
			</c:forEach>
		</td>
		<td height="16" align="center" class="green1"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==9 && num.index+1 == 7}"><span class="selectednum">9</span></c:if>
			</c:forEach>
		</td>
	</tr> 
</c:forEach>