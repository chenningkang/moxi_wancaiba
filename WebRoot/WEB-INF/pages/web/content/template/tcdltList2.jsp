<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@include file="/common/taglib.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>彩票圈-体彩大乐透开奖综合</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<%@include file="/common/common.jsp" %>
 </head>
 <body>
 	<!-- 引入通用的头部 -->
	<%@include file="/common/web/header.jsp" %>

	<!-- 当前所在位置 -->
	<div class="fix"></div>
	<div class="box">
		<div class="location">
			<div class="left">
				您现在的位置：<a href="/" target="_self">彩票圈</a> >> <a href="/dlt" target="_self">大乐透</a>
			</div>
		</div>
	</div>

	<!-- 列表一览 -->
	<div class="fix"></div>
	<div class="box">
		<div class="chan">
			<div class="left">
				<div class="list1">
					<!-- <div class="lotteryRst">
						<div class="lotteryYear">
							<span>年份：</span>
							<span>
								<select>
									<option>2017</option>
									<option>2016</option>
									<option>2015</option>
								</select>
							</span>
						</div>
						<div class="lotteryYear">
							<span>期号：</span>
							<span>
								<select>
									<option>2017091</option>
									<option>2017090</option>
									<option>2017089</option>
								</select>
							</span>
						</div>
						<div class="lotterySearch">
							<span>请输入期数：</span>
							<input type="text">
							<div class="searchbtn"><a href="javascript:void(0);">查询</a></div>
							
						</div>
					</div> -->
					<ol class="kjinfo dlt" id="dltkj" style="height:90px">
						<!-- 开奖结果区域 -->
					</ol>
				</div>
				<div class="list2">
				    <div class="title" id="dltyuce">
				       	<span>大乐透预测</span>
						<span class="more"><a data-cid="${channelList['dltyuce']}" href="/web/content/more/${channelList['dltyuce']}" target="_blank">更多..</a></span>
					</div>
					<ul id="moxidltyuce"></ul>
				</div>
				<div class="list2" style="float:right;">
					<div class="title" id="dltdanma">
						<span>大乐透胆码</span><span class="more"><a  data-cid="${channelList['dltdanma']}" href="/web/content/more/${channelList['dltdanma']}" target="_blank">更多..</a></span>
					</div>
					<ul id="moxidltdanma"></ul>
				</div>
				<div class="fix"></div>
				<div class="list2">
					<div class="title" id="dltshahao">
						<span>大乐透杀号</span><span class="more"><a  data-cid="${channelList['dltshahao']}" href="/web/content/more/${channelList['dltshahao']}" target="_blank">更多..</a></span>
					</div>
					<ul id="moxidltshahao"></ul>
				</div>
				<div class="list2" style="float:right;">
					<div class="title" id="dltshahaohuizong">
						<span>大乐透后区杀号汇总</span><span class="more"><a  data-cid="${channelList['dltshahaoall']}"
							href="/web/content/more/${channelList['dltshahaoall']}" target="_blank">更多..</a></span>
					</div>
					<ul id="moxidltshahaohuizong"></ul>
				</div>
			</div>
			<div class="right">
				<div class="list5 top10" style="margin-top:0px">
					<div class="title" id="dltjiqiao">
						<span>大乐透技巧</span><span class="more"><a  data-cid="${channelList['dltjiqiao']}"
							href="/web/content/more/${channelList['dltjiqiao']}" target="_blank">更多..</a></span>
					</div>
					<ul id="moxidltjiqiao"></ul>
				</div>
			</div>
		</div>
	</div>

	<!-- 引入通用的尾部 -->
	<%@include file="/common/web/footer.jsp" %>

	<script type="text/javascript">
	$(function(){
		var dltyuceId = $("#dltyuce").find("a").data("cid");
		var dltdanmaId = $("#dltdanma").find("a").data("cid");
		var dltshahaoId = $("#dltshahao").find("a").data("cid");
		var dltshahaohuizongId = $("#dltshahaohuizong").find("a").data("cid");
		var dltjiqiaoId = $("#dltjiqiao").find("a").data("cid");
		
		moxi_index_load(dltyuceId,0,10,"#moxidltyuce");
		moxi_index_load(dltdanmaId,0,10,"#moxidltdanma");
		moxi_index_load(dltshahaoId,0,10,"#moxidltshahao");
		moxi_index_load(dltshahaohuizongId,0,10,"#moxidltshahaohuizong");
		moxi_index_load(dltjiqiaoId,0,20,"#moxidltjiqiao");
		
		//大乐透开奖结果
		moxi_dltReslt();
	});
	
	
	//大乐透开奖结果
	function moxi_dltReslt(){
		$.ajax({
			type:"post",
			url:webPath+"/content/dltReslt",
			success:function(data){
				var number = data.number;
				var length = number.length;
				var subnumber = number.substring(1,length-1);
				var attr = subnumber.split(",");
				$("#dltkj").prepend(
					"<li class='title'><strong>体彩大乐透</strong>&nbsp;&nbsp;第 "+data.quanqihao+" 期开奖信息</li>"+
					"<li class='fix'></li>"+
					"<li class='webkj'>"+
						"<span class='kjlabel'>开奖号码：</span>"+
						"<span class='red_num'>"+attr[0]+"</span>"+
						"<span class='red_num'>"+attr[1]+"</span>"+
						"<span class='red_num'>"+attr[2]+"</span>"+
						"<span class='red_num'>"+attr[3]+"</span>"+
						"<span class='red_num'>"+attr[4]+"</span>"+
						"<span class='blue_num'>"+attr[5]+"</span>"+
						"<span class='blue_num'>"+attr[6]+"</span>"+
					"</li>"+
					"<div class='morekj'><a href='/web/lottery/dltrstlist'>更多开奖结果</a></div>"
				);
			}
		});
	};
	</script>
 </body>
</html>