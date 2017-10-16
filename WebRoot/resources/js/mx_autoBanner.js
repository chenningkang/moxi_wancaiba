var index=0;
function autoBanner(uid){
	play=setInterval(function(){
		index++;
		var length = $(uid).find("li").length;
		if(index >=length){
			index = 0;
		}
		//联动图片
		$(uid).find("li").eq(index).fadeIn("slow").siblings().hide();
	},3000);
}

$(function(){
	autoBanner("#b_pic");
});