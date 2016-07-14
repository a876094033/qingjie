<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <title>登陆</title>
        <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1, user-scalable=no">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <link rel="stylesheet" href="{{ $styles }}/css/mui.min.css">
        <link rel="stylesheet" href="{{ $styles }}/css/app.css">
    </head>

    <body class="bg-white">
        <div class="logo"><img src="{{ $styles }}/images/logo.jpg" alt="" /></div>
        <div class="login">
            <form action="{{ url('auth/login') }}" method="post">
                <input type="hidden" name="_token" value="{{ csrf_token() }}" />
                <div class="mui-input-group">
                    <div class="mui-input-row">
                        <label>账号</label>
                        <input type="text" placeholder="帐户名/手机号" name="name" />
                    </div>
                    <div class="mui-input-row password">
                        <label>密码</label>
                        <a href="{{ url('password') }}">忘记密码</a>
                        <input type="password" placeholder="请输入登录密码" name="password" />
                    </div>
                    <input class="mui-btn mui-btn-primary mui-btn-block btn" type="submit" value="登陆" />
                </div>
            </form>
            <p class="mui-text-center">还没有账号？<a href="{{ url('/auth/register') }}">立即注册</a></p>
            @if (count($errors) > 0)
            <div class="alert alert-danger">
                请修改下面的错误信息<br><br>
                <ul>
                    @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
            @endif
        </div>
    </body>
    <script src="{{ $styles }}/js/mui.min.js"></script>
</html>
</html>