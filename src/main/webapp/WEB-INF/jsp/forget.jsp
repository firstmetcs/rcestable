<%@ include file="/WEB-INF/inc/taglibs.jsp" %>
<%--
  Created by IntelliJ IDEA.
  User: Firstmetcs
  Date: 2018/6/13/0013
  Time: 11:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>forget</title>
    <link rel="stylesheet" type="text/css" href="${path}/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="${path}/css/global.css">
    <link rel="stylesheet" type="text/css" href="${path}/css/login.css">
    <script src="${path}/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript">
        document.onkeydown = function(e) {
            var keycode = document.all ? event.keyCode : e.which;
            if (keycode == 13)
                submitzhuc();
        };
        function isusername() {
            var flag = false;
            var name = $.trim($("#name").val());
            $("#name").val(name);
            if (name.length < 6) {
                $("#namespan").html("用户长度不能小于6位");
                $("#namespan").show();
                return flag;
            } else {
                $("#namespan").hide();
            }
        }


        function checkemail() {
            var flag = false;
            var name = $.trim($("#name").val());
            $("#name").val(name);
            var param = {};
            param.loginname = name;
            param.useremail = $.trim($("#email").val())
            $.ajax({
                type : "POST",
                url : "/rcestore/forget/checkemail",
                data : param,
                dataType : "json",
                async : false,
                success : function(data) {
                    if (data == 0) {
                        $("#namespan").html("ok");
                        $("#namespan").show();
                        flag = true;

                    }
                    else if (data == 2){
                        $("#namespan").html("邮箱未验证，请联系管理员！");
                        $("#namespan").show();
                        flag = false;
                    }
                    else {
                        $("#namespan").html("用户名和邮箱不一致，请核对！");
                        $("#namespan").show();
                        flag = false;
                    }
                }
            });
            return flag;
        }

        function submitzhuc() {
            if (checkemail()) {
                var param = {};
                param.loginname = $.trim($("#name").val());
                $.ajax({
                    type : "POST",
                    url : "${path}/forget/repass",
                    data : param,
                    dataType : "json",
                    async : false,
                    success : function(data) {
                        findPassword();
                    }
                });
            }
        }

    </script>
</head>
<body>
<div class="register-box">
    <div class="register-container">
        <img src="${path}/img/logo.png">
        <h1>RCE 找回密码</h1>
        <form class="layui-form form-find-password" action="">
            <br><br><br>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">用户名</label>
                    <div class="layui-input-inline">
                        <input type="text" id="name" name="name" class="layui-input">
                    </div>
                </div>
            </div>
            <i id="namespan"></i>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">注册邮箱</label>
                    <div class="layui-input-inline">
                        <input type="text" id="email" name="email" class="layui-input">
                    </div>
                </div>
            </div>
            <i id="emailspan"></i>
            <span class="error-hint">*输入正确的邮箱<br><br></span>
            <br>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <div class="layui-input-inline">
                        <input type="button" class="layui-btn find-password-btn" value="找回密码" onclick="submitzhuc();">
                    </div>
                </div>
            </div>
        </form>
        <form class="layui-form form-vertify" action="">
            <br><br><br><br>
            <h3>我们向您的邮箱<span class="vertify-email">example@firstmetcs.com</span>发送了验证码，请登录邮箱认证</h3>
            <br><br><br>
            <a class="layui-btn find-password-btn" href="${path}/login/index" onclick="submitzhuc();">登陆</a>
            <br>

        </form>
    </div>
</div>
<script type="text/javascript" src="${path}/layui/layui.js"></script>
<script type="text/javascript" src="${path}/js/slide.js"></script>
<script type="text/javascript">
    var int;
    function findPassword()
    {
        $(".form-find-password").css("display","none");
        $(".form-vertify").fadeIn(500);
        var email = $("#email").val();
        console.log(email);
        $(".vertify-email").text(email);
        int = setInterval("clock()",1000);
        $(".resentcode").attr("diabled","true");
        $(".resentcode").css("opacity","0.5");
    }

</script>

</body>
</html>
