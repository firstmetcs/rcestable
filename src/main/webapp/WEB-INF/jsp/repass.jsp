<%@ include file="/WEB-INF/inc/taglibs.jsp" %>
<%--
  Created by IntelliJ IDEA.
  User: Firstmetcs
  Date: 2018/6/13/0013
  Time: 13:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>repass</title>
    <link rel="stylesheet" type="text/css" href="${path}/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="${path}/css/global.css">
    <link rel="stylesheet" type="text/css" href="${path}/css/login.css">
    <script src="${path}/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript">
        document.onkeydown=function(e){
            var keycode=document.all?event.keyCode:e.which;
            if(keycode==13)
                submitzhuc();
        };

        function ispwd(){
            var pwd=$.trim($("#pwd").val());
            $("#pwd").val(pwd);
            if(pwd.length<6){
                $("#pwdspan").html("密码长度不能小于6位");
                $("#pwdspan").show();
                return false;
            }else{
                $("#pwdspan").html('<p class="duihao"></p>');
                $("#pwdspan").show();
                return true;
            }
        }

        function isqpwd(){
            var pwd=$.trim($("#pwd").val());
            var qpwd=$.trim($("#qpwd").val());
            if(pwd!=qpwd){
                $("#qpwdspan").html("两次密码不一致");
                $("#qpwdspan").show();
                return false;
            }else{
                $("#qpwdspan").html('ok');
                $("#qpwdspan").show();
                return true;
            }
        }

        function submitzhuc(){
            if(ispwd()&&isqpwd()){
                var param={};
                param.loginpwd=$.trim($("#qpwd").val());
                $.ajax({
                    type: "POST",
                    url: "/rcestore/forget/setpass",
                    data: param,
                    dataType:"json",
                    async: false,
                    success: function(data){
                        var flag=data.flag;
                        var msg=data.msg;
                        if(flag=="1"){
                            alert(msg);
                            window.location.href='/rcestore/login/index';
                        }else{
                            alert(msg);
                        }
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
        <h1>RCE 重置密码</h1>
        <form class="layui-form" action="">
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">用户名</label>
                    <div class="layui-input-inline">
                        <input type="text" class="layui-input" size="25" maxlength="15" value="${sessionScope.repassuser.loginname}" disabled/>
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">新密码</label>
                    <div class="layui-input-inline">
                        <input type="password" id="pwd" class="layui-input" size="25" maxlength="15"  onblur="ispwd();"/>
                    </div>
                </div>
            </div>
            <i id="pwdspan" class="p_tip"></i><br><br>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">确认密码</label>
                    <div class="layui-input-inline">
                        <input type="password" name="pwd" id="qpwd"  class="layui-input" size="25" maxlength="15" onblur="isqpwd();" />
                    </div>
                </div>
            </div>
            <i id="qpwdspan" class="p_tip"></i><br>
            <br>

            <div class="layui-form-item">
                <div class="layui-inline">
                    <div class="layui-input-inline">
                        <a href="login.html">
                            <input type="button" class="layui-btn" value="重置密码"  onclick="submitzhuc();">
                        </a>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<script src="${path}/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="${path}/layui/layui.js"></script>
<script type="text/javascript" src="${path}/js/slide.js"></script>

</body>
</html>
