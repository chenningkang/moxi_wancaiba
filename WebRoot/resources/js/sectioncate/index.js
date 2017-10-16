var url=document.getElementById('url').getAttribute('data-url');//获取路径
switch(url){  
	case 'index'://首页
		require(['models/index','models/banner'],function(index,banner){
			index.init();
			banner.banner('#home-banner');	
		
		});
	break;
	case 'fans'://社区
		require(['models/banner','models/fans'],function(banner,F){
			banner.banner('#fans-banner');
			F.init();			
		});
	break;
	case 'Hotfans'://热贴
		require(['models/hotfans'],function(H){
			H.init();			
		});
	break;
	case 'user-fans'://用户
		require(['models/hotfans'],function(H){
			H.init();			
		});
	break;
	case 'section'://用户
		require(['models/section'],function(H){
			H.init();			
		});
	break;
	case 'fanspost'://发贴
		require(['models/fans','models/banner2'],function(F,Banner){
			F.init();	
			Banner.banner('#biaoqing');		
		});
	break;
	case 'login'://登录
		require(['models/login'],function(Login){
			Login.init();	
		});
	break;
	case 'info-index'://资讯
		require(['models/banner'],function(banner){
			banner.banner('#home-banner');	
		});
	break;
	case 'details'://资讯详情
		require(['models/details'],function(details){
			details.init();
		});
	break;
	case 'topic'://论坛详情
		require(['models/topic'],function(topic){
			topic.init();
		});
	break;
	case 'user'://个人中心
		require(['models/user'],function(user){
			user.init();
		});
	break;
	case 'chat'://个人中心
		require(['models/chat'],function(chat){
			chat.init();
		});
	break;
	case 'user-home'://个人中心
		require(['models/home'],function(chat){
			chat.init();
		});
	break;
	

}
		