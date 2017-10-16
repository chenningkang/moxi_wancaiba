//先加载配置文件
require(['/resources/js/sectioncate/indexv2.js'],function(){
	//此时所有请求路径基于config里面排至的baseUrl了
	require(['/resources/js/sectioncate/index.js']);
});