<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/inc/taglibs.jsp" %>
<%--订单详情--%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>交易详情</title>
    <link rel="stylesheet" href="${path}/css/orderInfo.css">
    <link rel="stylesheet" type="text/css" href="${path}/layui/css/layui.css">
    <script type="text/javascript" src="${path}/js/orderInfo.js"></script>
</head>

<body>
<div class="order-wrapper">
    <br>
    <br>
    <div class="order-nav">
        <a>您的位置：</a>
        <a href="${path}/user/index?userid=${orderGoods.get(0).orderGoodsList.get(0).userid}">首页 </a><span>></span>
        <a href="${path}/order/OrList?userid=${orderGoods.get(0).orderGoodsList.get(0).userid}">我的订单 </a><span>></span>
        <a href=""><span>已买到的宝贝</span></a>
    </div>
    <div class="order-progressbar">
        <ol>
            <li class="order-div">
                <div class="order-font-schedule-status"><span>拍下商品</span></div>
                <div>
                    <div class="order-box-completed"><span>√</span></div>
                    <div class="order-schedule-in-completed"></div>
                </div>
            </li>
            <li class="order-div">
                <div class="order-font-schedule-status"><span>付款</span></div>
                <c:if test="${orderGoods.get(0).orderstatus!=0}">
                    <c:if test="${orderGoods.get(0).orderstatus!=3}">
                        <div>
                            <div class="order-box-completed"><span>√</span></div>
                            <div class="order-schedule-in-completed"></div>
                        </div>
                    </c:if>
                </c:if>
                <c:if test="${orderGoods.get(0).orderstatus==0}">
                    <div>
                        <div class="order-box-uncompleted"><span>√</span></div>
                        <div class="order-schedule-in-uncompleted"></div>
                    </div>
                </c:if>
                <c:if test="${orderGoods.get(0).orderstatus==3}">
                    <div>
                        <div class="order-box-uncompleted"><span>√</span></div>
                        <div class="order-schedule-in-uncompleted"></div>
                    </div>
                </c:if>
            </li>
            <li class="order-div">
                <div class="order-font-schedule-status"><span>卖家发货</span></div>
                <c:if test="${expressStatus==1}">
                    <div>
                        <div class="order-box-completed"><span>√</span></div>
                        <div class="order-schedule-in-completed"></div>
                    </div>
                </c:if>
                <c:if test="${expressStatus==0}">
                    <div>
                        <div class="order-box-uncompleted"><span>√</span></div>
                        <div class="order-schedule-in-uncompleted"></div>
                    </div>
                </c:if>
            </li>
            <li class="order-div">
                <div class="order-font-schedule-status"><span>确认收货</span></div>
                <c:if test="${orderGoods.get(0).orderstatus==2}">
                    <div>
                        <div class="order-box-completed"><span>√</span></div>
                        <div class="order-schedule-in-completed"></div>
                    </div>
                </c:if>
                <c:if test="${orderGoods.get(0).orderstatus!=2}">
                    <div>
                        <div class="order-box-uncompleted"><span>√</span></div>
                        <div class="order-schedule-in-uncompleted"></div>
                    </div>
                </c:if>

            </li>
            <li class="order-div">
                <div class="order-font-schedule-status"><span>评价</span></div>
                <c:if test="${orderGoods.get(0).orderstatus==2}">
                    <c:if test="${orderGoods.get(0).isappraises==1}">
                        <div>
                            <div class="order-box-completed"><span>√</span></div>
                        </div>
                    </c:if>
                </c:if>
            </li>
        </ol>
    </div>
    <div class="order-firstmain">
        <table>
            <tbody>
            <tr>
                <td class="order-firstmain-left">
                    <div class="order-firstmain-left-top">
                        <ul>
                            <li>订单信息</li>
                        </ul>
                    </div>
                    <div class="order-firstmain-left-bottom">
                        <ul>
                            <li>
                                <span>收货地址：</span>
                                <div class="order-firstmain-address">
                                    <span>${addresses.get(0).username}&nbsp;&nbsp;</span><span>${addresses.get(0).userphone}</span>
                                    <br>
                                    <span>${addresses.get(0).province}&nbsp;${addresses.get(0).city}&nbsp;${addresses.get(0).area}&nbsp;${addresses.get(0).address}</span>
                                    <br>
                                    <span>${addresses.get(0).postcode}</span>
                                </div>
                            </li>
                            <li>
                                <span>买家留言：</span>
                                <span>${orderGoods.get(0).orderremarks}</span>
                            </li>
                            <li>
                                <span>发票抬头：</span>
                                <span>${orderGoods.get(0).invoicelient}</span>
                            </li>
                            <li>
                                <span>订单编号：</span>
                                <span>${orderGoods.get(0).orderno}</span>
                            </li>
                        </ul>
                    </div>
                </td>
                <td class="order-firstmain-right">
                    <c:if test="${expressStatus==0}">
                        <div class="order-firstmain-right-div">
                            <dl>
                                <c:if test="${expressDatas.state==0}">
                                    <dd>
                                            <%--state	快递单当前的状态 。0：在途中,1：已发货，2：疑难件，3： 已签收 ，4：已退货。--%>
                                        <h3>订单状态：您的订单已在途中。。</h3>
                                    </dd>
                                </c:if>
                                <c:if test="${expressDatas.state==1}">
                                    <dd>
                                        <h3>订单状态：您的订单已发货。。</h3>
                                    </dd>
                                </c:if>
                                <c:if test="${expressDatas.state==2}">
                                    <dd>
                                        <h3>订单状态：您的订单因某些原因出现了一些问题</h3>
                                    </dd>
                                </c:if>
                                <c:if test="${expressDatas.state==3}">
                                    <dd>
                                        <h3>订单状态：您的订单已签收。。</h3>
                                    </dd>
                                </c:if>
                                <c:if test="${expressDatas.state==4}">
                                    <dd>
                                        <h3>订单状态：您的订单已退货。。</h3>
                                    </dd>
                                </c:if>
                            </dl>
                            <ul>
                                <li>
                                    <span>物流：</span>

                                    <span>-</span>
                                    <br>
                                    <span>运单号：<span></span></span><span>-</span>
                                    <br>
                                    <span>-</span><span class="order-firstmain-right-status">-}</span>
                                </li>
                            </ul>
                            <dl>
                                <dd><span>您可以</span>
                                    <a href=" "><span>备忘</span></a>
                                    <a href=" "><span>开票申请</span></a>
                                </dd>
                            </dl>
                        </div>
                    </c:if>
                    <c:if test="${expressStatus==1}">
                        <div class="order-firstmain-right-div">
                            <dl>
                                <dd>
                                    <h3>订单状态：交易成功</h3>
                                </dd>

                            </dl>
                            <ul>
                                <li>
                                    <span>物流：</span>

                                    <span>${expressDatas.com}</span>
                                    <br>
                                    <span>运单号：<span></span></span><span>${expressDatas.nu}</span>
                                    <br>
                                    <span>${expressDatas.data.get(0).time}</span><span
                                        class="order-firstmain-right-status">&nbsp;&nbsp;${expressDatas.data.get(0).context}</span>
                                </li>
                            </ul>
                            <dl>
                                <dd><span>您可以</span>
                                    <c:if test="${orderGoods.get(0).orderstatus==2}">
                                        <c:if test="${orderGoods.get(0).isappraises==0}">
                                            <a href="${path}/order/evaluateGoods?orderid=${orderGoods.get(0).orderid}"
                                               target="_block" title="">
                                                <button class="layui-btn layui-btn-primary">评价</button>
                                            </a>
                                        </c:if>
                                    </c:if>
                                    <a href=" "><span>备忘</span></a>
                                    <a href=" "><span>开票申请</span></a>
                                </dd>
                            </dl>
                        </div>
                    </c:if>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
    <div class="order-secondmain">
        <div align="center">
            <dl>
                <dt>商品</dt>
                <dd>单价</dd>
                <dd>数量</dd>
                <dd>售后</dd>
                <dd>状态</dd>
            </dl>
            <table>
                <tbody>
                <tr>
                    <td>
                        <c:if test="${expressStatus==0}">
                            <div class="order-secondmain-package">
                                <span class="order-secondmain-package-content">您当前还没有物流信息</span>
                            </div>
                        </c:if>
                        <c:if test="${expressStatus==1}">
                            <div class="order-secondmain-package">
                                <span class="order-secondmain-package-content">包裹1</span><span
                                    class="order-secondmain-package-content">${expressDatas.com}</span><span
                                    class="order-secondmain-package-content">运单号：</span><span>${expressDatas.nu}</span><span
                                    class="order-secondmain-package-content-address">${expressDatas.data.get(0).time}</span><span
                                    class="order-secondmain-package-content-address"> ${expressDatas.data.get(0).context}</span></span>
                                <span class="order-secondmain-package-content-more" onmouseover="showDIV('more2')"
                                      onmouseout="hiddenDIV('more2')">更多></span>
                                <div id="more2" class="order-secondmain-hidden" style="display: none;"
                                     onmouseover="showDIV('more2')" onmouseout="hiddenDIV('more2')">
                                    <ul onmouseover="showDIV('more2')" onmouseout="hiddenDIV('more2')">
                                        <c:forEach items="${expressDatas.data}" var="datalist" varStatus="status">
                                            <li><span>${datalist.time}</span><span
                                                    class="order-secondmain-hidden-package-address"> ${datalist.context}}</span>
                                            </li>
                                        </c:forEach>
                                        <li><span>以下信息由物流公司提供，如无跟踪信息或有疑问，请查<a href="">黄马甲</a>官方网站或联系其公示电话</span></li>
                                    </ul>
                                </div>
                                <p></p>
                            </div>
                        </c:if>
                        <table>
                            <tbody>
                            <c:forEach items="${orderGoods.get(0).orderGoodsList}" var="goodsList" varStatus="status">
                                <tr>
                                    <td>
                                        <div class="order-secondmain-goods-commodity">
                                            <img src="${path}/img/goodsAttr/${goodsList.goodsimage}" alt="商品"
                                                 align="left">
                                            <div>
                                                <ul>
                                                    <li><a href="#" title="查看宝贝详情" data-hidefocus="true"
                                                           target="_blank">
                                                            ${goodsList.goodsname},${goodsList.goodsversion},${goodsList.goodstotaldesc}
                                                    </a></li>
                                                    <li>
                                                        <span><span>颜色分类</span><span>：</span></span><span>${goodsList.goodscolor}</span>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="order-secondmain-goods">
                                        <div>
                                            <span>${goodsList.goodsprice}</span>
                                        </div>
                                    </td>
                                    <td class="order-secondmain-goods">
                                        <div>
                                            <span>x${goodsList.goodsnums}</span>
                                        </div>
                                    </td>
                                    <td class="order-secondmain-goods">
                                        <c:if test="${orderGoods.get(0).orderstatus==2}">
                                            <div>
                                                    <%--${path}/afterSale/doAfterSale?goodsAttrId=${goodsList.goodsattrId}&orderId=${orderGoods.get(0).orderid}--%>
                                                <span><a href="#">申请售后</a></span>
                                            </div>
                                        </c:if>
                                    </td>
                                    <td class="order-secondmain-goods">
                                        <c:if test="${expressDatas.state==0}">
                                            <div>
                                                <span>已购买</span>
                                            </div>
                                        </c:if>
                                        <c:if test="${expressDatas.state==1}">
                                            <div>
                                                <span>已发货</span>
                                            </div>
                                        </c:if>
                                        <c:if test="${expressDatas.state==2}">
                                            <div>
                                                <span>交易失败</span>
                                            </div>
                                        </c:if>
                                        <c:if test="${expressDatas.state==3}">
                                            <div>
                                                <span>已签收</span>
                                            </div>
                                        </c:if>
                                        <c:if test="${expressDatas.state==4}">
                                            <div>
                                                <span>已退货</span>
                                            </div>
                                        </c:if>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="order-thirdmain">
        <div>
            <table>
                <tbody>
                <tr>
                    <td>
                        <%--返回积分点--%>
                        <span class="order-thirdmain-integral"></span>
                    </td>
                    <td class="order-thirdmain-detail">
                        <div>
                            <table>
                                <tbody>
                                <tr>
                                    <td>商品总价：</td>
                                    <td><span>￥${orderGoods.get(0).totalmoney}</span></td>
                                </tr>
                                <tr>
                                    <td>运费(快递)：</td>
                                    <td><span>￥${orderGoods.get(0).delivermoney}</span></td>
                                </tr>
                                <tr>
                                    <td><a href="" title="">运费险(卖家赠送)：</a></td>
                                    <td><span>￥0.00</span></td>
                                </tr>
                                <tr class="order-thirdmain-detail-price">
                                    <td>订单总价：</td>
                                    <td><span>￥${orderGoods.get(0).realtotalmoney}</span></td>
                                </tr>
                                <tr class="order-thirdmain-detail-price-realpay">
                                    <td>实付款：</td>
                                    <td><span>￥${orderGoods.get(0).realtotalmoney}</span></td>
                                </tr>
                                <%--<tr>--%>
                                <%--<td colspan="2"><a href="">查看花呗账单</a></td>--%>
                                <%--</tr>--%>
                                </tbody>
                            </table>
                        </div>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="order-fourthmain">
        <div class="order-fourthmain-display">
            促销/上新活动
        </div>
        <div class="order-fourthmain-Promotion-div"><a href="" title=""><img class="order-fourthmain-Promotion-img"
                                                                             src="${path}/icon/order/1.jpg" alt=""></a>
        </div>
        <div class="order-fourthmain-Promotion-div"><a href="" title=""><img class="order-fourthmain-Promotion-img"
                                                                             src="${path}/icon/order/2.jpg" alt=""></a>
        </div>
        <div class="order-fourthmain-Promotion-div"><a href="" title=""><img class="order-fourthmain-Promotion-img"
                                                                             src="${path}/icon/order/3.jpg" alt=""></a>
        </div>
        <div class="order-fourthmain-Promotion-div"><a href="" title=""><img class="order-fourthmain-Promotion-img"
                                                                             src="${path}/icon/order/4.jpg" alt=""></a>
        </div>
        <div class="order-fourthmain-Promotion-div"><a href="" title=""><img class="order-fourthmain-Promotion-img"
                                                                             src="${path}/icon/order/5.jpg" alt=""></a>
        </div>
        <div class="order-fourthmain-Promotion-div"><a href="" title=""><img class="order-fourthmain-Promotion-img"
                                                                             src="${path}/icon/order/6.jpg" alt=""></a>
        </div>
        <div class="order-fourthmain-Promotion-div"><a href="" title=""><img class="order-fourthmain-Promotion-img"
                                                                             src="${path}/icon/order/7.jpg" alt=""></a>
        </div>
        <div class="order-fourthmain-Promotion-div"><a href="" title=""><img class="order-fourthmain-Promotion-img"
                                                                             src="${path}/icon/order/8.jpg" alt=""></a>
        </div>
    </div>
</div>
</body>

</html>