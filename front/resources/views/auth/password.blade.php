<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <title>注册</title>
        <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1, user-scalable=no">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <link rel="stylesheet" href="{{ $styles }}/css/mui.min.css">
        <link rel="stylesheet" href="{{ $styles }}/css/app.css">
    </head>

    <body class="bg-white">
        <div class="logo"><img src="{{ $styles }}/images/logo.jpg" alt="" /></div>
        <div class="login">
            <div class="mui-input-group">
                <div class="mui-input-row">
                    <label>账　号</label>
                    <input type="text" placeholder="请输入账户名">
                </div>
                <div class="mui-input-row">
                    <label>密　码</label>
                    <input type="password" placeholder="请输入登录密码">
                </div>
                <div class="mui-input-row">
                    <label>手机号</label>
                    <input type="text" placeholder="请输入手机号码">
                </div>
                <div class="mui-input-row get-code">
                    <label>验证码</label>
                    <button>获取验证码</button>
                    <input type="text" placeholder="请输入短信验证码" />
                </div>
                <button class="mui-btn mui-btn-primary mui-btn-block btn" type="button">注册</button>
            </div>
            <p class="mui-text-center">已有账号？<a href="login.html">立即登录</a></p>
        </div>
    </body>
    <script src="{{ $styles }}/js/mui.min.js"></script>
</html>