<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>RCE商城</title>
    <link rel="stylesheet" type="text/css" href="/rcestore/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="/rcestore/css/global.css">
    <link rel="stylesheet" type="text/css" href="/rcestore/css/headframe.css">
    <link rel="stylesheet" type="text/css" href="/rcestore/css/footframe.css">
    <link rel="stylesheet" type="text/css" href="/rcestore/css/index.css">
</head>

<body>
<!--头部导航-->
<div class="layui-top-nav top-nav">
    <div class="layui-main">
        <div class="top-nav-nav-left">
            <ul class="layui-nav">
                <li class="layui-nav-item layui-this"><a href="">RCE商城</a></li>
                <li class="layui-nav-item"><a href="">广告合作</a></li>
                <li class="layui-nav-item"><a href="">开放平台</a></li>
            </ul>
        </div>
        <div class="top-nav-nav-right">
            <ul class="layui-nav">

                <li id="login" class="layui-nav-item"><a href="/rcestore/login/login.html">登录</a></li>
                <li id="register" class="layui-nav-item"><a href="">注册</a></li>
                <li id="username" class="layui-nav-item">
                    <a href="javascript:;"><img src="http://t.cn/RCzsdCq" class="layui-nav-img">koala1280</a>
                    <dl class="layui-nav-child">
                        <dd><a href="/rcestore/selfcenter/selfcenter.html">个人中心</a></dd>
                        <dd><a href="">退出登录</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item"><a href="">消息通知<span class="layui-badge">9</span></a></li>
                <li id="myBookList" class="layui-nav-item"><a href="">我的订单</a></li>
                <li class="layui-nav-item">
                    <a href="">购物车</a>
                    <dl class="layui-nav-child usercart">
                        <dd><a href="">购物车为空...</a></dd>
                    </dl>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="layui-top-nav logo-top-nav">
    <div class="layui-main">
        <a class="logo" href="index.jsp"><img src="/rcestore/img/logo.png"></a>
        <div class="logo-nav">
            <ul class="layui-logo-nav">
                <li class="layui-nav-item logo-nav-1" onmouseover="getNavRec(1)" onmouseout="removeNavRec(1)"><a
                        href="javascript:;">小米</a></li>
                <li class="layui-nav-item logo-nav-2" onmouseover="getNavRec(2)" onmouseout="removeNavRec(2)"><a
                        href="javascript:;">vivo</a></li>
                <li class="layui-nav-item logo-nav-3" onmouseover="getNavRec(3)" onmouseout="removeNavRec(3)"><a
                        href="javascript:;">oppo</a></li>
                <li class="layui-nav-item logo-nav-4" onmouseover="getNavRec(4)" onmouseout="removeNavRec(4)"><a
                        href="javascript:;">华为</a></li>
                <li class="layui-nav-item logo-nav-5" onmouseover="getNavRec(5)" onmouseout="removeNavRec(5)"><a
                        href="javascript:;">荣耀</a></li>
                <li class="layui-nav-item logo-nav-6" onmouseover="getNavRec(6)" onmouseout="removeNavRec(6)"><a
                        href="javascript:;">魅族</a></li>
                <li class="layui-nav-item logo-nav-7" onmouseover="getNavRec(7)" onmouseout="removeNavRec(7)"><a
                        href="javascript:;">一加</a></li>
                <li class="layui-nav-item logo-nav-8" onmouseover="getNavRec(8)" onmouseout="removeNavRec(8)"><a
                        href="javascript:;">努比亚</a></li>

            </ul>
        </div>
        <div class="logo-nav-search">
            <div class="layui-input-inline" style="width: 250px;">
                <input type="text" name="" placeholder="请输入搜索内容..." class="layui-input" autocomplete="on">
            </div>
            <button class="layui-btn layui-btn-primary">
                <i class="layui-icon layui-icon-search"></i>
            </button>
        </div>
    </div>
</div>


