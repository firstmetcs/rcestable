<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/inc/taglibs.jsp" %>
<%--我的订单--%>
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

    <script language="JavaScript">
        //付款计时器
        function x1() {
            <c:if test="${orders.size()>0}">
            <c:forEach items="${orders}" var="orderLists" varStatus="status">
            <c:if test="${orderLists.orderstatus==0}">
            // var endtime = new Date("2018/7/5 17:30:00");//结束时间
            var endtime = new Date("${orderLists.creattime}");
            endtime.setMinutes(endtime.getMinutes() + 30);
            var nowtime = new Date();//当前时间
            var lefttime = parseInt((endtime.getTime() - nowtime.getTime()) / 1000); // 剩余时间
            if (lefttime >= 0) {
                var d = parseInt(lefttime / 3600 / 24);   // 剩余天数
                var h = parseInt((lefttime / 3600) % 24); // 剩余小时数
                var m = parseInt((lefttime / 60) % 60); // 剩余分钟数
                var s = parseInt(lefttime % 60);    // 剩余秒数
                document.getElementById("caltime${orderLists.orderid}").innerText = h + "小时" + m + "分" + s + "秒后自动取消购买";
                --lefttime;
            }
            if (lefttime <= 0) {
                clearInterval(ch${orderLists.orderid});
            }
            </c:if>
            </c:forEach>
            </c:if>
        }

        //自动收获计时器
        function x2() {
            <c:if test="${orders.size()>0}">
            <c:forEach items="${orders}" var="orderLists" varStatus="status">
            <c:if test="${orderLists.orderstatus==1}">
            // var endtime = new Date("2018/7/5 17:30:00");//结束时间
            var endtime = new Date("${orderLists.creattime}");
            endtime.setDate(endtime.getDate() + 7);
            var nowtime = new Date();//当前时间
            var lefttime = parseInt((endtime.getTime() - nowtime.getTime()) / 1000); // 剩余时间
            if (lefttime >= 0) {
                var d = parseInt(lefttime / 3600 / 24);   // 剩余天数
                var h = parseInt((lefttime / 3600) % 24); // 剩余小时数
                var m = parseInt((lefttime / 60) % 60); // 剩余分钟数
                var s = parseInt(lefttime % 60);    // 剩余秒数
                document.getElementById("cnftime${orderLists.orderid}").innerText = d + "天" + h + "小时" + m + "分" + s + "秒后自动收货";
                --lefttime;
            }
            if (lefttime <= 0) {
                clearInterval(sh${orderLists.orderid});
            }
            </c:if>
            </c:forEach>
            </c:if>
        }

        // 取消订单计时器
        <c:if test="${orders.size()>0}">
        <c:forEach items="${orders}" var="orderLists" varStatus="status">
        <c:if test="${orderLists.orderstatus==0}">
        var ch${orderLists.orderid} = setInterval("x1()", 1000); // 每秒钟执行一次
        </c:if>
        </c:forEach>
        </c:if>
        // 自动收货计时器
        <c:if test="${orders.size()>0}">
        <c:forEach items="${orders}" var="orderLists" varStatus="status">
        <c:if test="${orderLists.orderstatus==1}">
        var sh${orderLists.orderid} = setInterval("x2()", 1000); // 每秒钟执行一次
        </c:if>
        </c:forEach>
        </c:if>
    </script>
</head>
<%--onload="x1();x2()"--%>
<body onload="x1();x2()">
<!--头部导航-->
<%@ include file="/WEB-INF/inc/top.jsp" %>

