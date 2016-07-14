<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Hello MUI</title>
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
            <h1 class="mui-center mui-title">设置</h1>
        </header>
        <!--页面标题栏结束-->
        <!--页面主内容区开始-->
        <div class="mui-scroll">
            <ul class="mui-table-view mui-table-view-chevron" style="margin-top:60px;">
                <li class="mui-table-view-cell mui-media">
                    <a class="mui-navigate-right" href="#picture">
                        <img class="mui-media-object mui-pull-left head-img" src="{{ empty(Auth::user()->img) ? $styles.'/images/user.png' : Auth::user()->img }}" alt="" />
                    </a>
                </li>
            </ul>
            <ul class="mui-table-view mui-table-view-chevron">
                <li class="mui-table-view-cell">
                    <a href="#" class="mui-navigate-right">昵　称：{{ Auth::user()->nickname }}</a>
                </li>
            </ul>
            <ul class="mui-table-view mui-table-view-chevron">
                <li class="mui-table-view-cell">
                    <a href="#" class="mui-navigate-right">登录密码：****</a>
                </li>
                <li class="mui-table-view-cell">
                    <a href="#" class="mui-navigate-right">手 机 号：{{ Auth::user()->phone }}</a>
                </li>
                <li class="mui-table-view-cell">
                    <a href="#" class="mui-navigate-right">性　别：{{ $userinfo['sex'] }}</a>
                </li>
            </ul>
            <ul class="mui-table-view mui-table-view-chevron">
                <li class="mui-table-view-cell">
                    <a href="#" class="mui-navigate-right">出生日期：{{ $userinfo['birthday'] }}</a>
                </li>
            </ul>
            <div class="padding10">
                <button class="mui-btn mui-btn-primary mui-btn-block btn" type="button">保存提交</button>
            </div>
        </div>
        <!-- 底部弹出层 -->
        <div id="picture" class="mui-popover mui-popover-action mui-popover-bottom picture-popover">
            <ul class="mui-table-view">
                <li class="mui-table-view-cell">
                    <a href="#">拍照</a>
                </li>
                <li class="mui-table-view-cell">
                    <a href="#">从手机相册中选一张</a>
                </li>
            </ul>
            <ul class="mui-table-view">
                <li class="mui-table-view-cell">
                    <a href="#picture">取消</a>
                </li>
            </ul>
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
    <script src="{{ $styles }}/js/mui.min.js"></script>
    <script>
        mui.init({
            swipeBack: true //启用右滑关闭功能
        });
        mui('body').on('shown', '.mui-popover', function (e) {
            //console.log('shown', e.detail.id);//detail为当前popover元素
        });
        mui('body').on('hidden', '.mui-popover', function (e) {
            //console.log('hidden', e.detail.id);//detail为当前popover元素
        });
        var info = document.getElementById("info");
        mui('body').on('tap', '.mui-popover-action li>a', function () {
            var a = this,
                    parent;
            //根据点击按钮，反推当前是哪个actionsheet
            for (parent = a.parentNode; parent != document.body; parent = parent.parentNode) {
                if (parent.classList.contains('mui-popover-action')) {
                    break;
                }
            }
            //关闭actionsheet
            mui('#' + parent.id).popover('toggle');
            info.innerHTML = "你刚点击了\"" + a.innerHTML + "\"按钮";
        })
    </script>
</html>
</html>