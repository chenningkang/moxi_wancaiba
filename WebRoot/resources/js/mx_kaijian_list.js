 $(function(){
	//内容总数
	var itemCount = $("#itemCount").val();
	
	//初始化分页
	$(".cpage").tzPage(itemCount, {
		num_edge_entries : 0, //边缘页数
		num_display_entries :0, //主体页数
		num_edge_entries:0,
		current_page:0,
		showGo:false,
		showSelect:false,
		items_per_page : 20, //每页显示X项
		next_text : "再显示20条",
		callback : function(pageNo,psize){//回调函数
			loadData(pageNo,psize);
		}
	});
}); 

//加载分页数据（使用模板加载）
function loadData(pageNo,pageSize,callback){
	//拿到彩票类型model
	var model = $("#tbody").data("type");
	//节流处理，防止重复提交
	clearTimeout(this.ltimer);
	this.ltimer = setTimeout(function(){
		$.ajax({
			type:"post",
			url:webPath+"/lottery/"+model+"template",
			data:{pageNo:pageNo*pageSize,pageSize:pageSize},
			success:function(data){
				var $data = $(data);
				$("#tbody").append($data);//追加元素到dom中
				//拿到模板中的内容总数，为下一次分页做准备
				var itemCount = $data.find("#itemCount").val();
				//回调执行分页操作
				if(callback)callback(itemCount);
			}
		});
	},300);
};