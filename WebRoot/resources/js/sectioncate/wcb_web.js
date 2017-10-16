/**首页加载数据方法*/
function moxi_index_loads(channelId,pageNo,pageSize,loadId){
	//alert(channelId);
	$.ajax({
		type:"post",
		url:webPath+"/content/conlist",
		data:{"channelId":channelId,"pageNo":pageNo,"pageSize":pageSize},//子频道内容列表
		success:function(data){
		//	alert(data);
			$(loadId).append(data);
		}
	});
};
/**首页加载新闻的方法*/
function moxi_index_loads1(pageNo,pageSize,loadId){
	//alert(loadId);
	$.ajax({
		type:"post",
		url:webPath+"/news/conlist",
		data:{"pageNo":pageNo,"pageSize":pageSize},//子频道内容列表
		success:function(data){
		//	alert(data);
			$(loadId).append(data);  //展示数据
		}
	}); 
};

//function moxi_index_loads(){
//	$.ajax({
//		type:"post",
//		url:webPath+"/content/conlists",
//		success:function(data){
//			
//			//$(loadId).append(data);
//		}
//	});
//};

//$(function(){
//	// 点击回到顶部
//	$("#dynamic-to-top").click(function(){
//		$("html,body").animate({
//			scrollTop:0
//		},"slow");
//	});
//
//	// 滑动滚动条
//	$(window).scroll(function(){
//		// 滚动条距离顶部的距离 大于 200px时
//		if($(window).scrollTop() >= 200){
//			$("#dynamic-to-top").fadeIn(600); // 开始淡入
//		} else{
//			$("#dynamic-to-top").fadeOut(600); // 如果小于等于 200 淡出
//		}
//	});
//});


/*尽请期待*/
function sorryToIt(obj){
	loading("该功能正在开发中，敬请期待哟！",3);
};


////初始化友情链接条数
//$(function(){
//	moxi_FLinks(null,null);
//});
/*友情连接*/
//function moxi_FLinks(pageNo,pageSize){
//	$.ajax({
//		type:"post",
//		url:webPath+"/friendLink/list",
//		data:{pageNo:pageNo,pageSize:pageSize},
//		success:function(data){
//			for(var i=0;i<data.length;i++){
//				$("#fflink").append("<li><a href='"+data[i].url+"' target='_blank'>"+data[i].description+"</a></li>");
//			}
//		}
//	});
//}
