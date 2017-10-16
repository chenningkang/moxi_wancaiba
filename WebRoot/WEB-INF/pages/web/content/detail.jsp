<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>彩票圈-${detailDatas.title}</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<%@include file="/common/common.jsp" %>
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
				您现在的位置：<a href="/" target="_self">彩票圈</a> >> <a href="/${detailDatas.chDesc}" target="_self">${detailDatas.pname}</a> >> <a href="/web/content/more/${detailDatas.chid}" target="_self">${detailDatas.cname}</a> >> <a href="#" target="_self">正文</a>
			</div>
		</div>
	</div>

	<!-- 资讯详情 -->
	<div class="fix"></div>
	<div class="box">
		<div class="detail">
			<div class="left">
				<div class="content" id="leftcnt">
					<!-- 标题 -->
					<h2>${detailDatas.title}</h2>
					<div class="fix"></div>
					<div class="about">标签：${detailDatas.tag}&nbsp;&nbsp;&nbsp;<span>时间：${mx:formatDate(detailDatas.createTime,'yyyy-MM-dd')}</span></div>
					<div class="fix"></div>
					<div class="fix"></div>
					<!-- 内容详情 -->
					<div class="text">
						${detailDatas.content}
					</div>
				</div>
				
				<div class=dLeftAd>
					<ul>
						<c:forEach items="${detialLeft}" var="dl">
							<li>
								<a href="${dl.urlLink}" target='_blank'><img src="${dl.path}" alt="" width="${dl.width}" height="${dl.height}" /></a>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
			
			<!-- 右侧新闻列表 -->
			<div class="right">
				<div class="plist" style="height:636px">
					<ul id="dedailList">
						<li data-cid="${detailDatas.chid}" class="title" id="latestArticles"><span>相似文章</span><span class="more">
							<a href="/web/content/more/${detailDatas.chid}">更多..</a></span>
						</li>
					</ul>
				</div>
				<div class="dRightAd">
					<ul>
						<c:forEach items="${detialRight1}" var="dr1">
							<li>
								<a href="${dr1.urlLink}" target='_blank'><img src="${dr1.path}" alt="" width="${dr1.width}" height="${dr1.height}" /></a>
							</li>
						</c:forEach>
					</ul>
				</div>
				<div class="dRightAd">
					<ul>
						<c:forEach items="${detialRight2}" var="dr2">
							<li>
								<a href="${dr2.urlLink}" target='_blank'><img src="${dr2.path}" alt="" width="${dr2.width}" height="${dr2.height}" /></a>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
			
		</div>
	</div>

	<!-- 引入通用的尾部 -->
	<%@include file="/common/web/footer.jsp" %>

	<script type="text/javascript">
		$(function(){
			//拿到相似文章的频道id
			var cid = $("#latestArticles").data("cid");
			
			//加载相似新闻
			moxi_latest_load(cid,0,20,"#dedailList");
		});
		
		//加载相似新闻
		function moxi_latest_load(channelId,pageNo,pageSize,loadId){
			$.ajax({
				type:"post",
				url:webPath+"/content/clist",
				data:{channelId:channelId,pageNo:pageNo,pageSize:pageSize},//子频道内容列表
				success:function(data){
					for(var i=0;i<data.length;i++){
						$(loadId).append("<li><a href='javascript:void(0);' data-opid='"+data[i].id+"' onclick='moxi_load_content(this)'>"+data[i].title+"</a></li>");
					}
				}
			});
		};
		
		//异步加载文章内容
		function moxi_load_content(obj){
			var $obj = $(obj);
			//当前内容的id
			var opid = $obj.data("opid");
			$.ajax({
				type:"post",
				url:webPath+"/content/latestDetail/"+opid,
				success:function(data){
					$("#leftcnt").html("<h2>"+data.title+"</h2>"+
					"<div class='fix'></div>"+
					"<div class='about'>标签："+data.tag+"&nbsp;&nbsp;&nbsp;<span>时间: "+data.createTime+"</span></div>"+
					"<div class='fix'></div>"+
					"<div class='text'>"+data.content+"</div>");
				}
			});
		}
	</script>
 </body>
</html>