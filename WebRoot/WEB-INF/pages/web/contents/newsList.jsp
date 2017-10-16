<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	trimDirectiveWhitespaces="true"%>
<%@include file="/common/taglib.jsp"%>

<!doctype html>
<html>
<head>
<meta name="baidu_union_verify"
	content="497535482027a87febb04a14fb67a2e1">
<meta charset="utf-8">
<meta name="viewport"
	content="initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,width=device-width,user-scalable=no,minimal-ui">
<meta content="yes" name="apple-mobile-web-app-capable">
<meta content="yes" name="apple-touch-fullscreen">
<meta content="black" name="apple-mobile-web-app-status-bar-style">
<meta content="telephone=no, email=no" name="format-detection">
<meta content="no" name="wap-font-scale">
<title>福彩3D开奖结果_福彩3D走势图_福彩3D中奖规则_福彩3D预测-万彩吧</title>
<meta name="keywords"
	content="福彩3D开奖结果，福彩3D走势图，福彩3D中奖规则，福彩3D预测，福彩3D开奖结果查询，福彩3D预测最准确,万彩吧">
<meta name="description"
	content="万彩吧福彩3D资讯频道，为您提供福利彩票福彩3D开奖号码、中国福利彩票福彩3D开奖结果、彩票福彩3D专家预测分析、走势图、推荐等">
<link href="/resources/css/wancaiba/fc3dbase.css" rel="stylesheet" />
<link href="/resources/css/wancaiba/fc3dfans.css" rel="stylesheet" />
<script src="resources/js/sectioncate/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="/resources/sg/tz_page.js"></script>
</head>


<body>

	<script src="/js/forward.js"></script>
	<header id="header" class="header">
			<div class="mainNav">
			<a href="/" target="_self">
			<img class="logoh1" alt="万彩吧"
				src="/resources/images/logo/moxitu.png">
			 <a href="/web/content/more/${moreDatas[0]['chid']}" target="_self">${moreDatas[0]["cname"]}</a>	
		</div>
		<a href="/go/anzhuo" style="position: absolute;right: .3rem;"><i
			class="icon idow"></i></a><a class="right" id="inav"><i
			class="icon inav"></i></a>
	</header>


	<!-- 公告 -->
	<div class="notice">
		<div class="notice_box">
			<ul class="notice_list" id="notice_list">
				<li><a href="http://bbs.c8.cn/post/276789">彩票计划请加微信号：wancaiba555
						获取</a></li>
			</ul>
		</div>
	</div>

	<a class="showpic-1" href="http://123v.cc/?id=c8" target="_blank">赢彩娱乐:全网赔率最高,快速彩票全天开</a>
	<a class="showpic-1" href="https://88l2.cc/?id=c8" target="_blank">3d,时时彩,pk10,七星彩,送8888元试玩</a>
	<a class="showpic-1" href="https://2535.cc/?id=c8" target="_blank">福彩3d,七星彩,时时彩,100万提款秒到账</a>






	<form action="http://www.c8.cn/fc3dyc" method="post" id="stage_number">
		<input type="hidden" name="_token"
			value="jji233rQbjuIOkcG8gJphqDEc42OdOa934ydmTsA">
			
		<section class="news">
			<div class="title">彩票新闻</div>
			<div class="cpage" style="margin-right:24px">
			<div class="fix"></div>
				<ul class="news-ul">
				<c:forEach items="${moreDatas}" var="more" varStatus="num">
					<li class="box ellipsis"><a
						href="/web/content/detail/${more.id}">
						<c:if test="${more.isTop==1}">
							<a class="best" href="/web/news/detail/${more.id}" target="_blank">${more.title}</a>
						</c:if>	
						<c:if test="${more.isTop==0}">
							<a href="/web/news/detail/${more.id}" target="_blank">${more.title}</a>
						</c:if>	
					</a></li>
					</c:forEach>
				</ul>
				
		
			<div class="fix"></div>
			<div class="cpage" style="margin-right:24px"></div><!-- 分页初始化位置 -->
			<input type="hidden" value="${itemCount}" id="itemCount">
		</section>
		


	</form>
	<a class="showpic-1" href="http://e666.cc/?id=c8" target="_blank">PK10,时时彩9.85倍,全新代理,天天结算</a>
	<a class="showpic-1" href="http://t999.cc/?id=c8" target="_blank">大发彩票:入款送1%,天天返水0.3%(信誉好)</a>
	<a class="showpic-1" href="https://dd66.cc" target="_blank">VIP彩世界-提款1分钟,日返水,大客户首选</a>

	<div id="top_btn"></div>

	<div class="ui-alert-layer"></div>
	

	<footer id="footer">
		<div class="f-download">
			<a id="andriod" href="http://www.c8.cn/go/smanzhuo"
				style="display: block;">安卓客户端</a> <a id="ios"
				href="https://itunes.apple.com/cn/app/%E4%B8%87%E5%BD%A9%E5%90%A7/id1078869616?mt=8"
				style="display: block;">IOS客户端</a>
		</div>
		</div>

		<p>
			<a href="/"> 首页</a> | <a href="#">广告合作</a> | <a href="#">回顶部↑</a><br>
			© 2001-2015 深圳市球讯网络科技有限公司<br> 版权所有 粤ICP备14066812号-1<br>
		</p>
	</footer>

	<div class="guide-bottom"
		style="position: fixed;width: 100%;bottom: -60px;height: 60px; line-height:60px;background: rgba(0,0,0,.7);left: 0;z-index: 999;">
		<a class="guidea" href="http://www.c8.cn/go/smanzhuo"
			style=" display: block; color: #fff;"><img
			src="/images/appicon80.png"
			style="width: 40px;height: 40px;display: block; float: left; margin: 10px;">万彩吧新版客户端，点击下载!</a>
		<div class="guide-clsoe colse icon"
			style="position: absolute; right: 0; top:20px; width: 30px; height: 30px;  "></div>
	</div>

	<script src="/js/base.js?v=2017"></script>
	<script src="/js/fontSize.js"></script>

	<script src="/js/kj.js"></script>
<%-- 	<!-- 引入通用的尾部 -->
	<%@include file="/common/web/footer.jsp" %>
 --%>
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
			alert(channelId);
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