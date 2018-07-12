<%@ include file="/WEB-INF/inc/taglibs.jsp" %>
<%--
  Created by IntelliJ IDEA.
  User: Firstmetcs
  Date: 2018/7/13/0013
  Time: 5:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error</title>

    <link rel="stylesheet" type="text/css" href="${path}/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="${path}/css/notFound.css">
</head>
<body>
<div class="notFound-wrapper">
    <div class="notFound-main">
        <div class="notFound-logo">
            <img src="${path}/img/notfound.jpg" alt="">
            <!-- <i class="layui-icon" style="font-size: 200px;">&#xe61c;</i> -->
        </div>
        <div class="notFound-text">
            <div class="notFound-text-title">页面找不到了…</div>
            <div>错误信息：连接超时</div>
            <div class="notFound-text-button">
                <a type="" class="layui-btn" href="${path}/goods/showIndex">返回主页</a>
            </div>
        </div>
    </div>
</div>
</body>
</html>
