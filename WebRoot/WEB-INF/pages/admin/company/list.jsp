<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>彩票圈频道管理</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<%@include file="/common/commonadmin.jsp" %>
	<script type="text/javascript" src="/resources/sg/tz_page.js"></script>
	</head>
<body>
	<div class="wrap">
		<!-- left start-->
		<%@include file="/common/admin/left.jsp"%>
		<!--end c_left-->
		
		<!--c_header start-->
		<%@include file="/common/admin/header.jsp" %>
		<!--end c_header-->
		
		<!--c_right start-->
		<div class="c_right">
			<div class="r_position">
				<i></i>
				<p>您当前所在位置：<a href="/admin/index">首页</a> > 公司管理</p>
			</div>
			
			<div class="r_content">
				<div class="tabwrap">
					<!--表格-->
					<div class="btnmiddle">
						<div class="fl">
							<div onclick="window.location.href='/admin/company/add'" class="add_btn"><p>添加公司信息</p></div>
						</div>
						<!-- 批量删除 -->
						<div class="fl">
							<div onclick="tzAdmin.removeSelected(this)" class="add_btn"><p>批量删除</p></div>
						</div>
						<div class="fr sbtn">
							<input type="text" id="keywords" class="fl" placeholder="搜索的公司名称..."/><a href="javascript:void(0);" onclick="tzAdmin.search(this);" class="fl"><i class="fa fa-search "></i></a>
						</div>
						<!-- 重置按钮 -->
						<div class="fr rbtn">
							<a href="javascript:void(0);" onclick="tzAdmin.resert(this);" class="fl"><i>重置检索</i></a>
						</div>
					</div>
					<table class="tztab">
						<thead>
							<tr>
								<th><input type="checkbox" id="selectall" onclick="tzAdmin.selectall(this);"></th>
								<th>主键</th>
								<th>公司名称 </th>	
								<th>联系电话</th>
								<th>公司地址</th>	
								<th>创建时间</th>
								<th colspan="2">操作</th>
							</tr>
						</thead>
						<!--身体部-->
						<tbody id="tbody" data-model="company">
							<tr>
								<td id="loading" colspan="50"></td>
							</tr>
						</tbody>
					</table>
					<div class="cpage"></div>
				</div>
			</div>
		</div>
		<!--end c_right-->
	</div>
	<script type="text/javascript">
		$(function(){
			tzAdmin.loadData(0,15,function(itemCount){
				tzAdmin.initPage(itemCount);//分页加载一次吗
			});
		});
	</script>

</body>
</html>