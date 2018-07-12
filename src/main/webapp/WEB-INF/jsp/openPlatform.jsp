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
    <link rel="stylesheet" type="text/css" href="${path}/css/open-platform.css">
</head>
<body>

<%@ include file="/WEB-INF/inc/top.jsp"%>
<!-- 主题内容 -->
<div class="layui-main">
    <div class="open-platform-wrapper">
        <img src="${path}/icon/open-platform/open-platform.png" alt="开放平台" width="100%" height="40%">
        <div class="open-platform-title">
            RCE开放平台
        </div>
        <div align="center" class="open-platform-main">
            <fieldset class="layui-elem-field">
                <legend>我们支持</legend>
                <div class="layui-field-box">
                    <table>
                        <tbody>
                        <tr>
                            <td>
                                <img src="${path}/icon/open-platform/img-post.jpg" alt="" width="200px" height="130px">
                                <div>
                                    <img src="${path}/icon/open-platform/post.png" alt="快递查询">
                                    <span>快递查询</span>
                                </div>
                            </td>
                            <td>
                                <img src="${path}/icon/open-platform/img-mail.jpg" alt="" width="200px" height="130px">
                                <div>
                                    <img src="${path}/icon/open-platform/mail.png" alt="邮件发送">
                                    <span>发送电子邮件</span>
                                </div>
                            </td>
                            <td>
                                <img src="${path}/icon/open-platform/img-print.jpg" alt="" width="200px" height="130px">
                                <div>
                                    <img src="${path}/icon/open-platform/order.png" alt="打印PDF">
                                    <span>打印PDF</span>
                                </div>
                            </td>
                            <td>
                                <img src="${path}/icon/open-platform/img-address.jpg" alt="" width="200px" height="130px">
                                <div>
                                    <img src="${path}/icon/open-platform/address.png" alt="定位">
                                    <span>根据IP定位地址</span>
                                </div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </fieldset>
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
