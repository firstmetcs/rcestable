<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/inc/taglibs.jsp" %>
<%--评价晒单--%>
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
<
<%@ include file="/WEB-INF/inc/top.jsp" %>

<div class="self-center">
    <div class="layui-main">
        <br>
        <span class="layui-breadcrumb breadcrumb" lay-separator="|">
				<a href="${path}/user/index?userid=${orders.get(0).orderGoodsList.get(0).userid}">首页</a>
				<a><cite>评价晒单</cite></a>
			</span>
        <div class="layui-row">
            <br>
            <div class="layui-col-md2 content">
                <div class="left-nav">
                    <ul>
                        <h3>订单中心</h3>
                        <li><a href="${path}/order/OrList?userid=${orders.get(0).orderGoodsList.get(0).userid}">我的订单</a>
                        </li>
                        <li><a href="${path}/order/showEvaluate?userid=${orders.get(0).orderGoodsList.get(0).userid}"
                               style="color: #008b8b">评价晒单</a></li>
                        <li><a href="${path}/order/showInsurance?userid=${orders.get(0).orderGoodsList.get(0).userid}">意外保</a>
                        </li>
                    </ul>
                    <ul>
                        <h3>个人中心</h3>
                        <li><a href="${path}/user/index?userid=${orders.get(0).orderGoodsList.get(0).userid}">我的个人中心</a>
                        </li>
                        <li>
                            <a href="${path}/user/showMessage?userid=${orders.get(0).orderGoodsList.get(0).userid}">消息通知</a>
                        </li>
                        <li>
                            <a href="${path}/user/showCoupon?userid=${orders.get(0).orderGoodsList.get(0).userid}">优惠券</a>
                        </li>
                    </ul>
                    <ul>
                        <h3>售后服务</h3>
                        <li><a href="">服务记录</a></li>
                        <li><a href="">申请服务</a></li>
                    </ul>
                </div>
            </div>
            <div class="layui-col-md9 content" style="margin-left: 60px;">
                <h1>商品评价</h1><span>&nbsp;<a href=""> 请谨防钓鱼连接或诈骗电话，了解更多></a></span>
                <br>
                <br>

                <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
                    <ul class="layui-tab-title">
                        <li class="layui-this">待评价商品</li>
                        <li>已评价商品</li>
                    </ul>
                    <div class="layui-tab-content">
                        <div class="layui-tab-item layui-show">
                            <div class="booklist-detail">
                                <br>
                                <c:if test="${orders.size()==0}">
                                    <div class="nonelist">暂时没有符合条件的商品</div>
                                </c:if>
                                <c:if test="${orders.size()>0}">
                                    <div class="listdetail">
                                        <table class="layui-table">
                                            <c:forEach items="${orders}" var="orderLists" varStatus="status">
                                                <c:if test="${orderLists.orderstatus==2}"><%--已完成--%>
                                                    <c:if test="${orderLists.isappraises==0}">
                                                        <colgroup>
                                                            <col width="50%">
                                                            <col width="15%">
                                                            <col width="15%">
                                                            <col width="20%">
                                                        </colgroup>
                                                        <tr>
                                                            <td colspan="4">
                                                        <span class="timetoken">
                                                            <fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss"
                                                                            value="${orderLists.creattime}"/>
                                                        </span>
                                                                <span class="bookid"><a
                                                                        href="${path}/order/showOrderInfo?orderid=${orderLists.orderid}">订单号: ${orderLists.orderno}</a></span>
                                                                <c:if test="${orderLists.orderstatus==2}">
                                                                    <span class="bookid"><a href="">申请售后</a></span>
                                                                </c:if>
                                                            </td>
                                                        </tr>
                                                        <c:set var="allmoney" value="0"/>
                                                        <c:forEach items="${orderLists.orderGoodsList}"
                                                                   var="orderGoodsList">
                                                            <c:set var="username" value="${orderGoodsList.username}"/>
                                                            <c:set var="allmoney"
                                                                   value="${allmoney + orderGoodsList.goodsnums * orderGoodsList.goodsprice }"/>
                                                            <tr>
                                                            <td>
                                                                <div class="layui-row">
                                                                    <div class="layui-col-md2 small-pic">
                                                                            <%--#商品详情连接--%>
                                                                        <a href="${path}/goods/findGood?goodsId=${orderGoodsList.goodsid}&?pageCode=1">
                                                                            <img
                                                                                    src="${path}/img/goodsAttr/${orderGoodsList.goodsimage}"></a>
                                                                    </div>
                                                                    <div class="layui-col-md7 good-des">
															<span class="description">
															<a href="${path}/goods/findGood?goodsId=${orderGoodsList.goodsid}&?pageCode=1">
                                                                ${orderGoodsList.goodsname},${orderGoodsList.goodsversion},${orderGoodsList.goodscolor},${orderGoodsList.goodstotaldesc}
                                                            </a>
                                                            </span>
                                                                    </div>
                                                                    <div class="layui-col-md2 good-num">
                                                                        <span>x${orderGoodsList.goodsnums}</span>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <c:if test="${orderLists.isappraises==1}"><%--已评价--%>
                                                                <td>收货人：${username}</td>
                                                                <td>
                                                                    <i class="layui-icon layui-icon-rmb">${orderGoodsList.goodsprice}</i>
                                                                </td>
                                                                <td>
                                                                    <a href="${path}/goods/findGood?goodsId=${orderGoodsList.goodsid}&?pageCode=1">
                                                                        <button class="layui-btn">再次购买</button>
                                                                    </a>
                                                                </td>
                                                            </c:if>
                                                        </c:forEach>
                                                        <c:if test="${orderLists.isappraises==0}"><%--待评价--%>
                                                            <td>收货人：${username}</td>
                                                            <td>
                                                                <i class="layui-icon layui-icon-rmb">${allmoney}</i>
                                                            </td>
                                                            <td>
                                                                <a href="${path}/order/evaluateGoods?ordersId=${orderLists.orderid}">
                                                                    <button class="layui-btn">评价晒单</button>
                                                                </a>
                                                            </td>
                                                        </c:if>
                                                        </tr>
                                                    </c:if>
                                                </c:if>
                                            </c:forEach>
                                            </tr>
                                        </table>
                                    </div>
                                </c:if>
                            </div>
                        </div>
                        <div class="layui-tab-item">
                            <div class="booklist-detail">
                                <br>
                                <c:if test="${orders.size()==0}">
                                    <div class="listdetail">当前没有交易订单</div>
                                </c:if>
                                <c:if test="${orders.size()>0}">
                                    <div class="listdetail">
                                        <table class="layui-table">
                                            <c:forEach items="${orders}" var="orderLists">
                                                <c:if test="${orderLists.orderstatus==2}"><%--已取消--%>
                                                    <c:if test="${orderLists.isappraises==1}">
                                                        <colgroup>
                                                            <col width="50%">
                                                            <col width="15%">
                                                            <col width="15%">
                                                            <col width="20%">
                                                        </colgroup>
                                                        <tr>
                                                            <td colspan="4">
                                                        <span class="timetoken">
                                                            <fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss"
                                                                            value="${orderLists.creattime}"/>
                                                        </span>
                                                                <span class="bookid"><a
                                                                        href="${path}/order/showOrderInfo?orderid=${orderLists.orderid}">订单号: ${orderLists.orderno}</a></span>
                                                                <c:if test="${orderLists.orderstatus==2}">
                                                                    <%--申请售后接口--%>
                                                                    <span class="bookid"><a href="#">申请售后</a></span>
                                                                </c:if>
                                                            </td>
                                                        </tr>
                                                        <%--<c:set var="allmoney" value="0"/>--%>
                                                        <c:forEach items="${orderLists.orderGoodsList}"
                                                                   var="orderGoodsList">
                                                            <c:set var="username" value="${orderGoodsList.username}"/>
                                                            <%--<c:set var="allmoney"--%>
                                                            <%--value="${allmoney + orderGoodsList.goodsnums * orderGoodsList.goodsprice }"/>--%>
                                                            <tr>
                                                                <td>
                                                                    <div class="layui-row">
                                                                        <div class="layui-col-md2 small-pic">
                                                                                <%--#商品详情连接--%>
                                                                            <a href="${path}/goods/findGood?goodsId=${orderGoodsList.goodsid}&?pageCode=1">
                                                                                <img
                                                                                        src="${path}/img/goodsAttr/${orderGoodsList.goodsimage}"></a>
                                                                        </div>
                                                                        <div class="layui-col-md7 good-des">
															<span class="description">
                                                                <%--#商品详情连接--%>
															<a href="${path}/goods/findGood?goodsId=${orderGoodsList.goodsid}&?pageCode=1">
                                                                ${orderGoodsList.goodsname},${orderGoodsList.goodsversion},${orderGoodsList.goodscolor},${orderGoodsList.goodstotaldesc}
                                                            </a>
																</span>
                                                                        </div>
                                                                        <div class="layui-col-md2 good-num">
                                                                            <span>x${orderGoodsList.goodsnums}</span>
                                                                        </div>
                                                                    </div>
                                                                </td>
                                                                <td>收货人：${username}</td>
                                                                <td>
                                                                    <i class="layui-icon layui-icon-rmb">${orderGoodsList.goodsprice}</i>
                                                                </td>
                                                                <td>
                                                                    <a href="${path}/goods/findGood?goodsId=${orderGoodsList.goodsid}&?pageCode=1">
                                                                        <button class="layui-btn">再次购买</button>
                                                                    </a></td>
                                                            </tr>
                                                        </c:forEach>
                                                    </c:if>
                                                </c:if>
                                            </c:forEach>
                                            </tr>
                                        </table>
                                    </div>
                                </c:if>
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
<!--尾部-->
<%@ include file="/WEB-INF/inc/footer.jsp" %>
<script type="text/javascript" src="${path}/layui/layui.js"></script>
<script type="text/javascript" src="${path}/js/global.js"></script>
<script type="text/javascript" src="${path}/js/headframe.js"></script>
<script type="text/javascript" src="${path}/js/index.js"></script>
<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
<%--首页必要js--%>
<script type="text/javascript" src="${path}/js/index.js"></script>
</body>
</html>