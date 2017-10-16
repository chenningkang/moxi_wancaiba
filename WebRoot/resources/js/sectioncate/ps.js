
		$(document).ready(function(){

			function myfunction(li,li_a,menu_tab){
				li.click(function(){
				var index=$(this).index();
				menu_tab.eq(index).addClass("active").siblings().removeClass("active");
				li_a.removeClass("selected");
				li_a.eq(index).addClass("selected").siblings().removeClass("selected");
				
			});
			}
			
			myfunction($(".fans-content .scrollbar fans-nav .ul-nav-left li"),$(".fans-content .ul-nav-left li a"),$(".fans-content .scrollbar fans-nav-con .all-pic"));


			$(function(){
				$(".menu > ul").eq(0).show();
			});
			// 导航 
			$(function(){   
				 $(".container .menu > h3").click(function(){

				 	$(".container .content .A1").empty().text($(this).text());
				 	
				 });
			});
		});



