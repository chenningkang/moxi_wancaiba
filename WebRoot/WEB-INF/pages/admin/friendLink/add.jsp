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
				<p>您当前所在位置：<a href="/admin/index">首页</a> > 友情链接管理 </p>
			</div>
			
			<div class="r_content">
				<form id="fLink_form" method="post">
				     <!-- 内容区域 start -->
				     <div class="con_right">
				     	<!-- 内容ID -->
				     	<c:if test="${not empty id}">
				            <div class="conr_nr">
				            <div class="choose" style="height:37px;">链接ID： </div> 
					        	<input type="text" class="text kc_name" style="width:100px" name="id" id="moxi_linkId" value="${editFriendLink.id}"  readonly="readonly"  />
						        <div class="clearfix"></div>
					        </div>
				        </c:if>
				        
				        <!-- 标题、类别 -->
				        <div class="conr_nr">
				        <div class="choose" style="height:37px;">标题： </div>   
					        <input type="text" class="text kc_name" name="name" id="p_name" value="${editFriendLink.name}" placeholder="请输入友情链接标题..." /><span class="star">*</span>
					 			&nbsp;&nbsp;&nbsp;
					        <div class="clearfix"></div>
						</div>

						<div class="conr_nr">
							<div class="choose" style="height:37px;">链接地址：</div>
							<input type="text" class="text kc_name" name="url" id="p_url"
								value="${editFriendLink.url}" placeholder="请输入友情链接地址..." /><span
								class="star">*</span> &nbsp;&nbsp;&nbsp;
							<div class="clearfix"></div>
						</div>

						<!-- 上传图片 -->
						<div class="conr_nr">
							<div class="choose" style="height:37px;">图片预览：</div>
							<div class="buttons">
								<div class="fl pic_area" data-img="${editFriendLink.path}" id="uimg">
									<img src="${editFriendLink.path}" width="472" height="187" id="uhimg">
									<input type="hidden" id="himgpath" value="${editFriendLink.path}" name="path" >
								</div>
								<div class="clearfix"></div>
								
								<div class="wth682">
									<input id="upfile" class="imgup" onclick="openBrowse(this)" type="button" value="上传图片" >
								</div>
							</div>
						</div>
						
						<input type="file" id="file" name="file" onchange="uploadHearder(this)" style="display:none"/> 
						
						<!-- 内容 -->
				        <div class="conr_nr">
				        <div class="choose" style="height:37px;">链接描述： </div>
					        <textarea id="p_description"  class="text kc_infor" name="description" placeholder="请输入友情链接描述..." style="width:472px;height:200px;overflow:scroll;resize:none;" >${editFriendLink.description}</textarea>
					        <div class="clearfix"></div>
				        </div>				        
				        <!-- 按钮 start -->
				        <div class="conr_nr">
				             <div class="wth682">
				             	<!-- 在保存的时候缓存一个id，方便判断是不是修改操作 -->
				             	<input name="" type="button" value="保存" data-opid="${editFriendLink.id}" onclick="moxi_saveFLink(this)" class="submit" style="margin-left:90px;"/>
				             	<input name="" type="button" value="取消" onclick="window.location.href = '/admin/friendLink/list'"  class="cancle" />
				             </div>
				        </div>  
					 </div>
			     </form>
			</div>
		</div>
		<!--end c_right-->
	</div>
	<script type="text/javascript">
	
		//利用serialize的方式来获取数据
		function moxi_saveFLink(obj){
			//方法一：直接序列化
			var params = $("#fLink_form").serialize();
			$.ajax({
				type:"post",
				url:"/admin/friendLink/save",
				data:params,
				success:function(data){
					if(data.stateCode="1000"){
						loading("操作成功...",2);
						window.location.href = "/admin/friendLink/list";
					}
				},
				 error:function(e){
					 loading("保存失败...",2);
				 }
			});
		}
		
		//设置代理，实现自定义按钮打开系统文件上传框
		var $fileObj = null;
		function openBrowse(obj){
			$fileObj = $(obj);
			var ie=navigator.appName=="Microsoft Internet Explorer" ? true : false;
			if(ie){
				document.getElementById("file").click();
				document.getElementById("filename").value=document.getElementById("file").value;
			}else{
				var a=document.createEvent("MouseEvents");//FF的处理 
				a.initEvent("click", true, true);
				document.getElementById("file").dispatchEvent(a);
			} 
		};
		
		//当input的file框内容变化时，开始执行上传操作
		function uploadHearder() {
		    var fileObj = document.getElementById("file").files[0]; // js 获取文件对象
		    // 动态创建一个FormData 对象
		    var form = new FormData();
		    form.append("doc", fileObj);// 文件对象
		    // XMLHttpRequest 对象
		    var xhr = new XMLHttpRequest();
		    var dirPath = "fLinkImgs";
		    xhr.open("post", "/admin/upload?dir="+dirPath, true);
		    xhr.onreadystatechange = function(){
				if(xhr.readyState==4 && xhr.status==200){//状态4和200代表和服务器端交互成功
					var data = eval("("+xhr.responseText+")");
					var uputl = "/resources/images/"+data.url;
					$("#himgpath").val(uputl);
					$("#uhimg").attr("src","/resources/images/"+data.url);
				}
			};
		    xhr.send(form);
		};
			
	</script>

</body>
</html>