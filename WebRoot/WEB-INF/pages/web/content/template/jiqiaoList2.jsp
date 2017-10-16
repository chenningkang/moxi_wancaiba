<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>彩票圈-彩票技巧大全</title>
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
				您现在的位置：<a href="/" target="_self">彩票圈</a> >> <a href="/cpjq" target="_self">彩票技巧</a>
			</div>
		</div>
	</div>

	<!-- 列表一览 -->
	<div class="box">
		<div class="chan">
			<!-- 左侧 -->
			<div>
				<div class="list2">
					<div class="title" id="3djiqiao">
						<span>3D技巧</span><span class="more"><a data-cid="${channelList['3djiqiao']}" href="/web/content/more/${channelList['3djiqiao']}" target="_blank">更多..</a></span>
					</div>
					<ul id="moxi3djiqiao"></ul>
				</div>
				<div class="list2" style="margin-left:10px">
					<div class="title" id="p3jiqiao">
						<span>P3技巧</span><span class="more"><a data-cid="${channelList['p3jiqiao']}" href="/web/content/more/${channelList['p3jiqiao']}" target="_blank">更多..</a></span>
					</div>
					<ul id="moxip3jiqiao"></ul>
				</div>
				<div class="list5">
					<div class="title" id="ssqjiqiao">
						<span>双色球技巧</span><span class="more"><a data-cid="${channelList['ssqjiqiao']}" href="/web/content/more/${channelList['ssqjiqiao']}" target="_blank">更多..</a></span>
					</div>
					<ul id="moxissqjiqiao"></ul>
				</div>
				<div class="list2">
					<div class="title" id="dltjiqiao">
						<span>大乐透技巧</span><span class="more"><a data-cid="${channelList['dltjiqiao']}" href="/web/content/more/${channelList['dltjiqiao']}" target="_blank">更多..</a></span>
					</div>
					<ul id="moxidltjiqiao"></ul>
				</div>
				<div class="list2" style="margin-left:10px">
					<div class="title" id="qlcjiqiao">
						<span>七乐彩技巧</span><span class="more"><a data-cid="${channelList['qlcjiqiao']}" href="/web/content/more/${channelList['qlcjiqiao']}" target="_blank">更多..</a></span>
					</div>
					<ul id="moxiqlcjiqiao"></ul>
				</div>
				<div class="list5">
					<div class="title" id="qxcjiqiao">
						<span>七星彩技巧</span><span class="more"><a data-cid="${channelList['qxcjiqiao']}" href="/web/content/more/${channelList['qxcjiqiao']}" target="_blank">更多..</a></span>
					</div>
					<ul id="moxiqxcjiqiao"></ul>
				</div>
			</div>
			
			<!-- 右侧 -->
			<!-- <div class="right">
				<div class="list3">
					<div class="title">
						<span>3D走势图/工具</span>
					</div>
					<ul>
						<li><a href="http://www.8200.cn/zs_3d/chzs.htm"
							target="_blank">福彩3D基本走势图</a></li>
						<li><a href="http://www.8200.cn/zs_3d/hzhwzs.htm"
							target="_blank">福彩3D和值走势图</a></li>
						<li><a href="http://www.8200.cn/zs_3d/kdzs.htm"
							target="_blank">福彩3D跨度走势图</a></li>
						<li><a href="http://www.8200.cn/zs_3d/012.htm"
							target="_blank">福彩3D 012路走势图</a></li>
						<li><a href="http://www.8200.cn/zs_3d/zhizs.htm"
							target="_blank">福彩3D直选走势图</a></li>
						<li><a href="http://www.8200.cn/zs_3d/zxzs.htm"
							target="_blank">福彩3D组选走势图</a></li>
						<li><a href="http://www.8200.cn/zs_3d/sjhzs.htm"
							target="_blank">3D试机号走势图</a></li>
						<li><a href="http://www.8200.cn/zs_3d/all.htm"
							target="_blank">福彩3D全面分析图</a></li>
						<li><a href="http://www.8200.cn/tool/3d/3dss.aspx"
							target="_blank">福彩3D缩水工具</a></li>
						<li><a href="http://www.8200.cn/tool/3d/wch.aspx"
							target="_blank">福彩3D未出号查询</a></li>
					</ul>
				</div>
				<div class="list3">
					<div class="title">
						<span>P3走势图/工具</span>
					</div>
					<ul>
						<li><a href="http://www.8200.cn/zs_p3/chzs.htm"
							target="_blank">排列3基本走势图</a></li>
						<li><a href="http://www.8200.cn/zs_p3/hzhwzs.htm"
							target="_blank">排列3和值走势图</a></li>
						<li><a href="http://www.8200.cn/zs_p3/kdzs.htm"
							target="_blank">排列3跨度走势图</a></li>
						<li><a href="http://www.8200.cn/zs_p3/012.htm"
							target="_blank">排列3 012路走势图</a></li>
						<li><a href="http://www.8200.cn/zs_p3/zhizs.htm"
							target="_blank">排列3直选走势图</a></li>
						<li><a href="http://www.8200.cn/zs_p3/zxzs.htm"
							target="_blank">排列3组选走势图</a></li>
						<li><a href="http://www.8200.cn/zs_p3/sjhzs.htm"
							target="_blank">排列3试机号走势图</a></li>
						<li><a href="http://www.8200.cn/zs_p3/all.htm"
							target="_blank">排列3全面分析</a></li>
						<li><a href="http://www.8200.cn/tool/p3/p3ss.aspx"
							target="_blank">排列3在线缩水</a></li>
						<li><a href="http://www.8200.cn/tool/p3/wch.aspx"
							target="_blank">排列3未出号查询</a></li>
					</ul>
				</div>
				<div class="list3">
					<div class="title">
						<span>双色球走势图/工具</span>
					</div>
					<ul>
						<li><a href="http://www.8200.cn/zs_ssq/chzs.htm"
							target="_blank">双色球基本走势图</a></li>
						<li><a href="http://www.8200.cn/zs_ssq/hzzs.htm"
							target="_blank">双色球和值走势图</a></li>
						<li><a href="http://www.8200.cn/zs_ssq/hqzs.htm"
							target="_blank">双色球红球走势图</a></li>
						<li><a href="http://www.8200.cn/zs_ssq/lqzs.htm"
							target="_blank">双色球蓝球走势图</a></li>
						<li><a href="http://www.8200.cn/zs_ssq/2.htm" class="tj"
							target="_blank">双色球周二走势图</a></li>
						<li><a href="http://www.8200.cn/zs_ssq/qjzs.htm"
							target="_blank">双色球区间走势图</a></li>
						<li><a href="http://www.8200.cn/zs_ssq/aczs.htm"
							target="_blank">双色球AC值走势图</a></li>
						<li><a href="http://www.8200.cn/tool/ssq/ssq_ac.aspx"
							target="_blank">双色球AC计算器</a></li>
					</ul>
				</div>
				<div class="list3">
					<div class="title">
						<span>大乐透走势图/工具</span>
					</div>
					<ul>
						<li><a href="http://www.8200.cn/zs_dlt/chzs.htm"
							target="_blank">大乐透综合走势图</a></li>
						<li><a href="http://www.8200.cn/zs_dlt/qhzzs.htm"
							target="_blank">前区和值走势图</a></li>
						<li><a href="http://www.8200.cn/zs_dlt/hhzzs.htm"
							target="_blank">后区和值走势图</a></li>
						<li><a href="http://www.8200.cn/zs_dlt/kdzs.htm"
							target="_blank">大乐透跨度走势图</a></li>
						<li><a href="http://www.8200.cn/zs_dlt/w1.htm" class="tj"
							target="_blank">大乐透周一走势图</a></li>
						<li><a href="http://www.8200.cn/zs_dlt/qqzs.htm"
							target="_blank">大乐透前区走势图</a></li>
						<li><a href="http://www.8200.cn/zs_dlt/hqzs.htm"
							target="_blank">大乐透后区走势图</a></li>
						<li><a href="http://www.8200.cn/zs_dlt/5fenqu.htm"
							target="_blank">大乐透五分区走势图</a></li>
					</ul>
				</div>
				<div class="list3">
					<div class="title">
						<span>七星彩走势图/工具</span>
					</div>
					<ul>
						<li><a href="http://www.8200.cn/zs_qxc/chzs.htm"
							target="_blank">七星彩基本走势图</a></li>
						<li><a href="http://www.8200.cn/zs_qxc/hzzs.htm"
							target="_blank">七星彩和值走势图</a></li>
						<li><a href="http://www.8200.cn/zs_qxc/kdzs.htm"
							target="_blank">七星彩跨度走势图</a></li>
						<li><a href="http://www.8200.cn/zs_qxc/dw1.htm"
							target="_blank">七星彩第一位走势图</a></li>
						<li><a href="http://www.8200.cn/zs_qxc/chfx.htm"
							target="_blank">七星彩综合走势图</a></li>
						<li><a href="http://www.8200.cn/tool/qxc/p7_ss.aspx"
							target="_blank">七星彩组号过滤</a></li>
						<li><a href="http://www.8200.cn/tool/qxc/qxc_ss.aspx"
							target="_blank">七星彩缩水过滤</a></li>
						<li><a href="http://www.8200.cn/tool/qxc/fsarray.aspx"
							target="_blank">七星彩全排列组号</a></li>
						<li><a href="http://www.8200.cn/yl_qxc/num.htm"
							target="_blank">七星彩号码遗漏</a></li>
						<li><a href="http://www.8200.cn/yl_qxc/hw.htm"
							target="_blank">七星彩和尾遗漏</a></li>
					</ul>
				</div>
				<div class="list3">
					<div class="title">
						<span>七乐彩走势图/工具</span>
					</div>
					<ul>
						<li><a href="http://www.8200.cn/zs_qlc/chzs.htm"
							target="_blank">七乐彩基本走势图</a></li>
						<li><a href="http://www.8200.cn/zs_qlc/hzzs.htm"
							target="_blank">七乐彩和值走势图</a></li>
						<li><a href="http://www.8200.cn/zs_qlc/kdzs.htm"
							target="_blank">七乐彩跨度走势图</a></li>
						<li><a href="http://www.8200.cn/tool/qlc/qlchistory.aspx"
							target="_blank">七乐彩历史同期</a></li>
						<li><a href="http://www.8200.cn/tool/qlc/qlcxz.aspx"
							target="_blank">七乐彩旋转矩阵</a></li>
						<li><a href="http://www.8200.cn/tool/qlc/qlcss.aspx"
							target="_blank">七乐彩缩水工具</a></li>
						<li><a href="http://www.8200.cn/yl_qlc/num.htm"
							target="_blank">七乐彩号码遗漏</a></li>
						<li><a href="http://www.8200.cn/yl_qlc/hz.htm"
							target="_blank">七乐彩和值遗漏</a></li>
					</ul>
				</div>
			</div> -->
		</div>
	</div>

	<!-- 引入通用的尾部 -->
	<%@include file="/common/web/footer.jsp" %>

	<script type="text/javascript">
	$(function(){
		var sdjiqiaoId = $("#3djiqiao").find("a").data("cid");
		var p3jiqiaoId = $("#p3jiqiao").find("a").data("cid");
		var ssqjiqiaoId = $("#ssqjiqiao").find("a").data("cid");
		var dltjiqiaoId = $("#dltjiqiao").find("a").data("cid");
		var qxcjiqiaoId = $("#qxcjiqiao").find("a").data("cid");
		var qlcjiqiaoId = $("#qlcjiqiao").find("a").data("cid");
		
		moxi_index_load(sdjiqiaoId,0,10,"#moxi3djiqiao");
		moxi_index_load(p3jiqiaoId,0,10,"#moxip3jiqiao");
		moxi_index_load(ssqjiqiaoId,0,10,"#moxissqjiqiao");
		moxi_index_load(dltjiqiaoId,0,10,"#moxidltjiqiao");
		moxi_index_load(qxcjiqiaoId,0,10,"#moxiqxcjiqiao");
		moxi_index_load(qlcjiqiaoId,0,10,"#moxiqlcjiqiao");
		
	});
	
	</script>
 </body>
</html>