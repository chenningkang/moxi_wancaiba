<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	trimDirectiveWhitespaces="true"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,width=device-width, user-scalable=no, minimal-ui">
    <meta content="no" name="apple-mobile-web-app-capable"><!-- 全屏显示 WebApp -->
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <meta content="telephone=no, email=no" name="format-detection">
    <meta content="no" name="wap-font-scale">
    <title>快速注册-万彩吧_pk10北京赛车_时时彩_快3_11选5_天下彩_天空彩票_快乐10分</title>
    <script src="/js/libs/fontSize.js"></script>
    <link rel="stylesheet" href="/resources/css/wancaiba/base.css">
    <link rel="stylesheet" href="/resources/css/wancaiba/login.css">
    <script src="/js/libs/require.js" defer data-main="/js/export/main.js?v=123"></script>
    <script>
            var massage = null;
        </script>
</head>
<body >
<!--js事件-->
<div id="url" data-url="login2" hidden=""></div>

<div class="home-wrapper">
    <div class="pages">
        <div class="login-page">

            <div class="hd-wrap">
                <a class="left icon loginicon return" href="JavaScript:history.go(-1)"></a>
                <h1 class="hd-logo">快速注册</h1>
                <a class="right login-ar" href="login.jsp">登录</a>
            </div>


            <div class="para reg-plan-div">
                <div class="reg-plan-map">
                    <i class="i0 active">•</i>
                    <span class="sp0 "></span>
                    <i class="i1 ">•</i>
                    <span class="sp1"></span>
                    <i class="i2">•</i>
                </div>
                <div class="reg-plan-text">
                    <span class="spt0 active">填写手机号</span>
                    <span class="spt1">填写用户名</span>
                    <span class="spt2">成功</span>
                </div>
            </div>

            <div class="para reg-plan-div hide">
                <div class="reg-plan-map">
                    <i class="i0 active">•</i>
                    <span class="sp0 active"></span>
                    <i class="i1 active">•</i>
                    <span class="sp1"></span>
                    <i class="i2">•</i>
                </div>
                <div class="reg-plan-text">
                    <span class="spt0 ">填写手机号</span>
                    <span class="spt1 active">填写用户名</span>
                    <span class="spt2">成功</span>
                </div>
            </div>

            <div class="login-wrap">
                <div class="tel-wrap">
                    <div class="line dnbottom">
                        <input name="rtel" class="box" type="tel" placeholder="请输入手机号码">
                    </div>
                    <div class="reg-sheet-line"></div>
                    <div class="line dntop">
                        <input name="picpw" class="box" type="text"  placeholder="请填写计算结果">
                        <div class="yma"><img src="/verify?random=5889" ></div>
                    </div>

                    <input hidden id="mark" type="text" value="/fm/one">

                    <div id="register-btn" class="login-btn tc">获取验证码</div>
                    <div class="reg-sheet-protocol" id="js-reg-sheet-protocol">
                        <span class="reg-sheet-iradio active"></span>
                        <span>我已经阅读并同意《<a href="/protocol.html">万彩吧用户注册协议</a>》</span>
                    </div>
                </div>

                <div class="password-wrap" style="display:none">
                    <form id="register-form" method="post" action="/fm/two">
                        <input type="hidden" name="_token" value="C6zfhq8WbcDpBfWQp9221blr6ybyhHKDBp3xLtTT">
                        <input hidden type="text" id="tel" name="tel">
                    <div class="line">
                        <p class="o-lt">验证码</p>
                        <p class="o-lt2"><input name="code" class="box" type="text" ></p>
                        <p class="o-lr"><a href="javascript:void(0)" class="org-btn" id="get_check_code">重新获取验证码</a></p>
                    </div>

                    <div class="reg-sheet-tip"></div>

                    <div class="line dnbottom">
                        <p class="o-lt">用户名</p>
                        <p class="o-lt3"><input name="name" class="box" type="txet"  placeholder="不超过8个中文，注册后不能修改"></p>
                    </div>
                    <div class="reg-sheet-line"></div>
                    <div class="line dntop dnbottom">
                        <p class="o-lt">密码</p>
                        <p class="o-lt3"><input name="pwd1" class="box" type="password" placeholder="6-20个数字和字母_"></p>
                    </div>
                    <div class="reg-sheet-line"></div>
                    <div class="line dntop ">
                        <p class="o-lt">确认密码</p>
                        <p class="o-lt3"><input name="pwd2" class="box" type="password" placeholder=""></p>
                    </div>
                    <div id="register-submit" class="login-btn tc">注册</div>
                    </form>
                </div>
            </div>


        </div>

    </div>
</div>

</body>
</html>


