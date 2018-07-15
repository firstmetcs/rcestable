<%--
  Created by IntelliJ IDEA.
  User: Firstmetcs
  Date: 2018/7/9/0009
  Time: 20:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/inc/taglibs.jsp" %>

<!--头部导航-->
<div class="layui-top-nav top-nav">
    <div class="layui-main">
        <div class="top-nav-nav-left">
            <ul class="layui-nav">
                <li class="layui-nav-item layui-this"><a href="">RCE商城</a></li>
                <li class="layui-nav-item"><a href="${path}/index/advertise">广告合作</a></li>
                <li class="layui-nav-item"><a href="${path}/index/openPlatform">开放平台</a></li>
            </ul>
        </div>
        <div class="top-nav-nav-right">
            <ul class="layui-nav">
                <c:if test="${empty sessionScope.indexuser}">
                    <li class="layui-nav-item"><a href="${path}/login/index">登录</a></li>
                    <li class="layui-nav-item"><a href="${path}/register/index">注册</a></li>
                </c:if>
                <c:if test="${!empty sessionScope.indexuser}">
                    <li id="username" class="layui-nav-item">
                        <a href="javascript:;"><img src="${path}/img/selfcenter/head_icon.jpg"
                                                    class="layui-nav-img">${sessionScope.indexuser.username}</a>
                        <dl class="layui-nav-child">
                            <dd><a href="${path}/user/index">个人中心</a></dd>
                            <dd><a href="${path}/user/logout">退出登录</a></dd>
                        </dl>
                    </li>

                </c:if>
                <li class="layui-nav-item"><a href="">消息通知<span class="layui-badge">9</span></a></li>
                <li id="myBookList" class="layui-nav-item"><a href="">我的订单</a></li>
                <li class="layui-nav-item">
                    <a href="${path}/shoppingCart/showSC">购物车</a>
                    <dl class="layui-nav-child usercart">
                        <c:if test="${!empty sessionScope.indexuser}">
                            <c:if test="${!empty sessionScope.shoppingCarts}">
                                <c:forEach var="shoppingCart" items="${sessionScope.shoppingCarts}" begin="0" end="4"
                                           step="1">

                                    <dd class="cart-item-1">
                                        <div class="layui-row">
                                            <a href="">
                                                <div class="layui-col-md2">
                                                    <img style="width: 100%;" src="${path}/img/phone/huaweiP20.png">
                                                </div>
                                                <div class="layui-col-md8">
                                                    <p class="layui-ptop">
                                                            ${shoppingCart.goodsname}&nbsp;&nbsp;${shoppingCart.goodsversion}
                                                    </p>
                                                    <p class="layui-ptop pbottom">
                                                        X${shoppingCart.goodscount}
                                                    </p>
                                                </div>
                                            </a>
                                            <div class="layui-col-md2">
                                                <p style="color: red" class="layui-ptop">
                                                    ￥${shoppingCart.goodsprice}
                                                </p>

                                                <p class="layui-ptop pbottom" onclick="cartRemove(1)">
                                                    删除
                                                </p>
                                            </div>
                                        </div>
                                    </dd>
                                </c:forEach>
                            </c:if>
                            <c:if test="${empty sessionScope.shoppingCarts}">
                                <dd><a href="">购物车为空...</a></dd>
                            </c:if>
                        </c:if>
                        <c:if test="${empty sessionScope.indexuser}">
                            <dd><a href="${path}/login/index" style="display: inline">请登录后查看购物车</a></dd>
                        </c:if>
                    </dl>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="layui-top-nav logo-top-nav">
    <div class="layui-main">
        <a class="logo" href="${path}/goods/showIndex"><img src="${path}/img/logo.png"></a>
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
                <input type="text" name="" placeholder="请输入搜索内容..." class="layui-input" autocomplete="on" id="keyword" <c:if test="${! empty keyword}">value="${keyword}"</c:if>>
            </div>
            <button class="layui-btn layui-btn-primary" onclick="search();">
                <i class="layui-icon layui-icon-search"></i>
            </button>
        </div>
    </div>
</div>
<script>
    function search() {
        if ($("#keyword").val()==""){
            window.location.href = "${path}/goods/searchInfoGoods"
        }else {
            window.location.href = "${path}/search/search?keyword=" + $("#keyword").val();
        }
    }
</script>