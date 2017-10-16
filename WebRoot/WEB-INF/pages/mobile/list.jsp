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
	<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
	<%@include file="/common/commonmobile.jsp" %>
	<script type="text/javascript" src="/resources/sg/tz_page.js"></script>
	<style>
		@media screen and (min-width:460px){
			#listBody li{width:47%;float:left!important;margin-left:1%;margin-right:1%}
			.logotop .logolf{width:34%;}
			.logotop .logort{width:64%;}
			.logotop .zones li{width:100%}
		}
		
  	</style>
 </head>
 <body>
 	<!-- 引入通用的头部 -->
	<%@include file="/common/mobile/header.jsp" %>

	<!-- 当前所在位置 -->
	<div class="box">
		<div class="lc">
			<div class="location" >
				位置：<a href="/" target="_self">彩票圈</a> >> <a href="/m/${moreDatas[0]['description']}" target="_self">${moreDatas[0]["pname"]}</a> >> <a href="/mobile/content/more/${moreDatas[0]['chid']}" target="_self">${moreDatas[0]["cname"]}</a>
			</div>
		</div>
	</div>

	<!-- 列表一览 -->
	<div class="fix"></div>
	
	<div class="box">
		<div class="sc">
			<div class="list">
				<!--列表标题  -->
				<div class="title"><h2>${moreDatas[0]["cname"]}</h2></div>
				<div class="cpage"></div>
				<ul id="listBody" data-chid="${moreDatas[0]['chid']}">
					<c:forEach items="${moreDatas}" var="more" varStatus="num">
						<li class="bg" data-dopid="${more.id}">
							<span class="num">${num.index+1}</span>
							<c:if test="${more.isTop==1}">
								<a class="best" href="/mobile/content/detail/${more.id}" target="_blank">${more.title}</a>
							</c:if>
							<c:if test="${more.isTop==0}">
								<a href="/mobile/content/detail/${more.id}" target="_blank">${more.title}</a>
							</c:if>
						</li>
						
					</c:forEach>
				</ul>
				<!--分页初始化位置 -->
				<div class="cpage"></div>
				<input type="hidden" value="${itemCount}" id="itemCount">
			</div>
		</div>
	</div>
	
	<!-- 引入通用的尾部 -->
	<%@include file="/common/mobile/footer.jsp" %>

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
			showGo:false,
			showSelect:false,
			items_per_page : 50, //每页显示X项,controller也有配置
			prev_text : "<",
			next_text : ">",
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
				url:mPath+"/content/more/template",
				data:{pageNo:pageNo*pageSize,pageSize:pageSize,channelId:channelId},
				success:function(data){
					var $data = $(data);
					$("#listBody").html($data);//追加元素到dom中
					//拿到模板中的内容总数，为下一次分页做准备
					//回调执行分页操作
					if(callback){
						var itemCount = $data.find("#itemCount").val();
						callback(itemCount);
					}
				}
			});
		},300);
	}
	</script>
 </body>
</html>