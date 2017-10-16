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
				<p>您当前所在位置：<a href="/admin/index">首页</a> > 公司管理 </p>
			</div>
			
			<div class="r_content">
				<form id="company_form" method="post">
				     <!-- 内容区域 start -->
				     <div class="con_right">
				     	<!-- 内容ID -->
				     	<c:if test="${not empty id}">
				            <div class="conr_nr">
				            <div class="choose" style="height:37px;"> 公司ID：  </div>
					        	<input type="text" class="text kc_name" style="width:100px" name="id" id="p_id" value="${editCompany.id}"  readonly="readonly"  />
						        <div class="clearfix"></div>
					        </div>
				        </c:if>
				        
					    <!-- 公司名称 -->
				        <div class="conr_nr">
				         	<div class="choose"> 公司名称：  </div>
				            <input type="text" class="text kc_name" name="cname" id="p_name" value="${editCompany.cname}" placeholder="请输入公司名称..." style="width:472px"/><span class="star">*</span>
				            <div class="clearfix"></div>
						</div> 
						
						<div class="conr_nr">
				         	<div class="choose"> 公司性质：  </div>
				            <select id="p_nature" name="nature" style="padding: 6px 2px;margin-top: 2px;">
			                    <option value="">-选择公司性质-</option>
			 					<option value="0" ${editCompany.nature==0?"selected='selected'":""}>国企</option>
				             	<option value="1" ${editCompany.nature==1?"selected='selected'":""}>私营</option>
				               	<option value="2" ${editCompany.nature==2?"selected='selected'":""}>外企</option>
				            </select>
				            <div class="clearfix"></div>
						</div> 
					 	<div class="conr_nr">
							<div class="choose"> 公司电话：  </div>
				            <input type="text" class="text kc_name" name="phone" id="p_phone" value="${editCompany.phone}" placeholder="请输入公司电话..."  onblur="checkPhone()" /><span class="star">*</span>
				 			<div class="clearfix"></div>
						</div>
						
					  	<div class="conr_nr">
							<div class="choose"> 公司地址：  </div>
				 			<input type="text" class="text kc_name" name="address" id="p_address" value="${editCompany.address}" placeholder="请输入公司地址..." /><span class="star">*</span>
				 			<div class="clearfix"></div>
						</div>
						
				        <div class="conr_nr">
				        	<div class="choose">  公司介绍：  </div>
					        <textarea id="p_introduce"  class="text kc_infor" name="introduce" placeholder="请输入公司介绍..."  style="width:470px;height:200px;overflow:scroll;resize:none;">${editCompany.introduce}</textarea>
					        <div class="clearfix"></div>
				        </div>
				        <!-- 按钮 start -->
				        <div class="conr_nr">
				             <div class="wth682">
				             	<!-- 在保存的时候缓存一个id，方便判断是不是修改操作 -->
				             	<input name="" type="button" value="保存" data-opid="${editCompany.id}" onclick="moxi_saveCom(this)" style="margin-left:90px" class="submit" />
				             	<input name="" type="button" value="取消" onclick="window.location.href = '/admin/company/list'"   class="cancle" />
				             </div>
				        </div>  
					 </div>
			     </form>
			</div>
		</div>
		<!--end c_right-->
	</div>
	<script type="text/javascript">
		//保存公司信息方法
		function moxi_saveCom(obj){
			var params = $("#company_form").serialize();
			//公司名
			var pname = $("#p_name").val();
			//公司性质名
			var pnature = $("#p_nature").val();
			//公司电话
			var pphone = $("#p_phone").val();
			//地址
			var paddress = $("#p_address").val();
			//公司名称为空时
			if(isEmpty(pname)){
				loading("公司名称不能为空哦！",3);
				$("#p_name").focus();
				return;
			}
			//公司性质为空时
			if(isEmpty(pnature)){
				loading("公司性质不能为空哦！",3);
				$("#p_nature").focus();
				return;
			}
			//公司电话为空时
			if(isEmpty(pphone)){
				loading("公司电话不能为空哦！",3);
				$("#p_phone").focus();
				return;
			}
			//公司地址为空时
			if(isEmpty(paddress)){
				loading("公司地址不能为空哦！",3);
				$("#p_address").focus();
				return;
			}
			
			$.ajax({
				type:"post",
				url:"/admin/company/save",
				data:params,
				success:function(data){
					if(data.stateCode="1000"){
						loading("保存成功...",2);
						window.location.href = "/admin/company/list";
					}
				},
				 error:function(e){
					 loading("保存失败...",2);
				 }
			});
		};
		
		//check电话号码
		function checkPhone(){
			//公司电话
			var pphone = $("#p_phone").val();
			var regex = /1[3-8]+\d{9}/;
			if(isNotEmpty(pphone)){
				if (!regex.test(pphone)) {
					loading("请填写正确的手机号码", 3);
					$("#p_phone").select();
					return;
				}
			}
		};
	</script>

</body>
</html>