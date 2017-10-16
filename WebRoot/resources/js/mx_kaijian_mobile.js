
$(function(){
	//双色球开奖信息
	moxi_ssqResult();
	//福彩3d开奖信息
	moxi_fc3dReslt();
	moxi_fc3dsjReslt();
	//七乐彩开奖结果
	moxi_qlcReslt();
	//排列三开奖结果
	moxi_pl3Reslt();
	//排列五开奖结果
	moxi_pl5Reslt();
	//大乐透开奖结果
	moxi_dltReslt();
	//七星彩开奖结果
	moxi_qxcReslt();
});
 

//双色球开奖结果
function moxi_ssqResult(){
	$.ajax({
		type:"post",
		url:webPath+"/content/ssqReslt",
		success:function(data){
			//alert(data.number+"--"+data.type+"--"+data.qihao);
			var number = data.number;
			var length = number.length;
			var subnumber = number.substring(1,length-1);
			var attr = subnumber.split(",");
			$("#ssqresult").html(
				"<td width='15%' class='hui'><a href='javascript:void(0);' title='双色球走势图'>双色球</a></td>"+
  				"<td width='15%' id='ssqqi'>"+data.qihao+"期"+"</td>"+
				"<td width='60%'>"+
					"<span class='red_q' id='ssqn1'>"+attr[0]+"</span>"+
					"<span class='red_q' id='ssqn2'>"+attr[1]+"</span>"+
					"<span class='red_q' id='ssqn3'>"+attr[2]+"</span>"+
					"<span class='red_q' id='ssqn4'>"+attr[3]+"</span>"+
					"<span class='red_q' id='ssqn5'>"+attr[4]+"</span>"+
					"<span class='red_q' id='ssqn6'>"+attr[5]+"</span>"+
					"<span class='blue_q' id='ssqn7'>"+attr[6]+"</span>"+
				"</td>"+
				"<td td width='10%'><a href='/m/ssq/' title='双色球开奖结果' target='_blank'>详情</a></td>"
			);
			
		}
	});
};

//福彩3d开奖结果
function moxi_fc3dReslt(){
	$.ajax({
		type:"post",
		url:webPath+"/content/fc3dReslt",
		success:function(data){
			//alert(data.number+"--"+data.type+"--"+data.qihao);
			var number = data.number;
			var length = number.length;
			var subnumber = number.substring(1,length-1);
			var attr = subnumber.split(",");
			$("#fc3dresult").html(
				"<td class='hui'><a href='javascript:void(0);' title='3d走势图'>福彩3D</a></td>"+
  				"<td id='fc3dqi'>"+data.qihao+"期"+"</td>"+
				"<td>"+
					"<span class='h_q' id='fc3dn1'>"+attr[0]+"</span>"+
					"<span class='h_q' id='fc3dn2'>"+attr[1]+"</span>"+
					"<span class='h_q' id='fc3dn3'>"+attr[2]+"</span>"+
				"</td>"+
				"<td><a href='/m/3d/' title='d开奖结果' target='_blank'>详情</a></td>"
			);
		}
	});
};

//福彩3d试机号
function moxi_fc3dsjReslt(){
	$.ajax({
		type:"post",
		url:webPath+"/content/fc3dsjReslt",
		success:function(data){
			var number = data.number;
			var length = number.length;
			var subnumber = number.substring(1,length-1);
			var attr = subnumber.split(",");
			$("#fc3dsjresult").find("li").html(
				"<span class='hui'><a href='javascript:void(0);' title='3d试机号走势图'>福彩3D</a></span>"+
				"<span id='fc3dsjhqi'>"+data.qihao+"</span>期 试机号:<span id='fc3dsjhnum' class='red'>"+attr[0]+attr[1]+attr[2]+"</span>"+
				"<a href='/m/3d/' style='margin-left:104px;' title='3d试机号' target='_blank'>详情</a>"
			);
			
			
		}
	});
};

//七乐彩开奖结果
function moxi_qlcReslt(){
	$.ajax({
		type:"post",
		url:webPath+"/content/qlcReslt",
		success:function(data){
			//alert(data.number+"--"+data.type+"--"+data.qihao);
			var number = data.number;
			var length = number.length;
			var subnumber = number.substring(1,length-1);
			var attr = subnumber.split(",");
			$("#qlcresult").html(
				"<td class='hui'><a href='javascript:void(0);' title='七乐彩走势图'>七乐彩</a></td>"+
  				"<td id='qlcqi'>"+data.qihao+"期"+"</td>"+
				"<td>"+
					"<span class='red_q' id='qlcn1'>"+attr[0]+"</span>"+
					"<span class='red_q' id='qlcn2'>"+attr[1]+"</span>"+
					"<span class='red_q' id='qlcn3'>"+attr[2]+"</span>"+
					"<span class='red_q' id='qlcn4'>"+attr[3]+"</span>"+
					"<span class='red_q' id='qlcn5'>"+attr[4]+"</span>"+
					"<span class='red_q' id='qlcn6'>"+attr[5]+"</span>"+
					"<span class='red_q' id='qlcn7'>"+attr[6]+"</span>"+
					"<span class='blue_q' id='fc3dn3'>"+attr[7]+"</span>"+
				"</td>"+
				"<td><a href='/m/qlc/' title='七乐彩开奖结果' target='_blank'>详情</a></td>"
			);
		}
	});
};

