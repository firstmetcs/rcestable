<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/inc/taglibs.jsp" %>
<%--消息通知--%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>RCE商城</title>
    <link rel="stylesheet" type="text/css" href="${path}/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="${path}/css/global.css">
    <link rel="stylesheet" type="text/css" href="${path}/css/headframe.css">
    <link rel="stylesheet" type="text/css" href="${path}/css/footframe.css">
    <link rel="stylesheet" type="text/css" href="${path}/css/selfcenter.css">
</head>
<body>
<!--头部导航-->
<%@ include file="/WEB-INF/inc/top.jsp" %>
<div class="self-center">
    <div class="layui-main">
        <br>
        <span class="layui-breadcrumb breadcrumb" lay-separator=">">
				<a href="">首页</a>
				<a><cite>消息通知</cite></a>
			</span>
        <div class="layui-row">
            <br>
            <div class="layui-col-md2 content">
                <div class="left-nav">
                    <ul>
                        <h3>订单中心</h3>
                        <li><a href="${path}/order/OrList?userid=${userid}">我的订单</a></li>
                        <li><a href="${path}/order/showEvaluate?userid=${userid}">评价晒单</a></li>
                        <li><a style="color: #008b8b" href="${path}/order/showInsurance?${userid}">意外保</a></li>
                    </ul>
                    <ul>
                        <h3>个人中心</h3>
                        <li><a href="${path}/user/index?userid=${userid}">我的个人中心</a></li>
                        <li><a href="${path}/user/showMessage?userid=${userid}">消息通知</a></li>
                        <li><a href="${path}/user/showCoupon?userid=${userid}">优惠券</a></li>
                    </ul>
                    <ul>
                        <h3>售后服务</h3>
                        <li><a href="">服务记录</a></li>
                        <li><a href="">申请服务</a></li>
                    </ul>
                </div>
            </div>
            <div class="layui-col-md9 content" style="margin-left: 60px;">
                <h1>消息通知</h1>
                <br>
                <br>

                <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
                    <ul class="layui-tab-title">
                        <li class="layui-this">全部消息</li>
                        <li>物流动态</li>
                        <li>特惠活动</li>
                    </ul>
                    <div class="layui-tab-content">
                        <div class="layui-tab-item layui-show">
                            <div class="booklist-detail">
                                <br>
                                <div class="nonelist">暂无数据</div>
                                <div>
                                    <div class="message-title">
                                        RCE物流：你购买的宝贝有新的动态
                                    </div>
                                    <div class="message-content">
                                        <img class="message-img" src="${path}/img/phone/vivonex.png">
                                        <h1 style="font-size: 12px">
                                            订单号：28973829483265<br>
                                            快递已签收<br>
                                            <a href="">去看看</a>
                                        </h1>
                                    </div>
                                    <hr>
                                    <div>
                                        <div class="message-title">
                                            RCE：跳楼大甩卖！！！满200-199！
                                        </div>
                                        <div class="message-content">
                                            <img class="message-img" src="${path}/img/phone/vivonex.png">
                                            <h1 style="font-size: 12px">

                                                <a href="">去看看</a>
                                            </h1>
                                        </div>
                                        <hr>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="layui-tab-item">
                            <div class="booklist-detail">
                                <br>
                                <div class="nonelist">暂无数据</div>
                                <div>
                                    <div class="message-title">
                                        RCE物流：你购买的宝贝有新的动态
                                    </div>
                                    <div class="message-content">
                                        <img class="message-img" src="${path}/img/phone/vivonex.png">
                                        <h1 style="font-size: 12px">
                                            订单号：28973829483265<br>
                                            快递已签收<br>
                                            <a href="">去看看</a>
                                        </h1>
                                    </div>
                                    <hr>
                                </div>
                            </div>
                        </div>
                        <div class="layui-tab-item">
                            <div class="booklist-detail">
                                <br>
                                <div class="nonelist">暂无数据</div>
                                <div>
                                    <div class="message-title">
                                        RCE：跳楼大甩卖！！！满200-199！
                                    </div>
                                    <div class="message-content">
                                        <img class="message-img" src="${path}/img/phone/vivonex.png">
                                        <h1 style="font-size: 12px">

                                            <a href="">去看看</a>
                                        </h1>
                                    </div>
                                    <hr>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="logo-nav-recommend" onmouseover="getNavRec(1)" onmouseout="removeNavRec(1)" style="display: none;">
    <div class="layui-main layui-row">
        <div class="layui-col-md2">
            <img src="${path}/img/phone/vivonex.png">
            <p class="goods-title">vivo Nex</p>
            <p class="goods-price">3982元起</p>
        </div>
        <div class="layui-col-md2">
            <img src="${path}/img/phone/vivonex.png">
            <p class="goods-title">vivo Nex</p>
            <p class="goods-price">3982元起</p>
        </div>
        <div class="layui-col-md2">
            <img src="${path}/img/phone/vivonex.png">
            <p class="goods-title">vivo Nex</p>
            <p class="goods-price">3982元起</p>
        </div>
        <div class="layui-col-md2">
            <img src="${path}/img/phone/vivonex.png">
            <p class="goods-title">vivo Nex</p>
            <p class="goods-price">3982元起</p>
        </div>
        <div class="layui-col-md2">
            <img src="${path}/img/phone/vivonex.png">
            <p class="goods-title">vivo Nex</p>
            <p class="goods-price">3982元起</p>
        </div>
        <div class="layui-col-md2">
            <img src="${path}/img/phone/vivonex.png">
            <p class="goods-title">vivo Nex</p>
            <p class="goods-price">3982元起</p>
        </div>
    </div>
</div>
<!--尾部-->
<%@ include file="/WEB-INF/inc/footer.jsp"%>
<script type="text/javascript" src="${path}/layui/layui.js"></script>
<script type="text/javascript" src="${path}/js/global.js"></script>
<script type="text/javascript" src="${path}/js/headframe.js"></script>
<script type="text/javascript" src="${path}/js/index.js"></script>
<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
<%--首页必要js--%>
<script type="text/javascript" src="${path}/js/index.js"></script>
</body>
</html>