<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>信息详情</title>
        <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1, user-scalable=no">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <link rel="stylesheet" href="{{ $styles }}/css/mui.min.css">
        <link rel="stylesheet" href="{{ $styles }}/css/app.css">
    </head>

    <body id="message">
        <!--页面标题栏开始-->
        <header class="mui-bar mui-bar-nav">
            <button type="button" class="mui-left mui-action-back mui-btn  mui-btn-link mui-btn-nav mui-pull-left">
                <span class="mui-icon mui-icon-left-nav"></span>
            </button>
            <h1 class="mui-center mui-title">详情</h1>
        </header>
        <!--页面标题栏结束-->
        <!--页面主内容区开始-->
        <div class="mui-content message-detail">
            <div class="mui-text-center">
                <h4>{{ $info['title'] }}</h4>
                <p>{{ $info['created_at'] }}</p>
            </div>
            <p>{{ $info['content'] }}</p>
        </div>
        <!--页面主内容区结束-->
        <footer class="mui-bar mui-bar-footer mui-bar-tab">
            <a href="index.html" class="mui-tab-item mui-active" id="bottom-btn-1">
                <span class="mui-icon icon-foot icon-foot1-on"></span>
                <span class="mui-tab-label">首页</span>
            </a>
            <a href="user-focus.html" class="mui-tab-item" id="bottom-btn-2">
                <span class="mui-icon icon-foot icon-foot2"></span>
                <span class="mui-tab-label">穿搭</span>
            </a>
            <a href="new-product.html" class="mui-tab-item" id="bottom-btn-3">
                <span class="mui-icon icon-foot icon-foot3"></span>
                <span class="mui-tab-label">新品</span>
            </a>
            <a href="cart.html" class="mui-tab-item">
                <span class="mui-icon icon-foot icon-foot4"></span>
                <span class="mui-tab-label">购物车</span>
            </a>
            <a href="user.html" class="mui-tab-item">
                <span class="mui-icon icon-foot icon-foot5"></span>
                <span class="mui-tab-label">用户中心</span>
            </a>
        </footer>
    </body>
    <script src="{{ $styles }}/js/zepto.js"></script>
    <script src="{{ $styles }}/js/mui.min.js"></script>
    <script>
        mui.init({
            swipeBack: true //启用右滑关闭功能
        });

    </script>
</html>
</html>