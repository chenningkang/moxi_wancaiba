<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>彩票圈频道添加</title>
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
				<p>您当前所在位置：<a href="/admin/index">首页</a> > 栏目管理 </p>
			</div>
			
			<div class="r_content">
				<form id="ch_form" method="post">
				     <!-- 内容区域 start -->
				     <div class="con_right">
				     	<!-- 内容ID -->
				     	<c:if test="${not empty id}">
				            <div class="conr_nr">
				            	<div class="choose">主键ID：</div>
					        	<input type="text" class="text kc_name" style="width:100px" name="id" id="p_id" value="${editChannel.id}"  readonly="readonly"  />
						        <div class="clearfix"></div>
					        </div>
				        </c:if>
				        
				        <!-- 频道 -->
				      	<div class="conr_nr">
				        	<div class="choose">频道名称：</div>
				            <input type="text" class="text kc_name" name="name" id="p_name" value="${editChannel.name}" placeholder="请输入频道名称..." style="width:240px"/><span class="star">*</span>
				 			&nbsp;&nbsp;&nbsp;
				 			父频道：<select style="padding: 6px;margin-top: 2px;" name="parentId" id="p_parentId">
				 			            <option value="">请选择父频道</option>
				 			            <option value="0">父频道</option>
				 			            <c:forEach items="${pChannels}" var="pcs">
											<option ${pcs.id==editChannel.parentId ? 'selected="selected"' : ''} value="${pcs.id}">${pcs.name}</option>
										</c:forEach>
				                  </select>  
				            <div class="clearfix"></div>
						</div>
						<!-- 内容 -->
				   		<div class="conr_nr">
				    	<div class="choose"> 频道描述：</div>
					        <textarea id="p_description"  class="text kc_infor" name="description" placeholder="请输入频道描述..." style="width:438px;height:100px">${editChannel.description}</textarea><span class="star">*</span>
					        <div class="clearfix"></div>
				        </div>
				        <input type="hidden" value="${session_user.id}" name="userId">
				        <!-- 按钮 start -->
				        <div class="conr_nr">
				             <div class="wth682">
				             	<!-- 在保存的时候缓存一个id，方便判断是不是修改操作 -->
				             	<input name="" type="button" value="保存" data-opid="${editChannel.id}" onclick="moxi_savechannel(this)" style="margin-left: 90px" class="submit" />
				             	<input name="" type="button" value="取消" onclick="window.location.href = '/admin/channel/list'"   class="cancle" />
				             </div>
				        </div>  
					 </div>
			     </form>
			</div>
		</div>
		<!--end c_right-->
	</div>
	<script type="text/javascript">

		//保存频道信息
		function moxi_savechannel(obj){
			var params = $("#ch_form").serialize();
			var pname = $("#p_name").val();
			var pparentId = $("#p_parentId").val();
			var pdescription = $("#p_description").val();
			
			if(isEmpty(pname)){
				loading("频道名称不能为空哦！",3);
				$("#p_name").focus();
				return;
			}
			if(isEmpty(pparentId)){
				loading("父频道不能为空哦！",3);
				$("#p_parentId").focus();
				return;
			}
			if(isEmpty(pdescription)){
				loading("频道描述不能为空哦！",3);
				$("#p_description").focus();
				return;
			}
			
			$.ajax({
				type:"post",
				url:"/admin/channel/save",
				data:params,
				success:function(data){
					if(data.stateCode="1000"){
						loading("保存成功...",2);
						window.location.href = "/admin/channel/list";
					}
				},
				 error:function(e){
					 loading("保存失败...",2);
				 }
			});
		}
		
	</script>

</body>
</html>