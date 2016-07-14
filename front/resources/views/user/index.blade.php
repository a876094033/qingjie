<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>通知</title>
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
            <a href="{{ url('message') }}" class="top-message">通知</a>
        </header>
        <!--页面标题栏结束-->
        <!--页面主内容区开始-->
        <div class="mui-content">
            <div class="user-account-img mui-text-center">
                <p><a href="{{ url('/user/update') }}"> <img src="{{ empty(Auth::user()->img) ? $styles.'/images/user.png' : Auth::user()->img }}" alt="" /></a></p>
                <p class="name">{{ Auth::user()->nickname }}</p>
                <p>常居地：上海</p>
                <span>(点击头像修改资料)</span>
            </div>
            <ul class="user-account-title clearfix">
                <li>
                    <a href="{{ url('user/collect/brand') }}">
                        <span>{{ $collect['brand'] }}</span>
                        <span>品牌收藏</span>
                    </a>
                </li>
                <li>
                    <a href="{{ url('user/collect/goods') }}">
                        <span>{{ $collect['goods'] }}</span>
                        <span>单品收藏</span>
                    </a>
                </li>
            </ul>
            <ul class="mui-table-view user-table-view">
                <li class="mui-table-view-cell">
                    <a class="mui-navigate-right" href="{{ url('user/order') }}"><span class="mui-badge user-badge">查看全部订单</span>全部订单</a>
                </li>
                <div class="user-table-view-cell">
                    <div class="mui-row">
                        <div class="mui-col-xs-3 order-name"><span class="u_o_01"></span>待付款</div>
                        <div class="mui-col-xs-3 order-name"><span class="u_o_02"></span>待发货</div>
                        <div class="mui-col-xs-3 order-name"><span class="u_o_03"><i class="mui-badge mui-badge-danger order-badge">24</i> </span>待评论</div>
                        <div class="mui-col-xs-3 order-name"><span class="u_o_04"></span>退款</div>
                    </div>
                </div>
            </ul>
            <ul class="mui-table-view">
                <li class="mui-table-view-cell">
                    <a class="mui-navigate-right" href="{{ url('user/address') }}">我的地址</a>
                </li>
                <li class="mui-table-view-cell">
                    <a class="mui-navigate-right"><span class="mui-badge user-badge">{{ $userinfo['shape'] }}</span>我的体型</a>
                </li>
                <li class="mui-table-view-cell">
                    <a href="tel:4008008080" class="mui-navigate-right"><span class="mui-badge user-badge">400-800-8080</span>客服电话</a>
                </li>
            </ul>
        </div>
        <!--页面主内容区结束-->
        <footer class="mui-bar mui-bar-footer mui-bar-tab">
            <a href="index.html" class="mui-tab-item" id="bottom-btn-1">
                <span class="mui-icon icon-foot icon-foot1"></span>
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
            <a href="cart.html" class="mui-tab-item"  id="bottom-btn-4">
                <span class="mui-icon icon-foot icon-foot4"></span>
                <span class="mui-tab-label">购物车</span>
            </a>
            <a href="user.html" class="mui-tab-item  mui-active"  id="bottom-btn-5">
                <span class="mui-icon icon-foot icon-foot5-on"></span>
                <span class="mui-tab-label">用户中心</span>
            </a>
        </footer>
        <script src="{{ $styles }}/js/mui.min.js"></script>
        <script src="{{ $styles }}/js/app.js"></script>
        <script>
            mui.init({
                swipeBack: true //启用右滑关闭功能
            });
            mui('.mui-scroll-wrapper').scroll();
            mui('body').on('shown', '.mui-popover', function (e) {
                //console.log('shown', e.detail.id);//detail为当前popover元素
            });
            mui('body').on('hidden', '.mui-popover', function (e) {
                //console.log('hidden', e.detail.id);//detail为当前popover元素
            });
        </script>
    </body>
</html>
</html>