<!-- 主题内容 -->
<div class="layui-main">
    <!--轮播图导航栏-->
    <div class="layui-row banner-container">
        <div class="layui-col-md2 banner-left">
            <ul class="banner-nav">
                <a href="">
                    <li class="layui-nav-item banner-nav banner-nav-1" onmouseover="changeBanner(1)"
                        onmouseout="resetBanner(1)">
                        精品推荐
                        <i class="layui-icon layui-icon-right"></i>
                    </li>
                </a>
                <a href="">
                    <li class="layui-nav-item banner-nav banner-nav-2" onmouseover="changeBanner(2)"
                        onmouseout="resetBanner(2)">
                        小米
                        <i class="layui-icon layui-icon-right"></i>
                    </li>
                </a>
                <a href="">
                    <li class="layui-nav-item banner-nav banner-nav-3" onmouseover="changeBanner(3)"
                        onmouseout="resetBanner(3)">
                        vivo
                        <i class="layui-icon layui-icon-right"></i>
                    </li>
                </a>
                <a href="">
                    <li class="layui-nav-item banner-nav banner-nav-4" onmouseover="changeBanner(4)"
                        onmouseout="resetBanner(4)">
                        oppo
                        <i class="layui-icon layui-icon-right"></i>
                    </li>
                </a>
                <a href="">
                    <li class="layui-nav-item banner-nav banner-nav-5" onmouseover="changeBanner(5)"
                        onmouseout="resetBanner(5)">
                        华为
                        <i class="layui-icon layui-icon-right"></i>
                    </li>
                </a>
                <a href="">
                    <li class="layui-nav-item banner-nav banner-nav-6" onmouseover="changeBanner(6)"
                        onmouseout="resetBanner(6)">
                        荣耀
                        <i class="layui-icon layui-icon-right"></i>
                    </li>
                </a>
                <a href="">
                    <li class="layui-nav-item banner-nav banner-nav-7" onmouseover="changeBanner(7)"
                        onmouseout="resetBanner(7)">
                        魅族
                        <i class="layui-icon layui-icon-right"></i>
                    </li>
                </a>
                <a href="">
                    <li class="layui-nav-item banner-nav banner-nav-8" onmouseover="changeBanner(8)"
                        onmouseout="resetBanner(8)">
                        一加
                        <i class="layui-icon layui-icon-right"></i>
                    </li>
                </a>
                <a href="">
                    <li class="layui-nav-item banner-nav banner-nav-9" onmouseover="changeBanner(9)"
                        onmouseout="resetBanner(9)">
                        努比亚
                        <i class="layui-icon layui-icon-right"></i>
                    </li>
                </a>
            </ul>
        </div>
        <div class="layui-col-md10 banner-right">
            <!--轮播图-->
            <div class="layui-carousel" id="carousel" lay-filter="carousel">
                <div carousel-item="">
                    <a href="">
                        <div><img src="/rcestore/img/banner/oppo.jpg"></div>
                    </a>
                    <a href="">
                        <div><img src="/rcestore/img/banner/huawei.jpg"></div>
                    </a>
                    <a href="">
                        <div><img src="/rcestore/img/banner/rongyao.jpg"></div>
                    </a>
                    <a href="">
                        <div><img src="/rcestore/img/banner/xiaomi.jpg"></div>
                    </a>
                    <a href="">
                        <div><img src="/rcestore/img/banner/yijia.jpg"></div>
                    </a>
                    <a href="">
                        <div><img src="/rcestore/img/banner/meizu.jpg"></div>
                    </a>
                </div>
            </div>
            <% int goodsTimeListNumOne = 0; %>
            <div style="display: none;" class="banner-recommend banner-recommend-1" id="banner-recommend-1"
                 onmouseover="changeBanner(1)" onmouseout="resetBanner(1)">
                <div class="layui-row">

                    <c:forEach items="${goodsTimeList}" var="goodsTime" begin="1" end="20">
                        <% goodsTimeListNumOne++; %>
                        <div class="layui-col-md3" id="<%=goodsTimeListNumOne%>">
                          <%--  <% System.out.println(goodsTimeListNumOne); %>--%>
                            <a href="${pageContext.request.contextPath}/goods/findGood?goodsId=${goodsTime.get("goodsId")}"><img
                                    src="${goodsTime.get("goodsImage")}"><span>${goodsTime.get("goodsName")}</span></a>
                        </div>
                    </c:forEach>
                </div>
            </div>

            <% int goodsTimeListNum = 1;%>
            <c:forEach items="${goodsAllList}" var="goodsList">
                <% goodsTimeListNum++;
                System.out.println(goodsTimeListNum);
                %>
            <div style="display: none;" class="banner-recommend banner-recommend-1" id="banner-recommend-<%=goodsTimeListNum%>"
                 onmouseover="changeBanner(<%=goodsTimeListNum%>)" onmouseout="resetBanner(<%=goodsTimeListNum%>)">
                <div class="layui-row">
                    <c:forEach items="${goodsList}" var="goods">
                    <div class="layui-col-md3" id="<%=goodsTimeListNumOne%>">
                        <a href="${pageContext.request.contextPath}/goods/findGood?goodsId=${goods.get("goodsId")}"><img src="${goods.get("goodsImage")}"><span>${goods.get("goodsName")}</span></a>
                    </div>
                    </c:forEach>
                </div>
            </div>
            </c:forEach>
        </div>
    </div>
