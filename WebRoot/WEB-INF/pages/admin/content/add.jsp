<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>彩票圈内容添加</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<%@include file="/common/commonadmin.jsp" %>
	<script type="text/javascript" src="/resources/sg/tz_page.js"></script>
	<script type="text/javascript" src="/ueditor/ueditor.config.js"></script>  
	<script type="text/javascript" src="/ueditor/ueditor.all.min.js"></script>  
	<script type="text/javascript" src="/ueditor/lang/zh-cn/zh-cn.js"></script>
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
				<p>您当前所在位置：<a href="/admin/index">首页</a> > 内容管理</p>
			</div>
			
			<div class="r_content">
				<form id="con_form" method="post">
				     <!-- 内容区域 start -->
				     <div class="con_right">
				     	<!-- 内容ID -->
				      	 <c:if test="${not empty id}">
				            <div class="conr_nr">
				            <div class="choose">主键ID：</div>
					       	<input type="text" class="text kc_name" style="width:100px" name="id" id="p_id" value="${editContent.id}"  readonly="readonly"  />
						        <div class="clearfix"></div>
					        </div>
				        </c:if>  
				        
				        <!-- 标题、类别 -->
				        <div class="conr_nr">
				        	<div class="choose">标题：</div>
				           	<input type="text" class="text kc_name" name="title" id="p_title" value="${editContent.title}" placeholder="请输入标题..." style="width:380px" /><span class="star">*</span>
				 			&nbsp;&nbsp;&nbsp;
					                         所属频道：<select id="listc" name="channelId" style="padding: 6px 0;margin-top: 2px;">
					              	<option value="">-请选择频道-</option>
					       			<c:forEach items="${channels}" var="chs">
										<option ${chs.id==editContent.channelId ? 'selected="selected"' : ''} value="${chs.id}">${chs.name}</option>
									</c:forEach>
					            </select>	
				            <div class="clearfix"></div>
						</div> 
						<div class="conr_nr">
							<!-- 隐藏内容 -->
							<div  style="display:none">
								<textarea id="p_content" class="text kc_infor" name="content">${editContent.content}</textarea>
								<div class="clearfix"></div>
							</div>
							<!-- uedit内容 -->
							<div>
								<span style="white-space:pre"> </span>
								<script id="ueditor" type="text/plain">${editContent.content}</script>
							</div>
							
							<div id="editor" style="height:360px;">
								<script type="text/javascript" charset="utf-8">
									var ue = UE.getEditor('editor');//初始化对象  
									$(document).ready(function() {
										var ue = UE.getEditor('editor');
										var proinfo = $("#p_content").text();
										ue.ready(function() {//编辑器初始化完成再赋值  
											ue.setContent(proinfo); //赋值给UEditor  
										});
	
									});
								</script>
							</div>
						</div>
				        <div class="conr_nr">
				             <div class="wth682">
					             <div class="choose">标签：</div>
					             <div class="star_all"><input type="text" name="tag" value="${editContent.tag}" placeholder="请输入标签..." style="height:37px" id="p_tag"></div>
					             <c:if test="${not empty id}">
					              	<div class="choose">责任编辑：</div>
					             	<div class="star_all"><input type="text" name="username" value="${editContent.username}" id="p_editor" style="height:37px" readonly="readonly"></div>
					             </c:if>
					             <div class="clearfix"></div> 
				             </div>
				        </div>
				        <!-- 按钮 start -->
				        <div class="conr_nr">
				             <div class="wth682">
				             	<!-- 在保存的时候缓存一个id，方便判断是不是修改操作 -->
				             	<input name="" type="button" value="保存" data-opid="${editContent.id}" onclick="moxi_savecon(this)" class="submit" />
				             	<input name="" type="button" value="取消" onclick="window.location.href = '/admin/content/list'" style="margin-left: 10px"  class="cancle" />
				             </div>
				        </div>  
					 </div>
			     </form>
			</div>
		</div>
		<!--end c_right-->
	</div>
	<script type="text/javascript">

		function moxi_savecon(obj){
			//方法一：直接序列化
			var params = $("#con_form").serialize();
			$.ajax({
				type:"post",
				url:"/admin/content/save",
				data:params,
				success:function(data){
					if(data.stateCode="1000"){
						loading("操作成功...",2);
						window.location.href = "/admin/content/list";
					}
				},
				 error:function(e){
					 loading("保存失败...",2);;
				 }
			});
		};
		
	</script>
</body>
</html>