/**首页加载数据方法*/
function moxi_index_load(channelId,pageNo,pageSize,loadId){
	$.ajax({
		type:"post",
		url:mPath+"/content/conlist",
		data:{channelId:channelId,pageNo:pageNo,pageSize:pageSize},//子频道内容列表
		success:function(data){
			$(loadId).append(data);
		}
	});
};

$(function(){
	// 点击回到顶部
	$("#dynamic-to-top").click(function(){
		$("html,body").animate({
			scrollTop:0
		},"slow");
	});

	// 滑动滚动条 
	$(window).scroll(function(){
		// 滚动条距离顶部的距离 大于 200px时
		if($(window).scrollTop() >= 30){
			$("#dynamic-to-top").fadeIn(200); // 开始淡入
		} else{
			$("#dynamic-to-top").fadeOut(200); // 如果小于等于 200 淡出
		}
	});
});


/*尽请期待*/
function sorryToIt(obj){
	loading("该功能正在开发中，敬请期待哟！",3);
};
