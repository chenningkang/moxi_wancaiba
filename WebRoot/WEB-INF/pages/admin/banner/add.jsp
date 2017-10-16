<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>彩票圈Banner添加页面</title>
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
				<p>您当前所在位置：<a href="/admin/index">首页</a> > banner管理 </p>
			</div>
			
			<div class="r_content">
				<form id="period_form" method="post">
					<!-- 内容区域 start -->
					<div class="con_right">
						<!-- 内容ID -->
						<c:if test="${not empty id}">
							<div class="conr_nr">
								<div class="choose" style="height:37px;">图片ID：</div>
								<input type="text" class="text kc_name" style="width:100px"
									name="id" id="p_id" value="${editBanner.id}"
									readonly="readonly" />
								<div class="clearfix"></div>
							</div>
						</c:if>

						<!-- 标题、类别 -->
						<div class="conr_nr">
							<div class="choose" style="height:37px;">图片标题：</div>
							<input type="text" class="text kc_name" name="name" id="p_name" value="${editBanner.name}" placeholder="请输入图片标题..."
								style="width:472px;" /><span class="star">*</span>
							<div class="clearfix"></div>
						</div>
						<div class="conr_nr">
							<div class="choose" style="height:37px;">所属公司：</div>
							<select id="listc" name="comId" style="padding: 7px 0;margin-top: 2px;">
								<option value="">--选择公司名称--</option>
								<c:forEach items="${companies}" var="coms">
									<option ${coms.id==editBanner.comId ? 'selected="selected"' : ''} value="${coms.id}">${coms.cname}</option>
								</c:forEach>
							</select>
							<div class="clearfix"></div>
						</div>
						
						<div class="conr_nr">
							<div class="choose" style="height:37px;">广告位置：</div>
							<select id="listbl" name="locationId" style="padding: 7px 0;margin-top: 2px;">
								<option value="">--选择广告位置--</option>
								<c:forEach items="${bLocations}" var="blc">
									<option ${blc.id==editBanner.locationId ? 'selected="selected"' : ''} value="${blc.id}">${blc.bannerLocation}</option>
								</c:forEach>
							</select>
							<div class="clearfix"></div>
						</div>
						
							
							
						<div class="conr_nr">
							<div class="choose" style="height:37px;">链接地址：</div>
							<input type="text" class="text kc_name" name="urlLink" id="p_link" value="${editBanner.urlLink}"
								placeholder="请输入链接地址..." style="width:472px;" /><span class="star">*</span>
							<div class="clearfix"></div>
						</div>

						<!-- 上传图片 -->
						<div class="conr_nr">
							<div class="choose" style="height:37px;">图片预览：</div>
							<div class="buttons">
								<div class="fl pic_area" data-img="" id="uimg">
									<img src="${editBanner.path}" width="472" height="187" id="uhimg"/>
									<input type="hidden" id="himgpath" value="${editBanner.path}" name="path">
								</div>
								<div class="clearfix"></div>
								<div class="wth682">
									<input id="upfile" onclick="openBrowse(this)" type="button" value="上传图片" class="imgup"/>
								</div>
							</div>
						</div>
						<input type="file" id="file" name="file" onchange="uploadHearder(this)" style="display:none" />
						
						<!-- 图片宽度 -->
						<div class="conr_nr">
							<div class="choose" style="height:37px;">图片宽*高：</div>
							<input type="text" class="text kc_name" name="width" id="p_width" value="${editBanner.width}"
								placeholder="宽度..." style="width:60px;" /><span style="margin-top:8px">px</span><span style="margin:10px 10px 0 10px">*</span>
							<input type="text" class="text kc_name" name="height" id="p_height" value="${editBanner.height}"
								placeholder="高度..." style="width:60px;" /><span style="margin-top:8px">px</span><span class="star">*</span>
							<div class="clearfix"></div>
						</div>
						
						<!-- 内容 -->
						<div class="conr_nr">
							<div class="choose" style="height:37px;">图片描述：</div>
							<textarea id="p_description" class="text kc_infor"
								name="description" placeholder="请输入banner描述..."
								style="width:472px;height:120px;overflow:scroll;resize:none;">${editBanner.description}</textarea>
							<span class="star">*</span>
							<div class="clearfix"></div>
						</div>
						<!-- 按钮 start -->
						<div class="conr_nr">
							<div class="wth682">
								<!-- 在保存的时候缓存一个id，方便判断是不是修改操作 -->
								<input name="" type="button" value="保存" data-opid="${editBanner.id}" onclick="moxi_saveBanner(this)"
									class="submit" style="margin-left:90px" />
								<input name="" type="button" value="取消" onclick="window.location.href = '/admin/banner/list'"
									class="cancle"/>
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
	function moxi_saveBanner(obj) {
		//方法一：直接序列化
		var params = $("#period_form").serialize();
		
		$.ajax({
			type : "post",
			url : "/admin/banner/save",
			data : params,
			success : function(data) {
				if (data.stateCode = "1000") {
					loading("保存成功...", 2);
					window.location.href = "/admin/banner/list";
				}
			},
			error : function(e) {
				loading("保存失败...", 2);
			}
		});
	}

	//设置代理，实现自定义按钮打开系统文件上传框
	var $fileObj = null;
	function openBrowse(obj) {
		$fileObj = $(obj);
		var ie = navigator.appName == "Microsoft Internet Explorer" ? true
				: false;
		if (ie) {
			document.getElementById("file").click();
			document.getElementById("filename").value = document
					.getElementById("file").value;
		} else {
			var a = document.createEvent("MouseEvents");//FF的处理 
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
		var dirPath = "adImgs";
		xhr.open("post", "/admin/upload?dir=" + dirPath, true);
		xhr.onreadystatechange = function() {
			if (xhr.readyState == 4 && xhr.status == 200) {//状态4和200代表和服务器端交互成功
				var data = eval("(" + xhr.responseText + ")");
				var upurl = "/resources/images/" + data.url;
				$("#himgpath").val(upurl);
				$("#uhimg").attr("src", "/resources/images/" + data.url);
			}
		};
		xhr.send(form);
	};
</script>

</body>
</html>