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
    <title>登录-万彩吧_pk10北京赛车_时时彩_快3_11选5_天下彩_天空彩票_快乐10分</title>
    <script src="/js/libs/fontSize.js"></script>
    <link rel="stylesheet" href="/resources/css/wancaiba/base.css">
    <link rel="stylesheet" href="/resources/css/wancaiba/login.css">
    <script src="/js/libs/require.js" defer data-main="/js/export/main.js"></script>
    <script>
            var massage = "请先登录";
        </script>

</head>
<body >
<!--js事件-->
<div id="url" data-url="login2" hidden=""></div>

<div class="home-wrapper">
    <div class="pages">
        <div class="login-page">

            <div class="hd-wrap">
                <a class="left icon loginicon return" href="javascript:history.go(-1);"></a>
                <h1 class="hd-logo">登录</h1>
                <a class="right login-ar" href="register.jsp">注册</a>
                <!-- <a class="right login-ar" href="/fm/register.jsp">注册</a> -->
            </div>

            <div class="login-wrap login-barb">
                <form id="login-form" method="post" action="/fm/signup">
                <input type="hidden" name="_token" value="C6zfhq8WbcDpBfWQp9221blr6ybyhHKDBp3xLtTT">
                <div class="line dnbottom">
                    <div class="lineicon i-username">
                        <input name="tel" class="box" type="tel" placeholder="请输入手机号">
                    </div>
                </div>
                <div class="reg-sheet-line"></div>
                <div class="line dntop">
                    <div class="lineicon i-password">
                        <input name="password" class="box" type="password"  placeholder="请输入密码">
                    </div>
                </div>

                <div id='login-btn' class="login-btn tc">登录</div>
                <div class="reg-sheet-protocol" id="js-reg-sheet-protocol">
                                                            <span class="fr"><a href="forget.jsp">忘记密码</a></span>
                </div>
                </form>
            </div>
        </div>

    </div>
</div>

</body>
</html>
