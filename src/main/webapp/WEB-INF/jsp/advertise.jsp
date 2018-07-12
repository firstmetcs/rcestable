<%@ include file="/WEB-INF/inc/taglibs.jsp" %>
<%--
  Created by IntelliJ IDEA.
  User: Firstmetcs
  Date: 2018/7/13/0013
  Time: 2:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>广告合作</title>
    <link rel="stylesheet" type="text/css" href="${path}/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="${path}/css/global.css">
    <link rel="stylesheet" type="text/css" href="${path}/css/headframe.css">
    <link rel="stylesheet" type="text/css" href="${path}/css/footframe.css">
    <link rel="stylesheet" type="text/css" href="${path}/css/index.css">
    <link rel="stylesheet" type="text/css" href="${path}/css/advertising-cooperation.css">
</head>
<body>

<%@ include file="/WEB-INF/inc/top.jsp"%>
<!-- 主题内容 -->
<div class="layui-main">
    <div class="advertising-wrapper">
        <img src="${path}/icon/cooperation.png" alt="广告合作" width="100%">
        <div class="advertising-font">
            联系我们：010-001-0001
        </div>
    </div>
</div>


<%@ include file="/WEB-INF/inc/footer.jsp"%>

<script type="text/javascript" src="${path}/layui/layui.js"></script>
<script type="text/javascript" src="${path}/js/global.js"></script>
<script type="text/javascript" src="${path}/js/headframe.js"></script>
<script type="text/javascript" src="${path}/js/index.js"></script>
<script src="${path}/js/jquery-3.3.1.min.js"></script>
</body>
</html>
