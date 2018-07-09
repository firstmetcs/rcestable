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
                <li class="layui-nav-item"><a href="">广告合作</a></li>
                <li class="layui-nav-item"><a href="">开放平台</a></li>
            </ul>
        </div>
        <div class="top-nav-nav-right">
            <ul class="layui-nav">
                <c:if test="${empty sessionScope.indexuser}">
                    <li id="login" class="layui-nav-item"><a href="/rcestore/login/login.html">登录</a></li>
                    <li id="register" class="layui-nav-item"><a href="">注册</a></li>
                </c:if>
                <c:if test="${!empty sessionScope.indexuser}">
                    <li id="username" class="layui-nav-item">
                        <a href="javascript:;"><img src="http://t.cn/RCzsdCq" class="layui-nav-img">${sessionScope.indexuser.username}</a>
                        <dl class="layui-nav-child">
                            <dd><a href="/rcestore/selfcenter/selfcenter.html">个人中心</a></dd>
                            <dd><a href="/rcestore/user/logout">退出登录</a></dd>
                        </dl>
                    </li>
                </c:if>
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