<div class="self-center">
    <div class="layui-main">
        <br>
        <span class="layui-breadcrumb breadcrumb" lay-separator=">">
				<a href="">首页</a>
				<a><cite>交易订单</cite></a>
			</span>
        <div class="layui-row">
            <br>
            <div class="layui-col-md2 content">
                <div class="left-nav">
                    <ul>
                        <h3>订单中心</h3>
                        <li><a href="${path}/order/OrList?userid=${orders.get(0).orderGoodsList.get(0).userid}"
                               style="color: #008b8b">我的订单</a></li>
                        <li><a href="${path}/order/showEvaluate?userid=${orders.get(0).orderGoodsList.get(0).userid}">评价晒单</a>
                        </li>
                        <li><a href="${path}/order/showInsurance?userid=${orders.get(0).orderGoodsList.get(0).userid}">意外保</a></li>
                    </ul>
                    <ul>
                        <h3>个人中心</h3>
                        <li><a href="${path}/user/index?userid=${orders.get(0).orderGoodsList.get(0).userid}">我的个人中心</a>
                        </li>
                        <li><a href="message.html">消息通知</a></li>
                        <li><a href="coupon.html">优惠券</a></li>
                    </ul>
                    <ul>
                        <h3>售后服务</h3>
                        <li><a href="">服务记录</a></li>
                        <li><a href="">申请服务</a></li>
                    </ul>
                </div>
            </div>
            <div class="layui-col-md9 content" style="margin-left: 60px;">
                <h1>我的订单</h1><span>&nbsp;<a href=""> 请进防钓鱼连接或诈骗电话，了解更多></a></span>
                <br>
                <br>

                <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
                    <ul class="layui-tab-title">
                        <li class="layui-this">全部有效订单</li>
                        <li>待支付</li>
                        <%--状态码：0--%>
                        <li>待收货</li>
                        <%--状态码：1--%>
                        <li>已完成</li>
                        <%--状态码：2--%>
                        <li>已取消</li>
                        <%--状态码：3--%>
                    </ul>
                    <div class="layui-tab-content">
                        <div class="layui-tab-item layui-show">
                            <div class="booklist-detail">
                                <br>
                                <c:if test="${orders.size()==0}">
                                    <div class="listdetail">当前没有交易订单</div>
                                </c:if>
                                <c:if test="${orders.size()>0}">
                                    <div class="listdetail">
                                        <table class="layui-table">
                                            <c:forEach items="${orders}" var="orderLists" varStatus="status">
                                                <c:set var="cyclesIndex" value="${status.index}"/>
                                                <colgroup>
                                                    <col width="50%">
                                                    <col width="15%">
                                                    <col width="15%">
                                                    <col width="20%">
                                                </colgroup>
                                                <tr>
                                                    <td colspan="4">
                                                        <div class="layui-row">
                                                            <div class="layui-col-md3">
                                                            <span class="timetoken">
                                                                <%--订单创建时间--%>
                                                                <fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss"
                                                                                value="${orderLists.creattime}"/>
                                                            </span>
                                                            </div>
                                                            <div class="layui-col-md5">
                                                            <span class="bookid">
                                                        <a href="${path}/order/showOrderInfo?orderid=${orderLists.orderid}">订单号: ${orderLists.orderno}</a>
                                                        </span>
                                                            </div>
                                                            <div class="layui-col-md2">
                                                                &nbsp;
                                                                <c:if test="${orderLists.orderstatus==2}">
                                                                    <span class="bookid"><a href="">申请售后</a></span>
                                                                </c:if>
                                                            </div>
                                                            <div class="layui-col-md2">
                                                                    <%--根据订单状态过滤显示--%>
                                                                <c:if test="${orderLists.orderstatus==0}">
                                                                    <span class="bookid">待支付</span>
                                                                </c:if>
                                                                <c:if test="${orderLists.orderstatus==1}">
                                                                    <span class="bookid">待收货</span>
                                                                </c:if>
                                                                <c:if test="${orderLists.orderstatus==2}">
                                                                    <span class="bookid">已完成</span>
                                                                </c:if>
                                                                <c:if test="${orderLists.orderstatus==3}">
                                                                    <span class="bookid">已取消</span>
                                                                </c:if>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <c:set var="allmoney" value="0"/>
                                                <c:forEach items="${orderLists.orderGoodsList}" var="orderGoodsList">
                                                    <c:set var="username" value="${orderGoodsList.username}"/>
                                                    <c:set var="allmoney"
                                                           value="${allmoney + orderGoodsList.goodsnums * orderGoodsList.goodsprice }"/>
                                                    <tr>
                                                    <td>
                                                        <div class="layui-row">
                                                            <div class="layui-col-md2 small-pic">
                                                                    <%--#商品详情连接--%>
                                                                <a href="${path}/goodsevaluate/showEvaluateList?goodsid=${orderGoodsList.goodsid}&?pageCode=1">
                                                                    <img
                                                                            src="${path}/img/goodsAttr/${orderGoodsList.goodsimage}"></a>
                                                            </div>
                                                            <div class="layui-col-md7 good-des">
															<span class="description">
															<a href="${path}/goodsevaluate/showEvaluateList?goodsid=${orderGoodsList.goodsid}&?pageCode=1">
                                                                ${orderGoodsList.goodsname},${orderGoodsList.goodsversion},${orderGoodsList.goodscolor},${orderGoodsList.goodstotaldesc}
                                                            </a></span>
                                                            </div>
                                                            <div class="layui-col-md2 good-num">
                                                                <span>x${orderGoodsList.goodsnums}</span>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <c:if test="${orderLists.orderstatus==2}">
                                                        <c:if test="${orderLists.isappraises==1}">
                                                            <td>收货人：${username}</td>
                                                            <td>
                                                                <i class="layui-icon layui-icon-rmb">${orderGoodsList.goodsprice}</i>
                                                            </td>
                                                            <%--<td><a href="/order/evaluateGoods?ordersId=${orderGoodsList.orderid}">--%>
                                                            <td>
                                                                <a href="${path}/goodsevaluate/showEvaluateList?goodsid=${orderGoodsList.goodsid}&?pageCode=1">
                                                                    <button class="layui-btn">再次购买</button>
                                                                </a>
                                                            </td>
                                                        </c:if>
                                                    </c:if>
                                                    <c:if test="${orderLists.orderstatus==3}">
                                                        <td>收货人：${username}</td>
                                                        <td>
                                                            <i class="layui-icon layui-icon-rmb">${orderGoodsList.goodsprice}</i>
                                                        </td>
                                                        <%--<td><a href="/order/evaluateGoods?ordersId=${orderGoodsList.orderid}">--%>
                                                        <td>
                                                            <a href="${path}/goodsevaluate/showEvaluateList?goodsid=${orderGoodsList.goodsid}&?pageCode=1">
                                                                <button class="layui-btn">再次购买</button>
                                                            </a>
                                                        </td>
                                                    </c:if>
                                                </c:forEach>
                                                <c:if test="${orderLists.orderstatus==0}">
                                                    <td>收货人：${username}</td>
                                                    <td>
                                                        <i class="layui-icon layui-icon-rmb">${allmoney}</i>
                                                    </td>
                                                    <%--<div class="site-demo-button" id="layerDemo" style="margin-bottom: 0;">--%>
                                                    <%--<button data-method="confirmTrans" class="layui-btn">取消</button>--%>
                                                    <%--</div>--%>

                                                    <td>
                                                        <div>
                                                            <span id="caltime${orderLists.orderid}"
                                                                  style="color:red"></span>
                                                        </div>
                                                        <div id="but${orderLists.orderid}">
                                                            <a href="">
                                                                <button id="pay${orderLists.orderid}" class="layui-btn">
                                                                    付款
                                                                </button>
                                                            </a>
                                                            <div class="layui-demo site-demo-button"
                                                                 style="margin-bottom: 0; display: inline">
                                                                <button name="${orderLists.orderid}"
                                                                        data-method="calconfirmTrans" class="layui-btn">
                                                                    取消
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </td>

                                                </c:if>
                                                <c:if test="${orderLists.orderstatus==1}">
                                                    <td>收货人：${username}</td>
                                                    <td>
                                                        <i class="layui-icon layui-icon-rmb">${allmoney}</i>
                                                    </td>
                                                    <%--<td><a href="/order/evaluateGoods?ordersId=${orderGoodsList.orderid}">--%>
                                                    <td>
                                                        <div id="cnftime${orderLists.orderid}" style="color:red"></div>
                                                        <div class="layui-demo site-demo-button"
                                                             style="margin-bottom: 0; display: inline">
                                                            <button name="${orderLists.orderid}"
                                                                    data-method="conconfirmTrans" class="layui-btn">确认收货
                                                            </button>
                                                        </div>
                                                    </td>
                                                </c:if>
                                                <c:if test="${orderLists.orderstatus==2}">
                                                    <c:if test="${orderLists.isappraises==0}">
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
                                                </c:if>
                                                </tr>
                                            </c:forEach>
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
                                                <c:if test="${orderLists.orderstatus==0}"><%--待支付--%>
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
                                                            <span class="bookid">订单号: ${orderLists.orderno}</span>
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
                                                                    <a href="${path}/goodsevaluate/showEvaluateList?goodsid=${orderGoodsList.goodsid}&?pageCode=1">
                                                                        <img
                                                                                src="${path}/img/goodsAttr/${orderGoodsList.goodsimage}"></a>
                                                                </div>
                                                                <div class="layui-col-md7 good-des">
															<span class="description">
															<a href="${path}/goodsevaluate/showEvaluateList?goodsid=${orderGoodsList.goodsid}&?pageCode=1">
                                                                ${orderGoodsList.goodsname},${orderGoodsList.goodsversion},${orderGoodsList.goodscolor},${orderGoodsList.goodstotaldesc}
                                                            </a></span>
                                                                </div>
                                                                <div class="layui-col-md2 good-num">
                                                                    <span>x${orderGoodsList.goodsnums}</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </c:forEach>
                                                    <td>收货人：${username}</td>
                                                    <td>
                                                        <i class="layui-icon layui-icon-rmb">${allmoney}</i>
                                                    </td>
                                                    <td>

                                                        <div>
                                                            <a href="#">
                                                                <button class="layui-btn">付款</button>
                                                            </a>
                                                            <div class="layui-demo site-demo-button"
                                                                 style="margin-bottom: 0; display: inline">
                                                                <button name="${orderLists.orderid}"
                                                                        data-method="calconfirmTrans" class="layui-btn">
                                                                    取消
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    </tr>
                                                </c:if>
                                            </c:forEach>
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
                                                <c:if test="${orderLists.orderstatus==1}"><%--待收货--%>
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
                                                                    href="">订单号: ${orderLists.orderno}</a></span>
                                                            <c:if test="${orderLists.orderstatus==2}">
                                                                <%--申请售后的接口--%>
                                                                <span class="bookid"><a href="#">申请售后</a></span>
                                                            </c:if>
                                                        </td>
                                                    </tr>
                                                    <c:set var="allmoney" value="0"/>
                                                    <c:forEach items="${orderLists.orderGoodsList}"
                                                               var="orderGoodsList">
                                                        <c:set var="username" value="${orderGoodsList.username}"/>
                                                        <c:set var="allmoney"
                                                               value="${allmoney + orderGoodsList.goodsnums * orderGoodsList.goodsprice }"/>
                                                        <tr><td>
                                                        <div class="layui-row">
                                                            <div class="layui-col-md2 small-pic">
                                                                    <%--#商品详情连接--%>
                                                                <a href="${path}/goodsevaluate/showEvaluateList?goodsid=${orderGoodsList.goodsid}&?pageCode=1">
                                                                    <img
                                                                            src="${path}/img/goodsAttr/${orderGoodsList.goodsimage}"></a>
                                                            </div>
                                                            <div class="layui-col-md7 good-des">
															<span class="description">
															<a href="${path}/goodsevaluate/showEvaluateList?goodsid=${orderGoodsList.goodsid}&?pageCode=1">
                                                                ${orderGoodsList.goodsname},${orderGoodsList.goodsversion},${orderGoodsList.goodscolor},${orderGoodsList.goodstotaldesc}
                                                            </a></span>
                                                            </div>
                                                            <div class="layui-col-md2 good-num">
                                                                <span>x${orderGoodsList.goodsnums}</span>
                                                            </div>
                                                        </div>
                                                        </td>
                                                    </c:forEach>
                                                    <td>收货人：${username}</td>
                                                    <td>
                                                        <i class="layui-icon layui-icon-rmb">${allmoney}</i>
                                                    </td>
                                                    <td>
                                                        <div class="layui-demo site-demo-button"
                                                             style="margin-bottom: 0; display: inline">
                                                            <button name="${orderLists.orderid}"
                                                                    data-method="conconfirmTrans" class="layui-btn">确认收货
                                                            </button>
                                                        </div>
                                                    </td>
                                                    </tr>
                                                </c:if>
                                            </c:forEach>
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
                                                <c:if test="${orderLists.orderstatus==2}"><%--已完成--%>
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
                                                                    href="#">订单号: ${orderLists.orderno}</a></span>
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
                                                                    <a href="${path}/goodsevaluate/showEvaluateList?goodsid=${orderGoodsList.goodsid}&?pageCode=1">
                                                                        <img
                                                                                src="${path}/img/goodsAttr/${orderGoodsList.goodsimage}"></a>
                                                                </div>
                                                                <div class="layui-col-md7 good-des">
															<span class="description">
															<a href="${path}/goodsevaluate/showEvaluateList?goodsid=${orderGoodsList.goodsid}&?pageCode=1">
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
                                                                <a href="${path}/goodsevaluate/showEvaluateList?goodsid=${orderGoodsList.goodsid}&?pageCode=1">
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
                                                <c:if test="${orderLists.orderstatus==3}"><%--已取消--%>
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
                                                                    href="">订单号: ${orderLists.orderno}</a></span>
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
                                                                        <a href="${path}/goodsevaluate/showEvaluateList?goodsid=${orderGoodsList.goodsid}&?pageCode=1">
                                                                            <img
                                                                                    src="${path}/img/goodsAttr/${orderGoodsList.goodsimage}"></a>
                                                                    </div>
                                                                    <div class="layui-col-md7 good-des">
															<span class="description">
                                                                <%--#商品详情连接--%>
															<a href="${path}/goodsevaluate/showEvaluateList?goodsid=${orderGoodsList.goodsid}&?pageCode=1">
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
                                                                <a href="${path}/goodsevaluate/showEvaluateList?goodsid=${orderGoodsList.goodsid}&?pageCode=1">
                                                                    <button class="layui-btn">再次购买</button>
                                                                </a></td>
                                                        </tr>
                                                    </c:forEach>
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
<div class="layui-main">
    <div class="layui-row foot">
        <div class="layui-col-md3 foot">
            <i class="layui-icon layui-icon-util foot-icon"></i>
            <a href="">预约维修服务</a>
            <span class="layui-seperator">|</span>
        </div>

        <div class="layui-col-md3 foot">
            <i class="layui-icon layui-icon-rmb foot-icon"></i>
            <a href="">7天无理由退货</a>
            <span class="layui-seperator">|</span>
        </div>
        <div class="layui-col-md3 foot">
            <i class="layui-icon layui-icon-tips foot-icon"></i>
            <a href="">15天免费换货</a>
            <span class="layui-seperator">|</span>
        </div>
        <div class="layui-col-md3 foot">
            <i class="layui-icon layui-icon-diamond foot-icon"></i>
            <a href="">满200元包邮</a>
        </div>
    </div>
    <div class="foot-hr">
        <hr class="foot-hr">
    </div>
    <div class="foot-link">
        <div class="layui-row">
            <div class="layui-col-md9">
                <div class="layui-row">
                    <div class="layui-col-md2">
                        <h2>帮助中心</h2>
                        <li>账户管理</li>
                        <li>购物指南</li>
                    </div>
                    <div class="layui-col-md2">
                        <h2>服务支持</h2>
                        <li>售后政策</li>
                        <li>自助服务</li>
                    </div>
                    <div class="layui-col-md2">
                        <h2>线下门店</h2>
                        <li>服务网点</li>
                        <li>授权体验店</li>
                    </div>
                    <div class="layui-col-md2">
                        <h2>关于RCE</h2>
                        <li>了解RCE</li>
                        <li>加入RCE</li>
                    </div>
                    <div class="layui-col-md2">
                        <h2>关注我们</h2>
                        <li>新浪微博</li>
                        <li>联系我们</li>
                    </div>
                    <div class="layui-col-md2">
                        <h2>特色服务</h2>
                        <li>优惠券</li>
                        <li>防伪查询</li>
                    </div>
                </div>
            </div>
            <div class="layui-col-md3">
                <div class="foot-contact">
                    <h2 class="foot-tel">400-100-8754</h2>
                    <p>周一至周日8:00-18:00</p>
                    <button class="layui-btn layui-btn-primary">
                        <i class="layui-icon layui-icon-dialogue"></i>
                        <span>联系客服</span>
                    </button>
                </div>
            </div>
        </div>
    </div>
    <div class="copyright">
        <p>RCE版权所有-京ICP备10046444-京公网安备11010802020134号-京ICP证110507号</p>
    </div>
    <br>
    <br>
    <br>
