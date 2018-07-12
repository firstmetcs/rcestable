<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/inc/taglibs.jsp" %>
<%--优惠券显示--%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>优惠券</title>
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
				<a href="${path}/user/index?userid=${userid}">首页</a>
				<a><cite>我的优惠券</cite></a>
			</span>
        <div class="layui-row">
            <br>
            <div class="layui-col-md2 content">
                <div class="left-nav">
                    <ul>
                        <h3>订单中心</h3>
                        <li><a href="${path}/order/OrList?userid=${userid}">我的订单</a></li>
                        <li><a href="${path}/order/showEvaluate?userid=${userid}">评价晒单</a></li>
                        <li><a href="${path}/order/showInsurance?${userid}">意外保</a></li>
                    </ul>
                    <ul>
                        <h3>个人中心</h3>
                        <li><a href="${path}/user/index?userid=${userid}">我的个人中心</a></li>
                        <li><a href="${path}/user/showMessage?userid=${userid}">消息通知</a></li>
                        <li><a href="${path}/user/showCoupon?userid=${userid}" style="color: #008b8b">优惠券</a></li>
                    </ul>
                    <ul>
                        <h3>售后服务</h3>
                        <li><a href="servicerecord.html">服务记录</a></li>
                        <li><a href="applyservice.html">申请服务</a></li>
                    </ul>
                </div>
            </div>
            <div class="layui-col-md9 content" style="margin-left: 60px;">
                <h1>优惠券</h1>
                <br>
                <br>

                <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
                    <ul class="layui-tab-title">
                        <li class="layui-this">未使用</li>
                        <li>已使用</li>
                        <li>已失效</li>
                    </ul>
                    <div class="layui-tab-content">
                        <div class="layui-tab-item layui-show">
                            <div class="booklist-detail">
                                <br>
                                <div class="nonelist">未找到相应优惠券</div>
                                <div class="listdetail">
                                    <div class="layui-row">
                                        <div class="layui-col-md3 lay-coupon-box">
                                            <div class="lay-coupon">
                                                <h1 class="coupon-value">￥300</h1><span>元</span>
                                                <p>满800可用</p>
                                                <p>2018年6月29日-2018年7月8日</p>
                                                <br>
                                                <input type="button" class="layui-btn" name="" value="立即使用">
                                            </div>
                                        </div>
                                        <div class="layui-col-md3 lay-coupon-box">
                                            <div class="lay-coupon">
                                                <h1 class="coupon-value">￥300</h1><span>元</span>
                                                <p>满800可用</p>
                                                <p>2018年6月29日-2018年7月8日</p>
                                                <br>
                                                <input type="button" class="layui-btn " name="" value="立即使用">
                                            </div>
                                        </div>
                                        <div class="layui-col-md3 lay-coupon-box">
                                            <div class="lay-coupon">
                                                <h1 class="coupon-value">￥300</h1><span>元</span>
                                                <p>满800可用</p>
                                                <p>2018年6月29日-2018年7月8日</p>
                                                <br>
                                                <input type="button" class="layui-btn" name="" value="立即使用">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="layui-tab-item">
                            <div class="booklist-detail">
                                <br>
                                <div class="nonelist">当前没有交易订单</div>
                                <div class="listdetail">
                                    <div class="layui-row">
                                        <div class="layui-col-md3 lay-coupon-box">
                                            <div class="lay-coupon coupon-disabled">
                                                <h1 class="coupon-value">￥300</h1><span>元</span>
                                                <p>满800可用</p>
                                                <p>2018年6月29日-2018年7月8日</p>
                                                <br>
                                            </div>
                                        </div>
                                        <div class="layui-col-md3 lay-coupon-box">
                                            <div class="lay-coupon coupon-disabled">
                                                <h1 class="coupon-value">￥300</h1><span>元</span>
                                                <p>满800可用</p>
                                                <p>2018年6月29日-2018年7月8日</p>
                                                <br>
                                            </div>
                                        </div>
                                        <div class="layui-col-md3 lay-coupon-box">
                                            <div class="lay-coupon coupon-disabled">
                                                <h1 class="coupon-value">￥300</h1><span>元</span>
                                                <p>满800可用</p>
                                                <p>2018年6月29日-2018年7月8日</p>
                                                <br>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="layui-tab-item">
                            <div class="booklist-detail">
                                <br>
                                <div class="nonelist">当前没有交易订单</div>
                                <div class="listdetail">
                                    <div class="layui-row">
                                        <div class="layui-col-md3 lay-coupon-box">
                                            <div class="lay-coupon coupon-disabled">
                                                <h1 class="coupon-value">￥300</h1><span>元</span>
                                                <p>满800可用</p>
                                                <p>2018年6月29日-2018年7月8日</p>
                                                <br>
                                                <input disabled="true" type="button" class="layui-btn " name=""
                                                       value="立即使用">
                                            </div>
                                        </div>
                                        <div class="layui-col-md3 lay-coupon-box">
                                            <div class="lay-coupon coupon-disabled">
                                                <h1 class="coupon-value">￥300</h1><span>元</span>
                                                <p>满800可用</p>
                                                <p>2018年6月29日-2018年7月8日</p>
                                                <br>
                                                <input disabled="true" type="button" class="layui-btn" name=""
                                                       value="立即使用">
                                            </div>
                                        </div>
                                        <div class="layui-col-md3 lay-coupon-box">
                                            <div class="lay-coupon coupon-disabled">
                                                <h1 class="coupon-value">￥300</h1><span>元</span>
                                                <p>满800可用</p>
                                                <p>2018年6月29日-2018年7月8日</p>
                                                <br>
                                                <input disabled="true" type="button" class="layui-btn" name=""
                                                       value="立即使用">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="layui-tab-item">
                            <div class="booklist-detail">
                                <br>
                                <div class="nonelist">当前没有交易订单</div>
                                <div class="listdetail">
                                    <table class="layui-table">
                                        <colgroup>
                                            <col width="55%">
                                            <col width="15%">
                                            <col width="15%">
                                            <col width="15%">
                                        </colgroup>
                                        <tr>
                                            <td colspan="4">
                                                <span class="timetoken">2018-06-16 09:09:02</span>
                                                <span class="bookid"><a href="">订单号: 287148362478637</a></span>
                                                <span class="bookid"><a href="">申请售后</a></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="layui-row">
                                                    <div class="layui-col-md2 small-pic">
                                                        <img src="${path}/img/index/4.jpg">
                                                    </div>
                                                    <div class="layui-col-md7 good-des">
															<span class="description">
																现货先发 肖秀荣2019考研政治三件套 命题人讲真题 上下册+知识点精讲+1000题 共5本考
															</span>
                                                    </div>
                                                    <div class="layui-col-md2 good-num">
                                                        <span>x2</span>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>收货人：张爽</td>
                                            <td><i class="layui-icon layui-icon-rmb"></i> 在线支付</td>
                                            <td>
                                                <a href="">查看订单</a>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--尾部-->
<%@ include file="/WEB-INF/inc/footer.jsp" %>
<script type="text/javascript" src="${path}/layui/layui.js"></script>
<script type="text/javascript" src="${path}/js/global.js"></script>
<script type="text/javascript" src="${path}/js/headframe.js"></script>
<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
<%--首页必要js--%>
<script type="text/javascript" src="${path}/js/index.js"></script>
</body>
</html>