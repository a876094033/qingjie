<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>轻街</title>
        <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1, user-scalable=no">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <link rel="stylesheet" href="{{ $styles }}/css/mui.min.css">
        <link rel="stylesheet" href="{{ $styles }}/css/app.css">
        <style>
            html,body {background-color: #f4f4f4;}
            .mui-fullscreen {top: 44px;height: auto;display: none;;}
            .mui-segmented-control.mui-segmented-control-inverted .menu_item.mui-active{color:#d0121b;}
            .mui-slider-indicator.mui-segmented-control {background-color: #f4f4f4;}
            .mui-segmented-control.mui-segmented-control-inverted.mui-segmented-control-vertical .mui-control-item{width: 100%;border-bottom: 0;background: url(images/menu_icon.png) no-repeat;background-size: 18%;}
            .mui-segmented-control.mui-segmented-control-inverted.mui-segmented-control-vertical .mui-control-item.mui-active{background: url(images/menu_icon.png) no-repeat #fff;background-size: 18%;color:#d0121b}
            .menu_body{background: #fff;}
            .menu_left{background:#f4f4f4}
            .mui-control-content a{line-height: 38px;color: #666;width: 24%;display: inline-block;text-align: center;}
            .mui-segmented-control.mui-segmented-control-inverted.mui-segmented-control-vertical .menu_icon_01,.mui-segmented-control.mui-segmented-control-inverted.mui-segmented-control-vertical .menu_icon_01.mui-active{background-position: 12px 11px}
            .mui-segmented-control.mui-segmented-control-inverted.mui-segmented-control-vertical .menu_icon_02,.mui-segmented-control.mui-segmented-control-inverted.mui-segmented-control-vertical .menu_icon_02.mui-active{background-position: 12px -33px}
            .mui-segmented-control.mui-segmented-control-inverted.mui-segmented-control-vertical .menu_icon_03,.mui-segmented-control.mui-segmented-control-inverted.mui-segmented-control-vertical .menu_icon_03.mui-active{background-position: 12px -184px}
            .mui-segmented-control.mui-segmented-control-inverted.mui-segmented-control-vertical .menu_icon_04,.mui-segmented-control.mui-segmented-control-inverted.mui-segmented-control-vertical .menu_icon_04.mui-active{background-position: 12px -86px}
            .mui-segmented-control.mui-segmented-control-inverted.mui-segmented-control-vertical .menu_icon_05,.mui-segmented-control.mui-segmented-control-inverted.mui-segmented-control-vertical .menu_icon_05.mui-active{background-position: 12px -139px}
        </style>
    </head>
    <body>
        <header class="mui-bar mui-bar-nav">
            <a id="menu" class="mui-icon mui-icon-bars mui-pull-left"></a>
            <a href="{{ url('/message') }}" id="info" class="mui-icon mui-icon-chatbubble mui-pull-right"></a>
            <div class="mui-title">
                <input type="text" placeholder="赶快搜索品牌看看哦" />
            </div>
        </header>
        <div class="mui-content index">
            <div id="slider1" class="mui-slider banner" >
                <div class="mui-slider-group mui-slider-loop">
                    @if ($banners)
                    @foreach ($banners as $banner)
                    <!-- 额外增加的一个节点(循环轮播：第一个节点是最后一张轮播) -->
                    <!-- 第一张 -->
                    <div class="mui-slider-item">
                        <a href="{{ $banner['redirect_url'] }}">
                            <img src="http://admin.qingjie.com/{{ $banner['img_url'] }}">
                        </a>
                    </div>
                    @endforeach
                    @endif
                </div>
                <div class="mui-slider-indicator">
                    <div class="mui-indicator mui-active"></div>
                    @if ($banners)
                    @foreach ($banners as $banner)
                    <div class="mui-indicator"></div>
                    @endforeach
                    @endif
                </div>
            </div>
            <ul class="mui-table-view mui-grid-view qj-border">
                <li class="mui-table-view-cell mui-media mui-col-xs-6">
                    <a href="#">
                        <img class="mui-media-object" src="{{ $styles }}/images/boy.jpg">
                    </a>
                </li>
                <li class="mui-table-view-cell mui-media mui-col-xs-6">
                    <a href="#">
                        <img class="mui-media-object" src="{{ $styles }}/images/girl.jpg">
                    </a>
                </li>
            </ul>
            <ul class="qj-sort qj-border">
                <div class="qj-title">原创设计师推荐</div>
                @if ($designers)
                @foreach ($designers as $designer)
                <li>
                    <a href="{{ url('designer/'.$designer['id']) }}">
                        <img src="{{ empty($designer['img']) ?  $styles.'/images/user.png' : $designer['img'] }}">
                        <p>{{ $designer['nickname'] }}</p>
                    </a>
                </li>
                @endforeach
                @endif
            </ul>
            <ul class="mui-table-view mui-grid-view qj-border">
                <div class="qj-title">原创品牌推荐</div>
                @if ($goods)
                @foreach ($goods as $good)
                <li class="mui-table-view-cell mui-media mui-col-xs-6 qj-list">
                    <div class="qj-list-log new">new</div>
                    <a href="#">
                        <img class="mui-media-object" src="{{ empty($good['img']) ? $styles . '/images/index-list-img.jpg' : $good['img'] }}">
                    </a>
                    <div class="mui-ellipsis qj-list-title">{{ $good['name'] }}</div>
                    <div class="qj-list-title">￥{{ $good['price'] }}</div>
                </li>
                @endforeach
                @endif
            </ul>
        </div>
        <footer class="mui-bar mui-bar-footer mui-bar-tab">
            <a href="{{ url('/') }}" class="mui-tab-item mui-active" id="bottom-btn-1">
                <span class="mui-icon icon-foot icon-foot1-on"></span>
                <span class="mui-tab-label">首页</span>
            </a>
            <a href="{{ url('/chuanda') }}" class="mui-tab-item" id="bottom-btn-2">
                <span class="mui-icon icon-foot icon-foot2"></span>
                <span class="mui-tab-label">穿搭</span>
            </a>
            <a href="{{ url('/goods') }}" class="mui-tab-item" id="bottom-btn-3">
                <span class="mui-icon icon-foot icon-foot3"></span>
                <span class="mui-tab-label">新品</span>
            </a>
            <a href="{{ url('/cart') }}" class="mui-tab-item"  id="bottom-btn-4">
                <span class="mui-icon icon-foot icon-foot4"></span>
                <span class="mui-tab-label">购物车</span>
            </a>
            <a href="{{ url('/user') }}" class="mui-tab-item"  id="bottom-btn-5">
                <span class="mui-icon icon-foot icon-foot5"></span>
                <span class="mui-tab-label">用户中心</span>
            </a>
        </footer>
        <div id="menu_list" class="mui-slider mui-fullscreen">
            <div id="sliderSegmentedControl" class="mui-scroll-wrapper mui-slider-indicator mui-segmented-control mui-segmented-control-inverted">
                <div class="mui-scroll">
                    <a class="mui-control-item menu_item mui-active" href="#menu_item1">
                        男生
                    </a>
                    <a class="mui-control-item menu_item" href="#menu_item2">
                        女生
                    </a>
                </div>
            </div>
            <div id="menu_item1" class="mui-control-content mui-content mui-row menu_body mui-active ">
                <div class="mui-col-xs-3 menu_left">
                    <div class="mui-segmented-control mui-segmented-control-inverted mui-segmented-control-vertical">
                        <a class="mui-control-item menu_icon_01 mui-active" href="#content1">上衣</a>
                        <a class="mui-control-item menu_icon_02" href="#content2">裤装</a>
                        <a class="mui-control-item menu_icon_04" href="#content3">风格</a>
                        <a class="mui-control-item menu_icon_05" href="#content4">场景</a>
                    </div>
                </div>
                <div id="segmentedControlContents" class="mui-col-xs-9">
                    <div id="content1" class="mui-control-content mui-active">
                        <a href="#">全部</a><a href="#">T恤</a><a href="#">衬衫</a><a href="#">POLO</a>
                        <a href="#">背心</a><a href="#">卫衣</a><a href="#">夹克</a><a href="#">马甲</a>
                        <a href="#">皮衣</a><a href="#">大衣/风衣</a><a href="#">毛衣/针织</a><a href="#">西装</a>
                        <a href="#">防风外套</a><a href="#">套装</a>
                    </div>
                    <div id="content2" class="mui-control-content">
                        <a href="#">全部</a><a href="#">休闲裤</a><a href="#">西裤</a><a href="#">牛仔裤</a>
                        <a href="#">短裤</a><a href="#">运动裤</a><a href="#" style="width: 30%">打底裤/紧身裤</a>
                    </div>
                    <div id="content3" class="mui-control-content">
                        <a href="#">全部</a><a href="#">职场</a><a href="#">逛街</a><a href="#">约会</a>
                        <a href="#">居家</a><a href="#">户外</a><a href="#">宴会</a>
                    </div>
                    <div id="content4" class="mui-control-content">
                        <a href="#">全部</a><a href="#">欧美</a><a href="#">复古</a><a href="#">街头</a>
                        <a href="#">简约</a><a href="#">英伦</a><a href="#">清新</a><a href="#">文艺</a>
                        <a href="#">名族</a><a href="#">中国风</a><a href="#">韩版</a><a href="#">朋克</a>
                        <a href="#">中性</a><a href="#">森林</a>
                    </div>
                </div>
            </div>
            <div id="menu_item2" class="mui-slider-item mui-control-content mui-content mui-row menu_body ">
                <div class="mui-col-xs-3 menu_left">
                    <div class="mui-segmented-control mui-segmented-control-inverted mui-segmented-control-vertical">
                        <a class="mui-control-item menu_icon_01 mui-active" href="#content5">上衣</a>
                        <a class="mui-control-item menu_icon_02" href="#content6">裤装</a>
                        <a class="mui-control-item menu_icon_03" href="#content7">裙装</a>
                        <a class="mui-control-item menu_icon_04" href="#content8">风格</a>
                        <a class="mui-control-item menu_icon_05" href="#content9">场景</a>
                    </div>
                </div>
                <div id="segmentedControlContents2" class="mui-col-xs-9">
                    <div id="content5" class="mui-control-content mui-active">
                        <a href="#">全部</a><a href="#">T恤</a><a href="#">衬衫</a><a href="#">POLO</a>
                        <a href="#">背心</a><a href="#">卫衣</a><a href="#">夹克</a><a href="#">马甲</a>
                        <a href="#">皮衣</a><a href="#">大衣/风衣</a><a href="#">毛衣/针织</a><a href="#">西装</a>
                        <a href="#">防风外套</a><a href="#">套装</a>
                    </div>
                    <div id="content6" class="mui-control-content">
                        <a href="#">全部</a><a href="#">休闲裤</a><a href="#">西裤</a><a href="#">牛仔裤</a>
                        <a href="#">短裤</a><a href="#">运动裤</a><a href="#" style="width: 30%">打底裤/紧身裤</a>
                    </div>
                    <div id="content7" class="mui-control-content">
                        <a href="#">半身裙</a><a href="#">连衣裙</a><a href="#">礼服</a>
                    </div>
                    <div id="content8" class="mui-control-content">
                        <a href="#">全部</a><a href="#">职场</a><a href="#">逛街</a><a href="#">约会</a>
                        <a href="#">居家</a><a href="#">户外</a><a href="#">宴会</a>
                    </div>
                    <div id="content9" class="mui-control-content">
                        <a href="#">全部</a><a href="#">欧美</a><a href="#">复古</a><a href="#">街头</a>
                        <a href="#">简约</a><a href="#">英伦</a><a href="#">清新</a><a href="#">文艺</a>
                        <a href="#">名族</a><a href="#">中国风</a><a href="#">韩版</a><a href="#">朋克</a>
                        <a href="#">中性</a><a href="#">森林</a>
                    </div>
                </div>
            </div>
        </div>
        <script src="{{ $styles }}/js/zepto.min.js"></script>
        <script src="{{ $styles }}/js/mui.min.js"></script>
        <script src="{{ $styles }}/js/app.js"></script>
        <script type="text/javascript" charset="utf-8">
            mui.init({
            });
            var slider = mui("#slider1");
            slider.slider({
                interval: 5000
            });
            $('#menu').on('tap', function () {
                $('#menu_list').toggle();
            })
        </script>
    </body>
</html>