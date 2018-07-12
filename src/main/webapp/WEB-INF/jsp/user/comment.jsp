<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/inc/taglibs.jsp" %>
<%--评价订单--%>
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
    <link rel="stylesheet" type="text/css" href="${path}/css/comment.css">
</head>
<body>
<!--头部导航-->
<%@ include file="/WEB-INF/inc/top.jsp" %>
<div class="self-center">
    <div class="layui-main">
        <div class="comment-title">
            <h3>评价订单</h3><br>
            <span>订单号:<a id="test1" href="">${orders.get(0).orderno}</a></span>
            <span id="test2" style="margin-left: 30px"><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss"
                                                                       value="${orders.get(0).creattime}"/></span>
        </div>
        <div>
            <table class="layui-table">
                <colgroup>
                    <col width="30%">
                    <col width="70%">
                </colgroup>
                <tr class="delivery">
                    <td>物流服务评价</td>
                    <td>
                        <span>快递包装：<div id="comm"></div></span>
                        <span>送货速度：<div id="comn"></div></span>
                    </td>
                </tr>
                <c:forEach items="${orders.get(0).orderGoodsList}" var="orderGoodsList" varStatus="status">
                    <c:set var="count" value="${status.index}"/>
                    <tr class="goods-detail1">
                        <td class="goods-detail">
                            <div>
                                <a href="${path}/goodsevaluate/showEvaluateList?goodsid=${orderGoodsList.goodsid}&?pageCode=1"><img
                                        src="${path}/img/goodsAttr/${orderGoodsList.goodsimage}"></a></div>
                            <p style="margin-top: 20px;"><a
                                    href="${path}/goodsevaluate/showEvaluateList?goodsid=${orderGoodsList.goodsid}&?pageCode=1">${orderGoodsList.goodsname},${orderGoodsList.goodsversion},${orderGoodsList.goodscolor},${orderGoodsList.goodstotaldesc}</a>>
                            </p>
                            <b style="margin-top: 20px;">${orderGoodsList.goodsprice}</b>
                        </td>
                        <td>
                            <div class="layui-row">
                                <div class="layui-col-md2">商品评分：</div>
                                <div class="layui-col-md10">
                                    <div class="commentstar"
                                         id="com${count}"></div>
                                </div>
                            </div>
                            <div class="layui-row">
                                <div class="layui-col-md2">商品评价：</div>
                                <div class="layui-col-md10">
                                    <textarea id="apprArea${count}" name=""
                                              style="width: 90%;height: 100px;" rows="4" cols="50"
                                              placeholder="分享体验心得,给万千想买的人一个参考..."></textarea>
                                </div>
                            </div>
                        </td>
                    </tr>
                </c:forEach>
            </table>

        </div>
        <div class="submit-btn">
            <input class="layui-btn layui-btn-lg layui-btn-submit" value="提交" onclick="test()" type="button" name="">
        </div>
    </div>
    &nbsp;
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
<div class="layui-main layui-foot">
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
<script src="${path}/layui/layui.js" charset="utf-8"></script>

<script>
    layui.use(['rate'], function () {
        var rate = layui.rate;
        var i = 0;
        var comlen = $(".commentstar").length;
        for (i = 0; i < comlen; i++) {
            rate.render({
                elem: '#com' + i
                , value: 5
                , half: false
                , text: true
            })
        }
        rate.render({
            elem: '#comm'
            , value: 5
            , half: false
            , text: true
        }),
            rate.render({
                elem: '#comn'
                , value: 5
                , half: false
                , text: true
            })
    });
</script>
<script type="text/javascript">
    function test() {
        //定义一个数组
        var length =
        ${orders.get(0).orderGoodsList.size()}
        var cons = new Array(length);
        <%
            Date datetime = new Date();
        %>
        // 将页面得到的数据进行josn数据封装
        <c:forEach  items="${orders.get(0).orderGoodsList}" var="orderGoodsList" varStatus="status">
        <c:set var="count" value="${status.index}" />
        var temp =${count};
        var con = {};
        con.orderId = '${orders.get(0).orderid}';
        con.goodsId = '${orderGoodsList.goodsid}';
        con.userId = '${orderGoodsList.userid}';
        con.goodsScore = $("#com" + temp).text()[0];
        con.serviceScore = $("#comm").text()[0];
        con.logisticsScore = $("#comn").text()[0];
        con.content = $("#apprArea" + temp).val();
        con.createTime = '<%=datetime%>';
        cons[temp] = con;
        </c:forEach>

        var jsondata = JSON.stringify(cons);
        var param = {};
        param.cons = jsondata;
        $.ajax({
            <%--${path}/--%>
            url: "${path}/order/submitEvaluate",
            type: "POST",
            dataType: "JSON",
            data: param,
            traditional: true,
            async: false,
            // false执行全部ajax之后才那个啥
            success: function () {
                window.location.href = "${path}/order/OrList?userid=${orders.get(0).orderGoodsList.get(0).userid}";
                alert("恭喜您，评价提交成功！")
            },
            error: function () {
                alert("抱歉，因某些原因您的评价没能提交！")
            }
        })
    }
</script>
</body>
</html>