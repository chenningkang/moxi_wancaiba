define(['jquery','models/base','exif','models/drawipone'],function($,Base,E,Draw){
	return{
		init:function(){
			var _this=this;
			this.h();
			this.follow();//关注
			this.dataimg();//
			this.biaoqing();
			this.picclose();
			this.uppic();
			this.fansmenu();
			this.imgti();
			this.send();
			Base.init();
 
		
/*			$('.post-title').keyup(function(){
				_this.limit();
			});
			$('boyd').on('keyup','.post-content',function(){
				_this.limit();
			});
*/
			
			this.fnastab();
			this.navleftrihgt();
			
		},
		navleftrihgt:function(){
			$('#ul-nav-left li').on('click',function(){
				$('#ul-nav-left li').removeClass('on');
				$(this).addClass('on');
				var index=$(this).index();
				$('.ul-nav-right').hide();
				$('.ul-nav-right').eq(index).show();
			});
		},
		fnastab:function(){
			$('.user-tab a').on('click',function(){
				console.log($(this).index());
			});
		},
		fansmenu:function(){
			$(window).scroll(function(){
				var h=$('.home-header').height();
				var t=$(document).scrollTop();
				if(t>h){
					$('.fans-menu').addClass('menutop');
				}else{
					$('.fans-menu').removeClass('menutop');
				}
			
			});
			
		},
		h:function(){//版块内容高
			var height=$(window).height();
			var toph=$('.hd-wrap').height();
			$('.fans-nav-con').height(height-toph*2);
		},
		follow:function(){//关注社区版块
			$('.all-follow').on('click',function(event){
				var url=$(this).data('link');
				var _this=$(this);
				$.get(url,function(e){
					var data=eval('('+e+')');
					if(data.code=10000){
						if(_this.is('.all-follow-on')){
							_this.removeClass('all-follow-on');
						}else{
							_this.addClass('all-follow-on');
						}
						alert(data.msg);
						_this.data('link',data.data);
					}else if( data.code==10002){
						window.location.href=data.data.redirect;
					}else{
						alert(data.msg);
					}
				});
				return false;
			});
		},
		imgti:function(){
			this.imgsrc={};
			var oimg=$('#biaoqing ul img');
			for(var i=0;i<oimg.length;i++){
				this.imgsrc[oimg.eq(i).data('id')]=oimg.eq(i).data('src');
			}

		},
		textimg:function(text){
			var  re=/\{[^\{]+\}/g;
			var b=text.match(re);//获取表情关键
			var biao=this.imgsrc;
			for(i in b){//替换图片地址
				var hao=b[i].substr(1,b[i].indexOf('}')-1);//去除前后[]
				text=text.replace(eval('/\\{'+hao+'\\}/i'),'<img  src="'+biao[hao]+'" style="width:.24rem; margin-right:.05rem">');//替换成路径
			}
			return text;


		},
		dataimg:function(){//表情替换
			for(var i=0;i<$('.biaoqing img').length;i++){
				var src=$('.biaoqing img').eq(i).data('src');
				$('.biaoqing img').eq(i).attr('src',src);
			}	
		},
		biaoqing:function(){
		
			$('.btn-b').on('click',function(){
				if($(this).is('.btn-bon')){
					$(this).removeClass('btn-bon');
					$('#biaoqing').hide();;
				}else{
					$(this).addClass('btn-bon');
					$('#biaoqing').show();;
				}
			});
			//选择表情
			$('#biaoqing li img').on('click',function(){
				if($(this).is('.delete')){//删除表情
					var t=$('.post-content').val();
					var start=t.lastIndexOf('{');
					var End=t.lastIndexOf('}');
					if(start>0){
						var d_t=t.slice(0,start);
						var e_t=t.slice(End+1);
						$('.post-content').val(d_t+e_t);
					}
				}else{//增加表情
					var bq='{'+$(this).data('id')+'}';
					var t_val=$('.post-content').val()+bq;
					$('.post-content').val(t_val);
				}
			});
		
		},
		picclose:function(){//发贴上传图片
			$('.tupian').on('click','.btn_close',function(){
				$(this).parents('li').remove();
			});
		},
		uppic:function(){//图片上传
			$('#picfile').on('click',function(){
				$('.btn-bon').click();
			});
			$('#picfile').change(function(){
				for(var i=0;i<this.files.length;i++){
					var fileReader = new FileReader();
					fileReader.onloadend=function(e){
						$('.tupian').append('<li><img src="'+e.target.result+'" width="100%"><div class="icon btn_close"></div></li>');							
					}
					fileReader.readAsDataURL(this.files[i]);
				}
				
			});
			
		},
		limit:function(){//条件限制
			var title=$('.post-title').val();
			var conter=$('.post-content').val();
			if(title.length>3){
				$('.send').addClass('btn-send');
			}else{
				$('.send').removeClass('btn-send');
			}
		},
		filteremoji:function(emojireg){
			var ranges = [
				'\ud83c[\udf00-\udfff]',
				'\ud83d[\udc00-\ude4f]',
				'\ud83d[\ude80-\udeff]'
			];
			emojireg = emojireg.replace(new RegExp(ranges.join('|'), 'g'), '*');
			return emojireg;
		},
		send:function(){
			var _this=this;
			$('.btn-wrap').on('click','.btn-send',function(){

				var title = $('.post-title').val();
				var text = $('.post-content').val();
				
				var titletwo=title.replace(/^\s\s*/, '').replace(/\s\s*$/, '');
				if(titletwo.length<3){
					alert('标题不少于3个字');
					return false;
				}
				
				try{  
					text=text.replace(/\r\n/g,"<br>");
					text=text.replace(/\n/g,"<br>");  
				}catch(e) {  
					console.log(e.message);  
				}  
				

				var tokenName = $('.token').attr('name');
				var tokenVal = $('.token').val();
				var picurl = $('.tupian img');
				var section_id = $('.section_id').val();
				_this.pic=[];

				for(var i=0; i<picurl.length;i++){
					var Orientation;
					var id='img_'+i;
					$(picurl[i]).attr('id',id);
					var image=document.getElementById(id);

					EXIF.getData(image, function(){
						Orientation=EXIF.getTag(this, 'Orientation');
					});
					if(Orientation>1){//苹果你大爷，老子搞定你了.
						var bb=Draw.drawPhoto(image,Orientation,function(d,s,w,h){
							var src=d;
							var size=d.length*3/4;
							var data={'src':src,'width':w,'height':h,'size':size}
							_this.pic.push(data);
						});
					}else{
						var src=picurl[i].src;
						var size=$(picurl[i]).data('size');
						var width=$(picurl[i])[0]['naturalWidth'];
						var height=$(picurl[i])[0]['naturalHeight'];
						var data={'src':src,'width':width,'height':height,'size':size}
						_this.pic.push(data);
					}
				}
				setTimeout(function(){
					text=_this.textimg(text);
					text=_this.filteremoji(text);
					var data={'text':text,'title':title,'pic':_this.pic,'section_id':section_id};
					data[tokenName]=tokenVal;
					var kongke=/[\S]/g;//为空格时不发送
					if((text==''||!kongke.test(text))&&_this.pic==''){
						alert('请输入内容');
						return false;
					}
					console.log(data);
					$.ajax({
						type: "POST",
						url: "",
						data:data,
						dataType:'json',
						error: function(XMLHttpRequest, textStatus, errorThrown) {},
						timeout: 60000,
						success: function(json){
							if(json.code == 10000){
								alert(json.msg);
								window.location.href = json.data.src;
							}else if(json.code == 10001){
								alert(json.msg);
							}
						}
					});

				},0);




			});
		}
		
	}
});