</div>
<div class="rce-container">
    <div class="layui-main">
        <div class="goods-recommend">
            <div class="layui-row goods-recommend-title">
                <div class="layui-col-md11">
                    <h2 class="goods-title">0-2500元</h2>
                </div>
                <div class="layui-col-md1">
                    <a href="">
                        <h3>查看全部<i class="layui-icon layui-icon-triangle-r"></i></h3>
                    </a>
                </div>
            </div>
            <div class="layui-row">

                <div class="layui-col-md2">
                    <a href="">
                        <img class="left_xiaomi" src="/rcestore/img/phone/left_xiaomi.jpg">
                    </a>
                </div>

                <div class="layui-col-md10 recommend-right">
                    <div class="layui-row recommend-top">
                        <div class="layui-col-md3">
                            <a href="${pageContext.request.contextPath}/goods/findGood?goodsId=${goodsPriceList.get(0).get(0).get("goodsId")}">
                                <div class="recommend-right-item" id="phone-recommend-1"
                                     onmouseover="setShadow('phone',1)" onmouseout="removeShadow('phone',1)">
                                    <p class="recommend-discount">减200元</p>
                                    <img src="${goodsPriceList.get(0).get(0).get("goodsRImage")}">
                                    <p class="goods-basic">${goodsPriceList.get(0).get(0).get("goodsName")}</p>
                                    <p class="goods-des">${goodsPriceList.get(0).get(0).get("goodsTotalDesc")}</p>
                                    <br>
                                    <p class="goods-price">${goodsPriceList.get(0).get(0).get("goodsPrice")}元<s class="initial-price">2200元</s></p>
                                </div>
                            </a>
                        </div>
                        <div class="layui-col-md3">
                            <a href="${pageContext.request.contextPath}/goods/findGood?goodsId=${goodsPriceList.get(0).get(5).get("goodsId")}">
                                <p class="recommend-discount">减100元</p>
                                <div class="recommend-right-item" id="phone-recommend-2"
                                     onmouseover="setShadow('phone',2)" onmouseout="removeShadow('phone',2)">
                                    <img src="${goodsPriceList.get(0).get(5).get("goodsRImage")}">
                                    <p class="goods-basic">${goodsPriceList.get(0).get(5).get("goodsName")}</p>
                                    <p class="goods-des">${goodsPriceList.get(0).get(5).get("goodsTotalDesc")}</p>
                                    <br>
                                    <p class="goods-price">${goodsPriceList.get(0).get(5).get("goodsPrice")}元<s class="initial-price">2500元</s></p>
                                </div>
                            </a>
                        </div>
                        <div class="layui-col-md3">
                            <a href="${pageContext.request.contextPath}/goods/findGood?goodsId=${goodsPriceList.get(0).get(11).get("goodsId")}">
                                <p class="recommend-discount">减100元</p>
                                <div class="recommend-right-item" id="phone-recommend-3"
                                     onmouseover="setShadow('phone',3)" onmouseout="removeShadow('phone',3)">
                                    <img src="${goodsPriceList.get(0).get(11).get("goodsRImage")}">
                                    <p class="goods-basic">${goodsPriceList.get(0).get(11).get("goodsName")}</p>
                                    <p class="goods-des">${goodsPriceList.get(0).get(11).get("goodsTotalDesc")}</p>
                                    <br>
                                    <p class="goods-price">${goodsPriceList.get(0).get(11).get("goodsPrice")}元<s class="initial-price">2500元</s></p>
                                </div>
                            </a>
                        </div>
                        <div class="layui-col-md3">
                            <a href="${pageContext.request.contextPath}/goods/findGood?goodsId=${goodsPriceList.get(0).get(15).get("goodsId")}">
                                <p class="recommend-discount">减50元</p>
                                <div class="recommend-right-item" id="phone-recommend-4"
                                     onmouseover="setShadow('phone',4)" onmouseout="removeShadow('phone',4)">
                                    <img src="${goodsPriceList.get(0).get(15).get("goodsRImage")}">
                                    <p class="goods-basic">${goodsPriceList.get(0).get(15).get("goodsName")}</p>
                                    <p class="goods-des">${goodsPriceList.get(0).get(15).get("goodsTotalDesc")}</p>
                                    <br>
                                    <p class="goods-price">${goodsPriceList.get(0).get(15).get("goodsPrice")}元<s class="initial-price">2500元</s></p>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="layui-row recommend-bottom">
                        <div class="layui-col-md3">
                            <a href="${pageContext.request.contextPath}/goods/findGood?goodsId=${goodsPriceList.get(0).get(21).get("goodsId")}">
                                <div class="recommend-right-item" id="phone-recommend-5"
                                     onmouseover="setShadow('phone',5)" onmouseout="removeShadow('phone',5)">
                                    <img src="${goodsPriceList.get(0).get(21).get("goodsRImage")}">
                                    <p class="goods-basic">${goodsPriceList.get(0).get(21).get("goodsName")}</p>
                                    <p class="goods-des">${goodsPriceList.get(0).get(21).get("goodsTotalDesc")}/p>
                                    <br>
                                    <p class="goods-price">${goodsPriceList.get(0).get(21).get("goodsPrice")}元</p>
                                </div>
                            </a>
                        </div>
                        <div class="layui-col-md3">
                            <a href="${pageContext.request.contextPath}/goods/findGood?goodsId=${goodsPriceList.get(0).get(29).get("goodsId")}">
                                <div class="recommend-right-item" id="phone-recommend-6"
                                     onmouseover="setShadow('phone',6)" onmouseout="removeShadow('phone',6)">
                                    <img src="${goodsPriceList.get(0).get(29).get("goodsRImage")}">
                                    <p class="goods-basic">${goodsPriceList.get(0).get(29).get("goodsName")}</p>
                                    <p class="goods-des">${goodsPriceList.get(0).get(29).get("goodsTotalDesc")}</p>
                                    <br>
                                    <p class="goods-price">${goodsPriceList.get(0).get(29).get("goodsPrice")}元</p>
                                </div>
                            </a>
                        </div>
                        <div class="layui-col-md3">
                            <a href="${pageContext.request.contextPath}/goods/findGood?goodsId=${goodsPriceList.get(0).get(35).get("goodsId")}">
                                <div class="recommend-right-item" id="phone-recommend-7"
                                     onmouseover="setShadow('phone',7)" onmouseout="removeShadow('phone',7)">
                                    <img src="${goodsPriceList.get(0).get(35).get("goodsRImage")}">
                                    <p class="goods-basic">${goodsPriceList.get(0).get(35).get("goodsName")}</p>
                                    <p class="goods-des">${goodsPriceList.get(0).get(35).get("goodsTotalDesc")}</p>
                                    <br>
                                    <p class="goods-price">${goodsPriceList.get(0).get(35).get("goodsPrice")}元</p>
                                </div>
                            </a>
                        </div>
                        <div class="layui-col-md3">
                            <a href="${pageContext.request.contextPath}/goods/findGood?goodsId=${goodsPriceList.get(0).get(44).get("goodsId")}">
                                <div class="recommend-right-item" id="phone-recommend-8"
                                     onmouseover="setShadow('phone',8)" onmouseout="removeShadow('phone',8)">
                                    <img src="${goodsPriceList.get(0).get(44).get("goodsRImage")}">
                                    <p class="goods-basic">${goodsPriceList.get(0).get(44).get("goodsName")}</p>
                                    <p class="goods-des">${goodsPriceList.get(0).get(44).get("goodsTotalDesc")}</p>
                                    <br>
                                    <p class="goods-price">${goodsPriceList.get(0).get(44).get("goodsPrice")}元</p>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <a href="">
            <div class="longad">
                <img src="/rcestore/img/phone/longad.jpg">
            </div>
        </a>
        <div class="goods-recommend">
            <div class="layui-row goods-recommend-title">
                <div class="layui-col-md11">
                    <h2 class="goods-title">2500元以上区</h2>
                </div>
                <div class="layui-col-md1">
                    <a href="">
                        <h3>查看全部<i class="layui-icon layui-icon-triangle-r"></i></h3>
                    </a>
                </div>
            </div>
            <div class="layui-row pc-recommend">
                <a href="${pageContext.request.contextPath}/goods/findGood?goodsId=${goodsPriceList.get(1).get(0).get("goodsId")}">
                    <div class="layui-col-md2" id="pc-recommend-1" onmouseover="getComment(1),setShadow('pc',1)"
                         onmouseout="getPrice(1),removeShadow('pc',1)">
                        <div class="pc-item">
                            <img src="${goodsPriceList.get(1).get(0).get("goodsRImage")}">
                            <p class="goods-basic">${goodsPriceList.get(1).get(0).get("goodsName")}</p>
                            <p class="goods-des">${goodsPriceList.get(1).get(0).get("goodsTotalDesc")}</p>
                            <br>
                            <p class="goods-price" id="pc-price-1">${goodsPriceList.get(1).get(0).get("goodsPrice")}元</p>
                            <p class="pc-comment" id="pc-comment-1">
                                ${goodsPriceList.get(1).get(0).get("goodsSaleDesc")}
                            </p>
                        </div>

                    </div>
                </a>

                <a href="${pageContext.request.contextPath}/goods/findGood?goodsId=${goodsPriceList.get(1).get(9).get("goodsId")}">
                    <div class="layui-col-md2 pc-recommend-item" id="pc-recommend-2"
                         onmouseover="getComment(2),setShadow('pc',2)"
                         onmouseout="getPrice(2),removeShadow('pc',2)">
                        <div class="pc-item">
                            <img src="${goodsPriceList.get(1).get(9).get("goodsRImage")}">
                            <p class="goods-basic">${goodsPriceList.get(1).get(9).get("goodsName")}</p>
                            <p class="goods-des">${goodsPriceList.get(1).get(9).get("goodsTotalDesc")}</p>
                            <br>
                            <p class="goods-price" id="pc-price-2">${goodsPriceList.get(1).get(9).get("goodsPrice")}元</p>
                            <p class="pc-comment" id="pc-comment-2">
                                ${goodsPriceList.get(1).get(9).get("goodsSaleDesc")}
                            </p>
                        </div>
                    </div>
                </a>
                <a href="${pageContext.request.contextPath}/goods/findGood?goodsId=${goodsPriceList.get(1).get(15).get("goodsId")}">
                    <div class="layui-col-md2 pc-recommend-item" id="pc-recommend-3"
                         onmouseover="getComment(3),setShadow('pc',3)"
                         onmouseout="getPrice(3),removeShadow('pc',3)">
                        <div class="pc-item">
                            <img src="${goodsPriceList.get(1).get(15).get("goodsRImage")}">
                            <p class="goods-basic">${goodsPriceList.get(1).get(15).get("goodsName")}</p>
                            <p class="goods-des">${goodsPriceList.get(1).get(15).get("goodsTotalDesc")}</p>
                            <br>
                            <p class="goods-price" id="pc-price-3">${goodsPriceList.get(1).get(15).get("goodsPrice")}元</p>
                            <p class="pc-comment" id="pc-comment-3">
                                ${goodsPriceList.get(1).get(15).get("goodsSaleDesc")}
                            </p>
                        </div>
                    </div>
                </a>
                <a href="${pageContext.request.contextPath}/goods/findGood?goodsId=${goodsPriceList.get(1).get(19).get("goodsId")}">
                    <div class="layui-col-md2 pc-recommend-item" id="pc-recommend-4"
                         onmouseover="getComment(4),setShadow('pc',4)"
                         onmouseout="getPrice(4),removeShadow('pc',4)">
                        <div class="pc-item">
                            <img src="${goodsPriceList.get(1).get(19).get("goodsRImage")}">
                            <p class="goods-basic">${goodsPriceList.get(1).get(19).get("goodsName")}</p>
                            <p class="goods-des">${goodsPriceList.get(1).get(19).get("goodsTotalDesc")}</p>
                            <br>
                            <p class="goods-price" id="pc-price-4">${goodsPriceList.get(1).get(19).get("goodsPrice")}元</p>
                            <p class="pc-comment" id="pc-comment-4">
                                ${goodsPriceList.get(1).get(19).get("goodsSaleDesc")}
                            </p>
                        </div>
                    </div>
                </a>
                <a href="${pageContext.request.contextPath}/goods/findGood?goodsId=${goodsPriceList.get(1).get(26).get("goodsId")}">
                    <div class="layui-col-md2 pc-recommend-item" id="pc-recommend-5"
                         onmouseover="getComment(5),setShadow('pc',5)"
                         onmouseout="getPrice(5),removeShadow('pc',5)">
                        <div class="pc-item">
                            <img src="${goodsPriceList.get(1).get(27).get("goodsRImage")}">
                            <p class="goods-basic">${goodsPriceList.get(1).get(26).get("goodsName")}</p>
                            <p class="goods-des">${goodsPriceList.get(1).get(26).get("goodsTotalDesc")}</p>
                            <br>
                            <p class="goods-price" id="pc-price-5">${goodsPriceList.get(1).get(26).get("goodsPrice")}元</p>
                            <p class="pc-comment" id="pc-comment-5">
                                ${goodsPriceList.get(1).get(26).get("goodsSaleDesc")}
                            </p>
                        </div>
                    </div>

                </a>
                <a href="${pageContext.request.contextPath}/goods/findGood?goodsId=${goodsPriceList.get(1).get(33).get("goodsId")}">
                    <div class="layui-row pc-recommend pc-recommend-bottom">
                        <div class="layui-col-md2" id="pc-recommend-6" onmouseover="getComment(6),setShadow('pc',6)"
                             onmouseout="getPrice(6),removeShadow('pc',6)">
                            <div class="pc-item">
                                <img src="${goodsPriceList.get(1).get(33).get("goodsRImage")}">
                                <p class="goods-basic">${goodsPriceList.get(1).get(33).get("goodsName")}</p>
                                <p class="goods-des">${goodsPriceList.get(1).get(33).get("goodsTotalDesc")}</p>
                                <br>
                                <p class="goods-price" id="pc-price-6">${goodsPriceList.get(1).get(33).get("goodsPrice")}元</p>
                                <p class="pc-comment" id="pc-comment-6">
                                    ${goodsPriceList.get(1).get(33).get("goodsSaleDesc")}
                                </p>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="${pageContext.request.contextPath}/goods/findGood?goodsId=${goodsPriceList.get(1).get(38).get("goodsId")}">
                    <div class="layui-col-md2 pc-recommend-item" id="pc-recommend-7"
                         onmouseover="getComment(7),setShadow('pc',7)"
                         onmouseout="getPrice(7),removeShadow('pc',7)">
                        <div class="pc-item">
                            <img src="${goodsPriceList.get(1).get(38).get("goodsRImage")}">
                            <p class="goods-basic">${goodsPriceList.get(1).get(38).get("goodsName")}</p>
                            <p class="goods-des">${goodsPriceList.get(1).get(38).get("goodsTotalDesc")}</p>
                            <br>
                            <p class="goods-price" id="pc-price-7">${goodsPriceList.get(1).get(38).get("goodsPrice")}元</p>
                            <p class="pc-comment" id="pc-comment-7">
                                ${goodsPriceList.get(1).get(38).get("goodsSaleDesc")}
                            </p>
                        </div>
                    </div>
                </a>
                <a href="${pageContext.request.contextPath}/goods/findGood?goodsId=${goodsPriceList.get(1).get(47).get("goodsId")}">
                    <div class="layui-col-md2 pc-recommend-item" id="pc-recommend-8"
                         onmouseover="getComment(8),setShadow('pc',8)"
                         onmouseout="getPrice(8),removeShadow('pc',8)">
                        <div class="pc-item">
                            <img src="${goodsPriceList.get(1).get(47).get("goodsRImage")}">
                            <p class="goods-basic">${goodsPriceList.get(1).get(47).get("goodsName")}</p>
                            <p class="goods-des">${goodsPriceList.get(1).get(47).get("goodsTotalDesc")}</p>
                            <br>
                            <p class="goods-price" id="pc-price-8">${goodsPriceList.get(1).get(47).get("goodsPrice")}元</p>
                            <p class="pc-comment" id="pc-comment-8">
                                ${goodsPriceList.get(1).get(47).get("goodsSaleDesc")}
                            </p>
                        </div>
                    </div>
                </a>
                <a href="${pageContext.request.contextPath}/goods/findGood?goodsId=${goodsPriceList.get(1).get(58).get("goodsId")}">
                    <div class="layui-col-md2 pc-recommend-item" id="pc-recommend-9"
                         onmouseover="getComment(9),setShadow('pc',9)"
                         onmouseout="getPrice(9),removeShadow('pc',9)">
                        <div class="pc-item">
                            <img src="${goodsPriceList.get(1).get(58).get("goodsRImage")}">
                            <p class="goods-basic">${goodsPriceList.get(1).get(58).get("goodsName")}/p>
                            <p class="goods-des">${goodsPriceList.get(1).get(58).get("goodsTotalDesc")}</p>
                            <br>
                            <p class="goods-price" id="pc-price-9">${goodsPriceList.get(1).get(58).get("goodsPrice")}元</p>
                            <p class="pc-comment" id="pc-comment-9">
                                ${goodsPriceList.get(1).get(58).get("goodsSaleDesc")}
                            </p>
                        </div>
                    </div>
                </a>
                <a href="${pageContext.request.contextPath}/goods/findGood?goodsId=${goodsPriceList.get(1).get(69).get("goodsId")}">
                    <div class="layui-col-md2 pc-recommend-item" id="pc-recommend-10"
                         onmouseover="getComment(10),setShadow('pc',10)"
                         onmouseout="getPrice(10),removeShadow('pc',10)">
                        <div class="pc-item">
                            <img src="${goodsPriceList.get(1).get(69).get("goodsRImage")}">
                            <p class="goods-basic">${goodsPriceList.get(1).get(69).get("goodsName")}</p>
                            <p class="goods-des">${goodsPriceList.get(1).get(69).get("goodsTotalDesc")}</p>
                            <br>
                            <p class="goods-price" id="pc-price-10">${goodsPriceList.get(1).get(69).get("goodsPrice")}元</p>
                            <p class="pc-comment" id="pc-comment-10">
                                ${goodsPriceList.get(1).get(69).get("goodsSaleDesc")}
                            </p>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>
