<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>信息列表</title>
        <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1, user-scalable=no">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <link rel="stylesheet" href="{{ $styles }}/css/mui.min.css">
        <link rel="stylesheet" href="{{ $styles }}/css/app.css">
        <style>
            .design-content{background: #fff;}
            .design-content .title{padding: 10px; margin-bottom: -20px;}
            .brand-tip div{width: 19%;}
            .brand-tip span{width: 81%;float: right;display: block;color: #9c9c9c;}
            .mui-table-view-cell.mui-active{background: none;}
            .mui-table-view.mui-grid-view.qj-border{padding-bottom: 55px;}
        </style>
    </head>

    <body>
        <header class="mui-bar mui-bar-nav">
            <button type="button" class="mui-left mui-action-back mui-btn  mui-btn-link mui-btn-nav mui-pull-left">
                <span class="mui-icon mui-icon-left-nav"></span>
            </button>
            <a href="user-message.html" id="info" class="mui-icon mui-icon-chatbubble mui-pull-right"></a>

            <div class="mui-title">
                <input type="text" placeholder="赶快搜索品牌看看哦"/>
                <i class="icon-search"></i>
            </div>
        </header>

        <div class="mui-content">
            <div class="design-content">
                <img src="{{ $styles }}/images/design.jpg" width="100%"/>
                <ul class="mui-table-view">
                    <div class="title">{{ $user['nickname'] }}</div>
                    <li class="mui-table-view-cell mui-media brand-tip">
                        <div class="mui-media-body mui-pull-left">设计风格：</div><span>{{$designer['design_style']}}</span>
                    </li>
                    <li class="mui-table-view-cell mui-media brand-tip">
                        <div class="mui-media-body mui-pull-left">设计师：</div><span>{{$designer['introduce']}}</span>
                    </li>
                </ul>
            </div>
            <div id="product" class="list-control-content">
                <div class="mui-scroll">
                    <ul class="mui-table-view mui-grid-view qj-border">
                        @if ($goods)
                        @foreach ($goods as $good)
                        <li class="mui-table-view-cell mui-media mui-col-xs-6 qj-list">
                            <div class="qj-list-log new">new</div>
                            <a href="#">
                                <img class="mui-media-object" src="{{ empty($good['img']) ? $styles.'/images/index-list-img.jpg' : $good['img'] }}">
                            </a>

                            <div class="mui-ellipsis qj-list-title">{{ $good['name'] }}</div>
                            <div class="qj-list-title">￥{{ $good['price'] }}</div>
                        </li>
                        @endforeach
                        @endif
                    </ul>
                </div>
            </div>
        </div>
        <footer class="mui-bar mui-bar-footer mui-bar-tab">
            <a href="/" class="mui-tab-item" id="bottom-btn-1">
                <span class="mui-icon icon-foot icon-foot1"></span>
                <span class="mui-tab-label">首页</span>
            </a>
            <a href="chuanda.html" class="mui-tab-item" id="bottom-btn-2">
                <span class="mui-icon icon-foot icon-foot2"></span>
                <span class="mui-tab-label">穿搭</span>
            </a>
            <a href="{{ url('/designer/1') }}" class="mui-tab-item mui-active" id="bottom-btn-3">
                <span class="mui-icon icon-foot icon-foot3-on"></span>
                <span class="mui-tab-label">新品</span>
            </a>
            <a href="cart.html" class="mui-tab-item" id="bottom-btn-4">
                <span class="mui-icon icon-foot icon-foot4"></span>
                <span class="mui-tab-label">购物车</span>
            </a>
            <a href="user.html" class="mui-tab-item" id="bottom-btn-5">
                <span class="mui-icon icon-foot icon-foot5"></span>
                <span class="mui-tab-label">用户中心</span>
            </a>
        </footer>
        <script src="{{ $styles }}/js/zepto.js"></script>
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