//排列三开奖结果
function moxi_pl3Reslt(){
	$.ajax({
		type:"post",
		url:webPath+"/content/pl3Reslt",
		success:function(data){
			var number = data.number;
			var length = number.length;
			var subnumber = number.substring(1,length-1);
			var attr = subnumber.split(",");
			$("#pl3result").html(
				"<td class='hui'><a href='javascript:void(0);' title='p3走势图'>体彩P3</a></td>"+
  				"<td id='pl3qi'>"+data.qihao+"期"+"</td>"+
				"<td>"+
					"<span class='h_q' id='pl3n1'>"+attr[0]+"</span>"+
					"<span class='h_q' id='pl3n2'>"+attr[1]+"</span>"+
					"<span class='h_q' id='pl3n3'>"+attr[2]+"</span>"+
				"</td>"+
				"<td><a href='/m/p3/' title='排列3开奖结果' target='_blank'>详情</a></td>"
			);
		}
	});
};

//排列五开奖结果
function moxi_pl5Reslt(){
	$.ajax({
		type:"post",
		url:webPath+"/content/pl5Reslt",
		success:function(data){
			var number = data.number;
			var length = number.length;
			var subnumber = number.substring(1,length-1);
			var attr = subnumber.split(",");
			$("#pl5result").html(
				"<td class='hui'><a href='javascript:void(0);' title='p5走势图'>体彩P5</a></td>"+
  				"<td id='pl5qi'>"+data.qihao+"期"+"</td>"+
				"<td>"+
					"<span class='h_q' id='pl5dn1'>"+attr[0]+"</span>"+
					"<span class='h_q' id='pl5dn2'>"+attr[1]+"</span>"+
					"<span class='h_q' id='pl5dn3'>"+attr[2]+"</span>"+
					"<span class='h_q' id='pl5dn4'>"+attr[3]+"</span>"+
					"<span class='h_q' id='pl5dn5'>"+attr[4]+"</span>"+
				"</td>"+
				"<td><a href='/mobile/content/more/40/' title='排列5开奖结果' target='_blank'>详情</a></td>"
			);
		}
	});
};

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
			$("#dltresult").html(
				"<td class='hui'><a href='javascript:void(0);' title='大乐透走势图'>大乐透</a></td>"+
  				"<td id='dltqi'>"+data.qihao+"期"+"</td>"+
				"<td>"+
					"<span class='red_q' id='dltn1'>"+attr[0]+"</span>"+
					"<span class='red_q' id='dltn2'>"+attr[1]+"</span>"+
					"<span class='red_q' id='dltn3'>"+attr[2]+"</span>"+
					"<span class='red_q' id='dltn4'>"+attr[3]+"</span>"+
					"<span class='red_q' id='dltn5'>"+attr[4]+"</span>"+
					"<span class='blue_q' id='dltn6'>"+attr[5]+"</span>"+
					"<span class='blue_q' id='dltn7' style='margin-left:1px'>"+attr[6]+"</span>"+
				"</td>"+
				"<td><a href='/m/dlt/' title='大乐透开奖结果' target='_blank'>详情</a></td>"
			);
		}
	});
};

//七星彩开奖结果
function moxi_qxcReslt(){
	$.ajax({
		type:"post",
		url:webPath+"/content/qxcReslt",
		success:function(data){
			var number = data.number;
			var length = number.length;
			var subnumber = number.substring(1,length-1);
			var attr = subnumber.split(",");
			$("#qxcresult").html(
				"<td class='hui'><a href='javascript:void(0);' title='七星彩'>七星彩</a></td>"+
  				"<td id='qxcqi'>"+data.qihao+"期"+"</td>"+
				"<td>"+
					"<span class='h_q' id='qxcn1'>"+attr[0]+"</span>"+
					"<span class='h_q' id='qxcn2'>"+attr[1]+"</span>"+
					"<span class='h_q' id='qxcn3'>"+attr[2]+"</span>"+
					"<span class='h_q' id='qxcn4'>"+attr[3]+"</span>"+
					"<span class='h_q' id='qxcn5'>"+attr[4]+"</span>"+
					"<span class='h_q' id='qxcn6'>"+attr[5]+"</span>"+
					"<span class='h_q' id='qxcn7'>"+attr[6]+"</span>"+
				"</td>"+
				"<td><a href='/m/qxc/' title='7星彩开奖结果' target='_blank'>详情</a></td>"
			);
		}
	});
};