</div>

<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="${path}/layui/layui.js"></script>
<script type="text/javascript" src="${path}/js/global.js"></script>
<script type="text/javascript" src="${path}/js/headframe.js"></script>
<script type="text/javascript" src="${path}/js/index.js"></script>
<script>
    layui.use('layer', function () { //独立版的layer无需执行这一句
        var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句
        //触发事件
        var active = {
            calconfirmTrans: function (othis) {
                //配置一个透明的询问框
                var orderid = othis.attr("name");
                console.log(orderid);
                layer.msg('确定要取消订单吗？', {
                    time: 20000, //20s后自动关闭
                    btn: ['确认', '取消']
                    , yes: function () {
                        //按钮【按钮一】的回调
                        $.ajax({
                            type: "POST",
                            dataType: "JSON",
                            url: "${path}/order/cancelOrder",
                            data: {"orderid": orderid},
                            <%--data: {"orderid": ${orderLists.orderid}},--%>
                            traditional: true,
                            async: false,   //注意：此处是同步，不是异步
                            success: function () {
                                alert("取消成功！");
                                window.location.reload();
                            },
                            error: function () {
                                // alert("失败");
                            }
                        });
                        layer.closeAll();
                    }
                    , btn2: function () {
                        //按钮【按钮二】的回调
                        //return false 开启该代码可禁止点击该按钮关闭
                    }
                });
            }
            , conconfirmTrans: function (othis) {
                //配置一个透明的询问框
                var orderid = othis.attr("name");
                console.log(orderid);
                layer.msg('确定要收货吗？', {
                    time: 20000, //20s后自动关闭
                    btn: ['确认', '取消']
                    , yes: function () {
                        //按钮【按钮一】的回调
                        $.ajax({
                            type: "POST",
                            dataType: "JSON",
                            url: "${path}/order/confirmReceipt",
                            data: {"orderid": orderid},
                            <%--data: {"orderid": ${orderLists.orderid}},--%>
                            traditional: true,
                            async: false,   //注意：此处是同步，不是异步
                            success: function () {
                                alert("成功收货！");
                                window.location.reload();
                            },
                            error: function () {
                                // alert("失败");
                            }
                        });
                        layer.closeAll();
                    }
                    , btn2: function () {
                        //按钮【按钮二】的回调
                        //return false 开启该代码可禁止点击该按钮关闭
                    }
                });
            }
        };

        $('.layui-demo .layui-btn').on('click', function () {
            var othis = $(this), method = othis.data('method');
            active[method] ? active[method].call(this, othis) : '';
        });
    });
</script>
</body>
</html>