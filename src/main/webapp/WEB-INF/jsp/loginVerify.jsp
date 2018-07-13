<%@ include file="/WEB-INF/inc/taglibs.jsp" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/2
  Time: 18:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="${path}/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="${path}/css/global.css">
    <link rel="stylesheet" type="text/css" href="${path}/css/login.css">
    <script src="${path}/js/jquery-3.3.1.min.js"></script>
    <script>
        function isverifyCode() {
            var flag = false;
            var verifyCode = $.trim($("#verifyCode").val());
            $("#verifyCode").val(verifyCode);
            if (verifyCode.length < 1) {
                $("#verifyCodespan").html("验证码不能为空");
                $("#verifyCodespan").show();
                return flag;
            } else {
                $("#verifyCodespan").hide();
            }
            var param = {};
            param.verifyCode = verifyCode;
            $.ajax({
                type: "POST",
                url: "/rcestore/verify/isVerifyCode",
                data: param,
                dataType: "json",
                async: false,
                success: function (data) {
                    if (data == "0") {
                        $("#verifyCodespan").html("验证码错误");
                        $("#verifyCodespan").show();
                        flag = false;
                    } else {
                        $("#verifyCodespan").html("验证通过");
                        $("#verifyCodespan").show();
                        flag = true;
                    }
                }
            });
            return flag;
        }

        function submit() {
            if (isverifyCode()) {
                window.location.href = "/rcestore/login/success?pathlocation=${pathlocation}";
            }
        }

        function x() {
            alert("fuck");
        }
    </script>
</head>
<body>
<div class="register-box">
    <div class="register-container">
        <img src="${path}/img/logo.png">
        <h1>RCE 找回密码</h1>
        <br><br><br>
        <center>
            <h5>系统检测到您的登陆地点为：${sessionScope.loginaddress}<br>
                不在常用地点登录，请进行验证</h5>
            <h5>验证码已发送至您的邮箱</h5>
        </center>
        <br><br><br>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">验证码</label>
                <div class="layui-input-inline">
                    <input type="text" id="verifyCode" class="layui-input" onblur="isverifyCode();">
                </div>
            </div>
        </div>
        <i id="verifyCodespan"></i><br>
        <br>
        <div class="layui-form-item">
            <div class="layui-inline">
                <div class="layui-input-inline">
                    <button type="button" class="layui-btn find-password-btn" onclick="submit();">提交</button>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="${path}/layui/layui.js"></script>
<script type="text/javascript" src="${path}/js/slide.js"></script>


</body>
</html>
