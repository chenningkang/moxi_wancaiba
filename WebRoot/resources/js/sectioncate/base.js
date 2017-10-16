define(['jquery'],function($){//自定义库
	return{
		init:function(){
			if($('.notice_list').length>0){
				setInterval(function(){
					$('.notice_list').animate({'marginTop':'-36px'},function(){
						$(this).append($(this).find('li').eq(0).clone());
						$(this).find('li').eq(0).remove();
						$(this).css({'marginTop':'0px'});
					});
				},2000)
			}
		},
		getCookie:function(name){
			var arr= document.cookie.split('; ');
			for(var i=0;i<arr.length;i++){
				//再次切割成数组
				var shu=arr[i].indexOf('=');
				var arrb1=arr[i].substring(0,shu);
				var arrb2=arr[i].substring(shu+1);
				if(arrb1== name ){
					return unescape(arrb2);
				}
			}
			return ;//没有找到为空
		},
		setCookie:function(name,value,iDay,domain){//设置cookie，（名称，值，过期时间天为单位）
			if(!domain)
			{
				domain=window.location.hostname;
			}
			var oDate=new Date();
			//设置时间
			oDate.setDate(oDate.getDate()+iDay);
			document.cookie=name+'='+escape(value)+';expires='+oDate.toGMTString()+';domain='+domain;
		},
		removeCookie:function(name){//删除除cookie
			setCookie(name,1,-1);
		}
		
	}
});


