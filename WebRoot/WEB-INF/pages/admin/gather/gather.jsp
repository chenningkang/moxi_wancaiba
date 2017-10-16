<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>彩票圈内容采集页面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<%@include file="/common/commonadmin.jsp" %>
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
				<p>您当前所在位置：<a href="/admin/index">首页</a> > 网络爬虫</p>
			</div>
			
			<div class="r_content">
				<form id="con_form" method="post">
				     <!-- 内容区域 start -->
				     <div class="con_right">
				        
				        <!-- 目标 -->
				        <div class="conr_nr">
				        	<div class="choose">目标站点：</div>
				           	<input type="text" class="text kc_name" id="orgUrl" value="https://www.800820.net" style="width:380px" /><span class="star">*</span>
				            <div class="clearfix"></div>
						</div>
						<div class="conr_nr">
				        	<div class="choose">数据地址：</div>
				           	<input type="text" class="text kc_name" id="gatherUrl" placeholder="请输入目标数据地址..." style="width:380px" /><span class="star">*</span>
				            <div class="clearfix"></div>
						</div> 
						<div class="conr_nr">
				        	<div class="choose">频道：</div>
				        	<select id="channelId" style="padding: 6px 0;margin-top: 2px;">
				              	<option value="">-请选择频道-</option>
				       			<c:forEach items="${channels}" var="chs">
									<option value="${chs.id}">${chs.name}</option>
								</c:forEach>
				            </select>
				            <div class="clearfix"></div>
						</div> 
						<div class="conr_nr">
				        	<div class="choose">标签：</div>
				           	<input type="text" class="text kc_name" id="tagName" placeholder="请输入标签..." style="width:160px" /><span class="star">*</span>
				            <div class="clearfix"></div>
						</div>
						
						
				        <!-- 按钮 start -->
				        <div class="conr_nr">
				             <div class="wth682">
				             	<!-- 在保存的时候缓存一个id，方便判断是不是修改操作 -->
				             	<input name="" type="button" value="开始采集" id="gatherBtn" onclick="moxi_gather(this)" class="submit" />
				             	<input name="" type="button" value="取消" onclick="window.location.href = '/admin/index'" style="margin-left: 10px"  class="cancle" />
				             </div>
				        </div>  
					 </div>
			     </form>
			</div>
		</div>
		<!--end c_right-->
	</div>
	<script type="text/javascript">

	var timer = null;
	function moxi_gather(obj){
		clearTimeout(timer);
		timer=setTimeout(function(){
			var orgUrl = $("#orgUrl").val();
			var gatherUrl = $("#gatherUrl").val();
			var channelId = $("#channelId").val();
			var tagName = $("#tagName").val();
			if(isEmpty(orgUrl)){
				loading("原始站点地址不能为空",3);
				return;
			}
			if(isEmpty(gatherUrl)){
				loading("目标站点地址不能为空",3);
				return;
			}
			if(isEmpty(channelId)){
				loading("请选择一个频道",3);
				return;
			}
			if(isEmpty(tagName)){
				loading("标签不能为空",3);
				return;
			}
			
			var params = {orgUrl:orgUrl,gatherUrl:gatherUrl,channelId:channelId,tagName:tagName};
	  		$.ajax({
	  			type:"post",
	  			beforeSend:function(){$("#gatherBtn").off("click").text("采集中...");},
				error:function(){$("#gatherBtn").on("click",moxi_login).text("开始采集");},
	  			url:"/admin/content/gather",
	  			data:params,
	  			success:function(data){
	  				if(data){
	  					loading("数据爬取完成",3);
	  				}
	  			}
	  		});
		},200);
	};
		
	</script>
</body>
</html>