</div>

<% int goodAllListNum = 0; %>
<c:forEach items="${goodsAllList}" var="goodsList">
    <% goodAllListNum++;
        String str = "logo-nav-recommend-" + goodAllListNum;
    %>
    <div class="logo-nav-recommend" id="<%=str%>" onmouseover="getNavRec(<%=goodAllListNum%>)"
         onmouseout="removeNavRec(<%=goodAllListNum%>)" style="display: none">
        <div class="layui-main layui-row">
            <c:forEach items="${goodsList}" var="goods">
                <a href="${pageContext.request.contextPath}/goods/findGood?goodsId=${goods.get("goodsId")}">
                    <div class="layui-col-md2">
                        <img src="${goods.get("goodsImage")}">
                        <p class="goods-title">${goods.get("goodsName")}</p>
                        <p class="goods-price">${goods.get("goodsPrice")}元起</p>
                    </div>
                </a>
            </c:forEach>
        </div>
    </div>
</c:forEach>

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
                        <li><a href="">账户管理</a></li>
                        <li><a href="">购物指南</a></li>
                    </div>
                    <div class="layui-col-md2">
                        <h2>服务支持</h2>
                        <li><a href="">售后政策</a></li>
                        <li><a href="">自助服务</a></li>
                    </div>
                    <div class="layui-col-md2">
                        <h2>线下门店</h2>
                        <li><a href="">服务网点</a></li>
                        <li><a href="">授权体验店</a></li>
                    </div>
                    <div class="layui-col-md2">
                        <h2>关于RCE</h2>
                        <li><a href="">了解RCE</a></li>
                        <li><a href="">加入RCE</a></li>
                    </div>
                    <div class="layui-col-md2">
                        <h2>关注我们</h2>
                        <li><a href="">新浪微博</a></li>
                        <li><a href="">联系我们</a></li>
                    </div>
                    <div class="layui-col-md2">
                        <h2>特色服务</h2>
                        <li><a href="">优惠券</a></li>
                        <li><a href="">防伪查询</a></li>
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
<script type="text/javascript" src="/rcestore/layui/layui.js"></script>
<script type="text/javascript" src="/rcestore/js/global.js"></script>
<script type="text/javascript" src="/rcestore/js/headframe.js"></script>
<script type="text/javascript" src="/rcestore/js/index.js"></script>
<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
</body>
</html>