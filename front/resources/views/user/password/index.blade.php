<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>修改密码</title>
        <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1, user-scalable=no">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <link rel="stylesheet" href="{{ $styles }}/css/mui.min.css">
        <link rel="stylesheet" href="{{ $styles }}/css/app.css">
    </head>

    <body>
        <!--页面标题栏开始-->
        <header class="mui-bar mui-bar-nav">
            <button type="button" class="mui-left mui-action-back mui-btn  mui-btn-link mui-btn-nav mui-pull-left">
                <span class="mui-icon mui-icon-left-nav"></span>
            </button>
            <h1 class="mui-center mui-title">忘记密码</h1>
        </header>
        <!--页面标题栏结束-->
        <!--页面主内容区开始-->
        <div class="mui-content account-info">
            <div class="mui-input-group">
                <div class="mui-input-row">
                    <label>输入手机号</label>
                    <input type="tel" placeholder="请输入手机号" />
                </div>
                <div class="mui-input-row get-code">
                    <label>验证码</label>
                    <button>获取验证码</button>
                    <input type="text" placeholder="请输入短信验证码" />
                </div>
            </div>
            <div class="padding10">
                <a href="{{ url('/password/') }}" class="mui-btn mui-btn-primary mui-btn-block btn" type="button">下一步</a>
            </div>
        </div>
        <!--页面主内容区结束-->

    </body>
    <script src="{{ $styles }}/js/mui.min.js"></script>
</html>
</html>