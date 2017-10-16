<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>彩票圈后台首页</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<%@include file="/common/commonadmin.jsp" %>
	<style type="text/css">
		.c_right .r_message .m_list{height:200px;float:left;margin-left:1%;margin-top:20px;
		cursor:pointer;text-align:center;line-height:200px;font-size:24px}
		.c_right .r_message .m_list a{display:block;color:#fff}
		.c_right .r_message .m_1{width:32%;background:#27a9e3;}
		.c_right .r_message .m_2{width:32%;background:#28b779;}
		.c_right .r_message .m_3{width:32%;background:#ffb848;}
		.c_right .r_message .m_4{width:32%;background:#cc6a6a;}
		.c_right .r_message .m_5{width:32%;background:#2255a4;}
		.c_right .r_message .m_6{width:32%;background:#da542e;}
		.c_right .r_message .m_7{width:32%;background:#2255a4;}
		.c_right .r_message .m_8{width:32%;background:#6297bc;}
		.c_right .r_message .m_9{width:32%;background:#27a9e3;}
		.c_right .r_message .m_10{width:32%;background:#28b779;}
		.c_right .r_message .m_list:hover{background:#2f3437;}
	</style>
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
				<p>您当前所在位置：首页</p>
			</div>
			
			<div class="r_content" >
				<div class="r_message">
					<c:if test="${session_user.roleId == 1}">
						<div class="m_list m_1">
							<a href="/admin/user/list">
								<span >用户管理</span>
							</a>
						</div>
					</c:if>
					<c:if test="${session_user.roleId == 1 || session_user.roleId == 2}">
						<div class="m_list m_2">
							<a href="/admin/channel/list">
								<span>栏目管理</span>
							</a>
						</div>
					</c:if>
					<div class="m_list m_3">
						<a href="/admin/content/list">
							<span>内容管理</span>
						</a>
					</div>
					<div class="m_list m_4">
						<a href="/admin/company/list">
							<span>客户公司管理</span>
						</a>
					</div>
					<div class="m_list m_5">
						<a href="/admin/banner/list">
							<span>banner管理</span>
						</a>
					</div>
					<div class="m_list m_6">
						<a href="/admin/friendLink/list">
							<span>友情链接</span>
						</a>
					</div>
					<div class="m_list m_7">
						<a href="javascript:void(0);" onclick="tzAdmin.editInfo(this);" data-opid="${session_user.id}">
							<span>个人中心</span>
						</a>
					</div>
				</div>
			</div>
		</div>
		<!--end c_right-->
	</div>

</body>
</html>