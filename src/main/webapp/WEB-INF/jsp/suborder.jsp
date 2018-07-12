<%@ include file="/WEB-INF/inc/taglibs.jsp" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/6/28
  Time: 18:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>提交订单</title>

    <link rel="stylesheet" type="text/css" href="${path}/css/order.css">
    <link rel="stylesheet" type="text/css" href="${path}/css/component.css">
    <link rel="stylesheet" type="text/css" href="${path}/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${path}/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="${path}/css/global.css">
    <link rel="stylesheet" type="text/css" href="${path}/css/headframe.css">
    <link rel="stylesheet" type="text/css" href="${path}/css/footframe.css">
    <style type="text/css" media="screen">
        .checkbox + .checkbox, .radio + .radio {
            margin-top: 10px;
        }
    </style>
</head>
<body>
<%@ include file="/WEB-INF/inc/top.jsp"%>

<div class="order-wrap">
    <!-- 收货信息 -->
    <h3>请确认订单信息</h3>
    <div class="receive-info">
        <div>
            <!-- 收货地址 -->
            <div>
                <h2 class="receive-title">收货地址</h2>
                <hr>
            </div>
            <div id="receive-addr">
                <!-- 收货地址 -->
                <c:if test="${!empty addressList}">
                    <c:forEach var="address" items="${addressList}">


                        <div class="radio receive-address" name="addr" id="${address.addressid}"
                             onclick="defaultAddr(this)">
                            <input type="radio" name="optionsRadios" id="optionsRadios${address.addressid}"
                                   class="display-none" value="${address.addressid}">
                            <div>
                                <dl>
                                    <dt>
                                            ${address.username}
                                        <!-- <hr> -->
                                    </dt>
                                    <dd>
                                        <p class="tel marginTop10px marginLeft">${address.userphone}</p>
                                        <p class="marginTop10px marginLeft">${address.province}${address.city}${address.area}</p>
                                        <p class="marginTop10px marginLeft">${address.address}</p>
                                    </dd>
                                </dl>
                            </div>
                        </div>
                        <div class="new-address">
                            &nbsp;
                        </div>
                    </c:forEach>
                </c:if>
                <div class="radio receive-address" id="use-new-address">
                    <input type="radio" name="optionsRadiosx" id="optionsRadiosx" class="display-none" value="6">
                    <div>
                        <dl class="new-addr">
                                    <span class="icon-add">
                                <!-- <a href="javascript:;" title="" class="md-trigger btn btn-lg" data-modal="modal-1">
                                    <img src="img/add_cart.png" alt="" >
                                </a> -->
                                <a href="javascript:;" title="" class="md-trigger btn btn-lg">
                                    <img src="${path}/img/add_cart.png" alt="">
                                </a>
                            </span> 管理收获地址
                        </dl>
                    </div>
                </div>
            </div>
        </div>
        <div style="clear: both;">
        </div>
        <!-- 支付方式 -->
        <div>
            <div>
                <h2 class="receive-title">支付方式</h2>
                <hr>
            </div>
            <div class="online-pay">
                <button type="" class="iniStyle" id="online-pay">
                    在线支付
                </button>
            </div>
        </div>
        <!-- 配送方式 -->
        <div>
            <div>
                <h2 class="receive-title">配送方式</h2>
                <hr>
            </div>
            <div class="online-pay">
                <button type="" class="iniStyle" id="express-free">
                    快递配送（免运费）
                </button>
            </div>
        </div>
        <!-- 送货时间 -->
        <div>
            <div>
                <h2 class="receive-title">送货时间</h2>
                <hr>
            </div>
            <div class="online-pay" id="sendtime">
                <button type="" class="iniStyle" onclick="changeStyle()" id="send-time1">不限送货时间</button>
                <button type="" class="clearBtnStyle" onclick="changeStyle()" id="send-time2">工作日送货</button>
                <button type="" class="clearBtnStyle" onclick="changeStyle()" id="send-time3">双休日、假日送货</button>
            </div>
        </div>
        <!-- 发票信息 -->
        <div>
            <div>
                <h2 class="receive-title">发票信息</h2>
                <hr>
            </div>
            <div class="online-pay" id="invoiceInfo">
                <!-- <input type="radio" class="iniStyle" name="btn" onclick="changeStyle()" id="electric-invoice"> -->
                <button type="" class="iniStyle" name="btn" onclick="changeStyle()" id="electric-invoice">电子发票</button>
                <button type="" class="clearBtnStyle" name="btn" onclick="changeStyle()" id="paper-invoice">纸质发票
                </button>
                <p class="invoice-info marginTop10px marginLeft">
                    电子发票是税务局认可的有效凭证，可作为售后维权凭据，不随商品寄送。开票后不可更换纸质发票，如需报销请选择普通发票。<a href="electricInvoice.html">什么是电子发票？</a>
                </p>
            </div>
        </div>
    </div>
    <!-- 确认订单信息 -->
    <div>
        <!-- 确认订单 -->
        <div>
            <div>
                <h2 class="receive-title">确认订单信息</h2>
            </div>
            <div class="order-info">
                <table>
                    <thead>
                    <tr>
                        <th width="800px">商品名称</th>
                        <th width="100px" class="content-centered">购买价格</th>
                        <th width="100px" class="content-centered">购买数量</th>
                        <th width="100px" class="content-centered">小计（元）</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:if test="${!empty sessionScope.shoppingCarts}">
                        <c:forEach var="shoppingcart" items="${sessionScope.shoppingCarts}">
                            <c:if test="${shoppingcart.ischeck==1}">
                                <tr>
                                    <td>
                                        <img src="img/phone/huaweiP20.png"
                                             alt=""> ${shoppingcart.goodsname}&nbsp;&nbsp;${shoppingcart.goodsversion}&nbsp;&nbsp;
                                    </td>
                                    <td class="content-centered">￥${shoppingcart.goodsprice}</td>
                                    <td class="content-centered">x${shoppingcart.goodscount}</td>
                                    <td class="content-centered">￥${shoppingcart.termprice}</td>
                                </tr>
                            </c:if>
                        </c:forEach>
                    </c:if>

                    </tbody>
                </table>
            </div>
        </div>
        <!-- 会员留言 -->
        <div>
            <div class="leave-message">
                <h2 class="receive-title">会员留言</h2>
                <textarea name="" id="orderremarks"></textarea>
            </div>
            <div class="cal-price">
                <table cellpadding="7px">
                    <thead>
                    <tr>
                        <th width="100px"></th>
                        <th width="100px"></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>订单总额</td>
                        <td>&nbsp;￥${sessionScope.total}</td>
                    </tr>
                    <tr>
                        <td>活动优惠</td>
                        <td>-￥0</td>
                    </tr>
                    <tr>
                        <td>优惠券抵扣</td>
                        <td>-￥0</td>
                    </tr>
                    <tr>
                        <td>运费</td>
                        <td>&nbsp;￥10</td>
                    </tr>
                    <tr>
                        <td>应付总额</td>
                        <td class="order-total-price">
                            <b>￥${sessionScope.total+10}</b></td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="clear-float">
            </div>
        </div>
        <!-- 下单 -->
        <div>
            <div class="online-pay buy-immediately">
                <a href="" title="">
                    <button type="" onmouseover="this.style.backgroundColor='#E0E0E0';"
                            onmouseout="this.style.backgroundColor='white';">返回购物车
                    </button>
                </a>
                <a href="javascript:;" onclick="getInfo()">
                    <button type="" class="buy" onmouseover="this.style.backgroundColor='red';"
                            onmouseout="this.style.backgroundColor='#FC6A6A';">立即下单
                    </button>
                </a>
            </div>
            <div class="clear-float"></div>
        </div>
    </div>
</div>

<%@ include file="/WEB-INF/inc/footer.jsp"%>

<script src="${path}/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="${path}/js/classie.js"></script>
<script type="text/javascript" src="${path}/js/modalEffects.js"></script>
<script type="text/javascript" src="${path}/layui/layui.js"></script>
<script type="text/javascript" src="${path}/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${path}/js/global.js"></script>
<script type="text/javascript" src="${path}/js/headframe.js"></script>
<script type="text/javascript" src="${path}/js/MyOrder.js"></script>
</body>
</html>
