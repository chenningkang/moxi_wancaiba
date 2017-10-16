<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@include file="/common/taglib.jsp"%>
<c:forEach items="${lotteryRst}" var="lrst" varStatus="num">
	<tr>
		<c:if test="${num.index==0}"><input type="hidden" id="itemCount" value="${itemCount}"/></c:if>
		<td height="22" style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<div align="center">${lrst.qihao}</div>
		</td>
		<td height="22" align="center"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==01 && num.index+1 !=7}"><span class="red_q" >01</span></c:if>
			</c:forEach>
		</td>
		<td height="22"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==02 && num.index+1 !=7}"><span class="red_q" >02</span></c:if>
			</c:forEach>
		</td>
		<td height="22"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==03 && num.index+1 !=7}"><span class="red_q" >03</span></c:if>
			</c:forEach>
		</td>
		<td height="22"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==04 && num.index+1 !=7}"><span class="red_q" >04</span></c:if>
			</c:forEach>	
		</td>
		<td height="22"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==05 && num.index+1 !=7}"><span class="red_q" >05</span></c:if>
			</c:forEach>
		</td>
		<td height="22"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==06 && num.index+1 !=7}"><span class="red_q" >06</span></c:if>
			</c:forEach>
		</td>
		<td height="22"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==07 && num.index+1 !=7}"><span class="red_q" >07</span></c:if>
			</c:forEach>
		</td>
		<td height="22"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==08 && num.index+1 !=7}"><span class="red_q" >08</span></c:if>
			</c:forEach>
		</td>
		<td height="22"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==09 && num.index+1 !=7}"><span class="red_q" >09</span></c:if>
			</c:forEach>	
		</td>
		<td height="22"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==10 && num.index+1 !=7}"><span class="red_q" >10</span></c:if>
			</c:forEach>	
		</td>
		<td height="22"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==11 && num.index+1 !=7}"><span class="red_q" >11</span></c:if>
			</c:forEach>
		</td>
		<td height="22"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==12 && num.index+1 !=7}"><span class="red_q" >12</span></c:if>
			</c:forEach>	
		</td>
		<td height="22"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==13 && num.index+1 !=7}"><span class="red_q" >13</span></c:if>
			</c:forEach>
		</td>
		<td height="22"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==14 && num.index+1 !=7}"><span class="red_q" >14</span></c:if>
			</c:forEach>	
		</td>
		<td height="22"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==15 && num.index+1 !=7}"><span class="red_q" >15</span></c:if>
			</c:forEach>	
		</td>
		<td height="22"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==16 && num.index+1 !=7}"><span class="red_q" >16</span></c:if>
			</c:forEach>
		</td>
		<td height="22"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==17 && num.index+1 !=7}"><span class="red_q" >17</span></c:if>
			</c:forEach>
		</td>
		<td height="22"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==18 && num.index+1 !=7}"><span class="red_q" >18</span></c:if>
			</c:forEach>
		</td>
		<td height="22"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==19 && num.index+1 !=7}"><span class="red_q" >19</span></c:if>
			</c:forEach>
		</td>
		<td height="22"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==20 && num.index+1 !=7}"><span class="red_q" >20</span></c:if>
			</c:forEach>
		</td>
		<td height="22"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==21 && num.index+1 !=7}"><span class="red_q" >21</span></c:if>
			</c:forEach>
		</td>
		<td height="22"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==22 && num.index+1 !=7}"><span class="red_q" >22</span></c:if>
			</c:forEach>	
		</td>
		<td height="22"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==23 && num.index+1 !=7}"><span class="red_q" >23</span></c:if>
			</c:forEach>
		</td>
		<td height="22"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==24 && num.index+1 !=7}"><span class="red_q" >24</span></c:if>
			</c:forEach>	
		</td>
		<td height="22"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==25 && num.index+1 !=7}"><span class="red_q" >25</span></c:if>
			</c:forEach>
		</td>
		<td height="22"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==26 && num.index+1 !=7}"><span class="red_q" >26</span></c:if>
			</c:forEach>
		</td>
		<td height="22"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==27 && num.index+1 !=7}"><span class="red_q" >27</span></c:if>
			</c:forEach>	
		</td>
		<td height="22"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==28 && num.index+1 !=7}"><span class="red_q" >28</span></c:if>
			</c:forEach>	
		</td>
		<td height="22"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==29 && num.index+1 !=7}"><span class="red_q" >29</span></c:if>
			</c:forEach>
		</td>
		<td height="22"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==30 && num.index+1 !=7}"><span class="red_q" >30</span></c:if>
			</c:forEach>	
		</td>
		<td height="22"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==31 && num.index+1 !=7}"><span class="red_q" >31</span></c:if>
			</c:forEach>
		</td>
		<td height="22"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==32 && num.index+1 !=7}"><span class="red_q" >32</span></c:if>
			</c:forEach>	
		</td>
		<td height="22"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${lnum==33 && num.index+1 !=7}"><span class="red_q" >33</span></c:if>
			</c:forEach>	
		</td>
		<td height="22"
			style="border-bottom:#5C8FD8 1px solid; border-right:#5C8FD8 1px solid">
			<c:forEach items="${lrst.number}" var="lnum" varStatus="num">
				<c:if test="${num.index+1==7}"><span class="blue_q" >${lnum}</span></c:if>
			</c:forEach>
			
		</td>
	</tr> 
</c:forEach>