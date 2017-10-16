<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>彩票圈后台登录</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<%@include file="/common/common.jsp" %>
	<style type="text/css">
	.container{left:50%;margin-left:-400px;position:absolute;top:23%;width:800px;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;}
	.theader{margin-bottom:26px;}
	.size_large{float:none;width:300px;height:70px;margin:0 auto;text-align:center;line-height:62px;font-size:32px;}
	.size_large .logo_anchor{color:#999}
	.size_large .logo_anchor:hover{color:#529ECC;}
	.form_row{width:320px;margin:0 auto;text-align:center}
	.form_row input{padding:11px 10px 11px 13px;display:block;margin:2px 0;width:100%;border:0;background:#f5eaea;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;height:60px;outline:none;font-family:"微软雅黑";font-size:14px;}
	.form_row input:focus{background:#FAEEBE;transition:all 0.5s linear;}
	.forgetPwd{color:red}
	.buttons{text-align:center;margin-top:10px}
	.buttons .loginbtn{background:#529ECC;padding:10px 120px;font-size:20px;color:#f9f9f9;border-radius:4px;}
	.buttons .loginbtn:hover{background:#1D3C4F;transition:all 0.5s ease;}
	.form_row_email{border-bottom:1px solid #FAEBEB}
</style>
</head>

<body>
	<div class="container">
		<div class="theader">
			<h1 class="logo size_large">
				<a class="logo_anchor" href="javascript:void(0);">彩票圈后台管理系统</a>
			</h1>
		</div>
		<div class="signup_view account login" style="height: 160px;">
			<div class="form_row form_row_email">
				<input type="text" autocomplete="off" autofocus="autofocus" maxlength="80" name="account" placeholder="请输入账号..."
					id="account"/>
			</div>
			<div class="form_row form_row_password">
				<input type="password" name="password" autocomplete="off"  maxlength="20" placeholder="请输入密码..."
					id="password"/>
			</div>
			<div class="form_row">
				<span class="forgetPwd">忘记密码？请及时联系管理员</span>
			</div>
		</div>
		<div class="buttons">
			<a href="javascript:void(0);" id="login" onclick="moxi_login(this)" class="loginbtn">登陆</a>
		</div>
	</div>
	<script type="text/javascript">
	$(function(){
		//设置回车键触发登录方法
		$(document).keydown(function(e){
 			if(e.keyCode==13){
 				moxi_login();
  			}
 		});
 		//将用户名缓存起来
 		$("#account").keyup(function(){
			tzMap.put("moxi_admin_account",$(this).val(),1);	 			
 		});
 		//取到缓存的用户名
 		var username = tzMap.get("moxi_admin_account",1);
 		//如果缓存不为空，那就从缓存中拿到用户名
 		if(username)$("#account").val(username);
 		
	});
	
	//登录方法
	var timer = null;
	function moxi_login(obj){
		clearTimeout(timer);
		timer=setTimeout(function(){
			var account = $("#account").val();
			var password = $("#password").val();
			var params = {account:account,password:password};
	  		$.ajax({
	  			type:"post",
	  			beforeSend:function(){$("#login").off("click").text("登陆中...");},
				error:function(){$("#login").on("click",moxi_login).text("登陆");},
	  			url:"/logined",
	  			data:params,
	  			success:function(data){
	  				if(data=="error" || data=="null"){//用户名和密码参数为空
	  					loading("请填写账号或者密码...",3);
	  					$("#password").val("");
	  					$("#account").select();
	  					$("#login").on("click",moxi_login).text("登陆");//重新绑定事件
	  				}else if(data=="fail"){
	  					//账号或者密码输入错误
	  					$("#password").val("");
	  					$("#account").select();
	  					loading("请输入正确的账号和密码...",3);
	  					$("#login").on("click",moxi_login).text("登陆");//重新绑定事件
	  				}else if(data=="forbiden"){//账号被禁止掉的时候
	  					$("#password").val("");
	  					$("#account").select();
	  					loading("很遗憾，您的账号已被禁止...",5);
	  					$("#login").on("click",moxi_login).text("登陆");//重新绑定事件
	  				}else{
	  					//登陆成功,跳转到后台首页
	  					window.location.href = adminPath+"/index";
	  				}
	  			}
	  		});
		},200);
	};
	</script>
</body>
</html>
