<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>彩票圈用户添加页面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!-- 引入通用样式 -->
	<%@include file="/common/commonadmin.jsp" %>
	<style>
		.malestyle{margin:10px 10px}
		.labelstyle:hover{cursor:pointer}
	</style>
	</head>
<body>
	<div class="wrap">
		<!-- 左侧-->
		<%@include file="/common/admin/left.jsp"%>
		
		<!--头部-->
		<%@include file="/common/admin/header.jsp" %>
		
		<!--右侧内容区域-->
		<div class="c_right">
			<!-- 当前位置 -->
			<div class="r_position">
				<p>您当前所在位置：<a href="/admin/index">首页</a> > 添加用户 </p>
			</div>
			<!-- 用户信息list区域 -->
			<div class="r_content">
				<form id="adminUser_form" method="post">
					<div class="con_right">
						<!-- 内容id不为空的时候才显示 -->
						<c:if test="${not empty id}">
							<div class="conr_nr">
								<div class="choose">主键id：</div>
								<input type="text" class="text kc_name" style="width:100px" name="id" id="p_id" value="${editAdminUser.id}" readonly="readonly" />
								<div class="clearfix"></div>
							</div>
						</c:if>

						<!-- 用户名-->
						<div class="conr_nr">
							<div class="choose">用户名：</div>
							<input type="text" class="text kc_name" name="username"
								id="mxname" value="${editAdminUser.username}"
								placeholder="请输入用户名..." /><span
								class="star">*</span>
							<div class="clearfix"></div>
						</div>
						<!-- 密码 -->
						<div class="conr_nr">
							<div class="choose">密&nbsp;码：</div>
							<input type="text" class="text kc_name" name="password"
								id="mxpassword" placeholder="请输入密码..." /><span class="star">*</span>
							<div class="clearfix"></div>
						</div>
						
						<!-- 权限 -->
						<div class="conr_nr">
							<div class="choose" style="height:37px;">权限：</div>
							<select id="listRole" name="roleId" style="padding: 7px 0;margin-top: 2px;">
								<option value="">--请选择权限--</option>
								<c:forEach items="${roles}" var="roles">
									<option ${roles.id==editAdminUser.roleId ? 'selected="selected"' : ''} value="${roles.id}">${roles.name}</option>
								</c:forEach>
							</select>
							<div class="clearfix"></div>
						</div>
						
						<div class="conr_nr">
							<div class="choose">电&nbsp;话：</div>
							<input type="text" class="text kc_name" name="telephone"
								id="mxtel" value="${editAdminUser.telephone}"
								placeholder="请输入电话号码..." onblur="checkPhone()" /><span
								class="star">*</span>
							<div class="clearfix"></div>
						</div>
						
						<div class="conr_nr">
							<div class="choose">邮&nbsp;箱：</div>
							<input type="text" class="text kc_name" name="email" id="mxemail"
								value="${editAdminUser.email}" placeholder="请输入邮箱..."
								onblur="checkEmail()" />
							<div class="clearfix"></div>
						</div>
						
						<div class="conr_nr">
							<div class="choose">年&nbsp;龄：</div>
							<input type="text" class="text kc_name" name="age" id="mxage"
								value="${editAdminUser.age}" placeholder="请输入年龄..."
								onblur="checkAge()" />
							<div class="clearfix"></div>
						</div>
						<div class="conr_nr">
							<div class="choose">地&nbsp;址：</div>
							<input type="text" class="text kc_name" name="address"
								id="mxaddress" value="${editAdminUser.address}"
								placeholder="请输入联系地址..." />
							<div class="clearfix"></div>
						</div>
						<div class="conr_nr">
							<div class="choose">性&nbsp;别：</div>
							<label class="labelstyle">
								<input type="radio"  class="malestyle" name="male" checked="checked" ${editAdminUser.male=='1'?'checked':''} value="1">男
							</label>
							<label class="labelstyle">
								<input type="radio"  class="malestyle" name="male" ${editAdminUser.male=='0'?'checked':''} value="0">女
							</label>
							<div class="clearfix"></div>
						</div>

						<!-- 按钮 -->
						<div class="conr_nr">
							<div class="wth682">
								<!-- 在保存的时候缓存一个id，方便判断是不是修改操作 -->
								<input name="" type="button" value="保存"
									data-opid="${editAdminUser.id}" onclick="moxi_saveUser(this)"
									class="submit" />
								<input name="" type="button" value="取消"
									onclick="window.location.href = '/admin/user/list'"
									 class="cancle" />
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
		<!--end c_right-->
	</div>
	<script type="text/javascript">
	
		//保存用户信息的方法
		function moxi_saveUser(obj) {
			//利用serialize的方式来获取数据
			var userData = $("#adminUser_form").serialize();
			
			//请求路径
			var url = "/admin/user/save";
			var mxuserName = $("#mxname").val();
			var mxtelephone = $("#mxtel").val();
			var mxpassword = $("#mxpassword").val();
			var listRole = $("#listRole").val();
			var userId = $("#p_id").val();
			var mxemail = $("#mxemail").val();
			var regex = /^(?:\w+\.?)*\w+@(?:\w+\.)*\w+$/;
			var mxage = $("#mxage").val();
			
			if(isEmpty(mxuserName)){
				loading("用户名不能为空哦！",3);
				$("#mxname").focus();
				return;
			}
			if(isEmpty(userId)){
				if(isEmpty(mxpassword)){
					loading("密码不能为空哦！",3);
					$("#mxpassword").focus();
					return;
				}
			}
			if(isEmpty(listRole)){
				loading("请给他赋予权限哦！",3);
				$("#listRole").select();
				return;
			}
			if(isEmpty(mxtelephone)){
				loading("电话号码不能为空哦！",3);
				$("#mxtel").focus();
				return;
			}
			
			if (!regex.test(mxemail)) {
				loading("请输入正确的邮箱", 3);
				$("#mxemail").select();
				return;
			}
			if (mxage<0 || mxage>100) {
				loading("请输入合法的年龄", 3);
				$("#mxage").select();
				return;
			}
			
			
			$.ajax({
				type : "post",
				url : url,
				data : userData,
				success : function(data) {
					if (data.stateCode = "1000") {
						loading("用户保存成功...", 2);
						window.location.href = "/admin/user/list";
					}
				},
				error : function(e) {
					loading("保存失败...", 2);
				}
			});
		};
		
		//check手机号码
		function checkPhone() {
			var mxtelephone = $("#mxtel").val();
			var regex = /1[3-8]+\d{9}/;
			if(isNotEmpty(mxtelephone)){
				if (!regex.test(mxtelephone)) {
					loading("请填写正确的手机号码", 3);
					$("#mxtel").select();
					return;
				}
			}
		};
		
		//check邮箱
		function checkEmail() {
			var mxemail = $("#mxemail").val();
			var regex = /^(?:\w+\.?)*\w+@(?:\w+\.)*\w+$/;
			if(isNotEmpty(mxemail)){
				if (!regex.test(mxemail)) {
					loading("请输入正确的邮箱", 3);
					$("#mxemail").select();
					return;
				}
			}
		};
		//check年龄
		function checkAge() {
			var mxage = $("#mxage").val();
			if(isNotEmpty(mxage)){
				if (isNaN(mxage)) {
					loading("请输入合法的年龄", 3);
					$("#mxage").select();
					return;
				} else if (mxage<0 || mxage>100) {
					loading("请输入合法的年龄", 3);
					$("#mxage").select();
					return;
				}
			}
		};
	</script>
	
	

</body>
</html>