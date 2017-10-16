/*$(function(){
	$(".tmui-tips").tmTip();
});*/

function loading2(target,mark){
	$.loading({target:$(target),mark:1}); 
};


var tzAdmin = {
	timer :null,
	ltimer :null,
	initPage:function(itemCount){
		$(".cpage").tzPage(itemCount, {
			num_edge_entries : 1, //边缘页数
			num_display_entries :5, //主体页数 
			num_edge_entries:5,//边缘页数
			current_page:0,
			showGo:true,
			showSelect:true,
			items_per_page : 15, //每页显示X项
			prev_text : "上一页",
			next_text : "下一页",
			callback : function(pageNo,psize){//回调函数
				tzAdmin.loadData(pageNo,psize);
			}
		});
	},
	loadData:function(pageNo,pageSize,callback){
		var keyword = $("#keywords").val();
		var keyword1= $("#keywords1").val();
		var model = $("#tbody").data("model");
		var $this = this;
		clearTimeout(this.ltimer);
		this.ltimer = setTimeout(function(){
			$.ajax({
				type:"post",
				beforeSend:function(){loading2($("#tbody"),4);},
				url:adminPath+"/"+model+"/template",
				data:{pageNo:pageNo*pageSize,pageSize:pageSize,keyword:keyword,keyword1:keyword1},
				success:function(data){
					//重新加载分页时也清空掉全选按钮
					$("#selectall").removeAttr("checked");
					var $data = $(data);
					$("#tbody").html($data);//追加元素到dom中
					if(isNotEmpty(keyword))$this.highligter(keyword);
					//$(".tmui-tips").tmTip();
					if(callback){
						var itemCount = $data.find("#itemCount").val();
						callback(itemCount);
					}
				}
			});
		},300);
	},
	highligter:function(key){
		if(isEmpty(key))return;
		$("#tbody").find(".keys").each(function(){
			var text = $(this).text();
			var regex = new RegExp(key,"ig");
			var nt = text.replace(regex,"<span class='red'>"+key+"</span>");
			$(this).html(nt);
		});
	},
	search:function(){
		tzAdmin.loadData(0,15,function(itemCount){
			tzAdmin.initPage(itemCount);//分页加载一次吗
		});
	},
	resert:function(){
		$("#keywords").val("");
		$("#keywords1").val("");
		tzAdmin.search();
	},
	op:function(obj){
		var $this = $(obj);
		var opid = $this.attr("opid");
		var mark = $this.attr("mark");
		var val = $this.attr("val");
		var model = $("#tbody").data("model");
		var params = {};
		params[mark] = val;
		params["id"] = opid;
		clearTimeout(this.timer);
		this.timer = setTimeout(function(){
			loading("请稍后数据执行中...",3);
			$.ajax({
				type:"post",
				url:adminPath+"/"+model+"/update",
				data:params,
				success:function(data){
					loading("执行成功...",3);
					if(data=="success"){
						$this.attr({opid:opid,val:val==0?1:0}).removeClass().addClass(val==0?"red":"green").text(val==0?"否":"是");
					}
				}
			});
		},200); 
	},
	op2:function(obj){
		var $this = $(obj);
		var opid = $this.attr("opid");
		var mark = $this.attr("mark");
		var val = $this.attr("val");
		var model = $("#tbody").data("model");
		var params = {};
		params[mark] = val;
		params["id"] = opid;
		//alert(JSON.stringify(params));
		clearTimeout(this.timer);
		this.timer = setTimeout(function(){
			loading("请稍后数据执行中...",3);
			$.ajax({
				type:"post",
				url:adminPath+"/"+model+"/update",
				data:params,
				success:function(data){
					loading("执行成功...",3);
					if(data=="success"){
						$this.attr({opid:opid,val:val==0?1:0}).removeClass().addClass(val==0?"red":"green").text(val==0?"禁止登陆":"允许登陆");
					}
				}
			});
		},200); 
	},
	remove:function(obj){
		$.tzConfirm({title:"友情提示",content:"您确定删除吗?",callback:function(ok){
			if(ok){
				var $this = $(obj);
				var opid = $this.data("opid");
				var model = $("#tbody").data("model");
				clearTimeout(this.timer);
				var params = {};
				params["id"] = opid;
				this.timer = setTimeout(function(){
					loading("请稍后数据执行中...");
					$.ajax({
						type:"post",
						url:adminPath+"/"+model+"/delete",
						data:params,
						success:function(data){
							loading("执行成功...",3);
							$this.parents("tr").remove();
							var len = $("#tbody").find("tr").length;
							if(len>0){
								tzAdmin.loadData(0,15,function(itemCount){
									tzAdmin.initPage(itemCount);//分页加载一次吗
								});
							}
						}
					});
				},200); 
			}
		}});
	},
	//批量删除
	removeSelected:function(obj){
		var checkedId = "";  
		var rows = $("#tbody").find("input[type='checkbox']:checked");
		var lenth = rows.length;
		if(lenth==0){
			loading("请勾选至少一条记录！",3);
			return;
		}
        for (var i = 0; i < rows.length; i++) {  
            checkedId += rows[i].value+",";
        }
	    $.tzConfirm({title:"友情提示",content:"您确定要删除吗?",callback:function(ok){
			if(ok){
				var $this = $(obj);
				var model = $("#tbody").data("model");
				var params = {id:checkedId};
					$.ajax({
						type:"post",
						url:adminPath+"/"+model+"/deleteSelected",
						data:params,
						success:function(data){
							loading("执行成功...",3);
							//清除成功后清空选中按钮
							$("#selectall").removeAttr("checked");
							$this.parents("tr").remove();
							var len = $("#tbody").find("tr").length;
							if(len>0){
								tzAdmin.loadData(0,15,function(itemCount){
									tzAdmin.initPage(itemCount);
								});
							}
						}
					});
			}
		}});
	},
	edit:function(obj){
		var $this = $(obj);
		var opid = $this.data("opid");//拿到操作的id
		var model = $("#tbody").data("model");
		clearTimeout(this.timer);
		var params = {};
		params["id"] = opid;
		this.timer = setTimeout(function(){
			loading("请稍候，正在执行中...");
			$.ajax({
				type:"post",
				url:adminPath+"/"+model+"/edit/"+opid,
				data:params,
				success:function(data){
					loading("执行成功...",3);
					window.location.href=adminPath+"/"+model+"/edit/"+opid;
				}
			});
		},200); 
	},
	editInfo:function(obj){
		var $this = $(obj);
		var opid = $this.data("opid");//拿到操作的id
		clearTimeout(this.timer);
		var params = {id:opid};
		this.timer = setTimeout(function(){
			loading("请稍候，正在执行中...");
			$.ajax({
				type:"post",
				url:adminPath+"/user/editInfo/"+opid,
				data:params,
				success:function(data){
					loading("执行成功...",3);
					window.location.href=adminPath+"/user/editInfo/"+opid;
				}
			});
		},200); 
	},
	
	/**
	 * 这个函数是为了改变友情链接的顺序
	 * @param obj
	 */
	op3:function(obj){
		var $this = $(obj);  //拿到当前的对象，
		var psort= $this.val();  //拿到当前对象的value
		var opid = $this.attr("opid");
		var model = $("#tbody").data("model");
		var params = {"id":opid,"sort":psort};
		clearTimeout(this.timer);
		this.timer = setTimeout(function(){
			loading("请稍后数据执行中...",3);
			$.ajax({
				type:"post",
				url:adminPath+"/"+model+"/update",
				data:params,
				success:function(data){
					loading("执行成功...",3);
				}
			});
		},200); 
	},
	//全选和全不选
	selectall:function(obj){
		if($(obj).is(":checked")){
			$("#tbody").find("input[type='checkbox']").prop("checked",true);
			$("#tbody").find("input[type='checkbox']").attr("checked","true");
		}else{
			$("#tbody").find("input[type='checkbox']").prop("checked",false);
			$("#tbody").find("input[type='checkbox']").removeAttr("checked"); 
		}
	}
};


