<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>彩票圈-${moreDatas[0]["cname"]}</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<%@include file="/common/common.jsp" %>
	<script type="text/javascript" src="/resources/sg/tz_page.js"></script>
	<style>
		.title{width: 308px;float: left;line-height: 27px;}
  	</style>
 </head>
 <body>
 	<!-- 引入通用的头部 -->
	<%@include file="/common/web/header.jsp" %>

	<!-- 当前所在位置 -->
	<div class="fix"></div>
	<div class="box">
		<div class="location">
			<div class="left">
				您现在的位置：<a href="/" target="_self">彩票圈</a> >> <a href="/${moreDatas[0]['description']}" target="_self">${moreDatas[0]["pname"]}</a> >> <a href="/web/content/more/${moreDatas[0]['chid']}" target="_self">${moreDatas[0]["cname"]}</a>
			</div>
		</div>
	</div>

	<!-- 列表一览 -->
	<div class="fix"></div>
	<div class="list">
		<!-- 列表标题 -->
		<div class="title"><h2>${moreDatas[0]["cname"]}</h2></div>
		<div class="cpage" style="margin-right:24px"></div><!-- 分页初始化位置 -->
		<div class="fix"></div>
			<ul id="listBody" data-chid="${moreDatas[0]['chid']}">
				<c:forEach items="${moreDatas}" var="more" varStatus="num">
					<li class="bg" data-dopid="${more.id}">
						<span class="num">${num.index+1}</span>
						<c:if test="${more.isTop==1}">
							<a class="best" href="/web/content/detail/${more.id}" target="_blank">${more.title}</a>
						</c:if>
						<c:if test="${more.isTop==0}">
							<a href="/web/content/detail/${more.id}" target="_blank">${more.title}</a>
						</c:if>
					</li>
				</c:forEach>
			</ul>
		<div class="fix"></div>
		<div class="cpage" style="margin-right:24px"></div><!-- 分页初始化位置 -->
		<input type="hidden" value="${itemCount}" id="itemCount">
	</div>

	<!-- 引入通用的尾部 -->
	<%@include file="/common/web/footer.jsp" %>

	<script type="text/javascript">
		$(function(){
			//内容总数
			var itemCount = $("#itemCount").val();
			//初始化分页
			$(".cpage").tzPage(itemCount, {
				num_edge_entries : 1, //边缘页数
				num_display_entries :5, //主体页数
				num_edge_entries:5,
				current_page:0,
				showGo:true,
				showSelect:true,
				items_per_page : 66, //每页显示X项
				prev_text : "上一页",
				next_text : "下一页",
				callback : function(pageNo,psize){//回调函数
					loadData(pageNo,psize);
				}
			});
		});
		
		//加载分页数据（使用模板加载）
		function loadData(pageNo,pageSize,callback){
			//拿到频道id
			var channelId = $("#listBody").data("chid");
			//节流处理，防止重复提交
			clearTimeout(this.ltimer);
			this.ltimer = setTimeout(function(){
				$.ajax({
					type:"post",
					url:webPath+"/content/more/template",
					data:{pageNo:pageNo*pageSize,pageSize:pageSize,channelId:channelId},
					success:function(data){
						var $data = $(data);
						$("#listBody").html($data);//追加元素到dom中
						//拿到模板中的内容总数，为下一次分页做准备
						var itemCount = $data.find("#itemCount").val();
						//回调执行分页操作
						if(callback)callback(itemCount);
					}
				});
			},300);
		}
	</script>
 </body>
</html>