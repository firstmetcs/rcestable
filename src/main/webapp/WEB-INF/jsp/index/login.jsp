<%@ include file="/WEB-INF/inc/taglibs.jsp" %>
<%--
  Created by IntelliJ IDEA.
  User: Firstmetcs
  Date: 2018/6/12/0012
  Time: 10:48
  To change this template use File | Settings | File Templates.
--%>
<%--登陆页面--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/inc/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<title>RCE商城登陆</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="${path}/layui/css/layui.css">
	<link rel="stylesheet" type="text/css" href="${path}/css/global.css">
	<link rel="stylesheet" type="text/css" href="${path}/css/slide.css">
	<link rel="stylesheet" type="text/css" href="${path}/css/login.css">

	<script src="${path}/js/jquery-3.3.1.min.js"></script>

	<script type="text/javascript">
		//登陆检测页面
        function beforeLogin()
        {
            $(".content-1").hide();
            $(".content-2").show(500);
        }
        function isError()
        {
            $(".content-2").hide();
            $(".content-1").show(500);
        }


        document.onkeydown = function (e) {
            var keycode = document.all ? event.keyCode : e.which;
            if (keycode == 13) submitlogin();
        };

        function isusername() {
            var name = $.trim($("#name").val());
            $("#name").val(name);
            if (name == "") {
                $("#namespan").html("用户不能为空");
                $("#namespan").show();
                return false;
            } else {
                $("#namespan").hide();
                return true;
            }
        }

        function ispwd() {
            var pwd = $.trim($("#pwd").val());
            $("#pwd").val(pwd);
            if (pwd.length < 6) {
                $("#pwdspan").html("密码长度不能小于6位");
                $("#pwdspan").show();
                return false;
            } else {
                $("#pwdspan").hide();
                return true;
            }
        }


        function submitlogin() {
            if (isusername() && ispwd()) {
                var name = $.trim($("#name").val());
                var pwd = $.trim($("#pwd").val());
                var reg = new RegExp(/^([a-zA-Z0-9._-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/);
                var param = {};
                if (reg.test(name)) {
                    param.useremail = name
                } else {
                    param.loginname = name;
                }
                beforeLogin();
                param.loginpwd = pwd;
                param.isremember = $("#isremember").is(':checked');
                param.pathlocation = '${pathlocation}';
                $.ajax({
                    type: "POST",
                    url: "${path}/login/login",
                    data: param,
                    dataType: "json",
                    async: true,
                    success: function (data) {
                        var flag = data.flag;
                        var pathlocation = data.pathlocation;
                        if (flag == 99) {
                            $("#namespan").html("用户名错误");
                            $("#namespan").show();
                            isError();
                        } else if (flag == 88) {
                            $("#pwdspan").html("密码错误");
                            $("#pwdspan").show();
                            $("#namespan").hide();
                            isError();
                        } else if (flag == 77) {
                            $("#yanzhengmaspan").html("验证码错误");
                            $("#yanzhengmaspan").show();
                            $("#namespan").hide();
                            $("#pwdspan").hide();
                            isError();
                        } else if (flag == 66) {
                            window.location.href = "${path}/verify/index?pathlocation=" + pathlocation;
                        } else if (flag == 0) {
                            $("#namespan").html("请激活邮箱");
                            $("#namespan").show();
                            $("#pwdspan").hide();
                            isError();
                        } else if (flag == 1) {
                            window.location.href = pathlocation;
                        } else {
                            alert("系统错误");
                        }
                    }
                });
            }
        }

	</script>

</head>
<body>
	<div>
		<div class="login-header">
			<div class="layui-row">
				<div class="layui-col-md2">
					&nbsp;
				</div>
				<div class="layui-col-md8">
					<a href="${path}/index.html">
					<img src="${path}/img/logo.png">
					<span class="login-title">走在科技的前沿</span>
					</a>
				</div>
				<div class="layui-col-md2">
					&nbsp;
				</div>
			</div>
		</div>
		<div class="login-body">
			<a href="">
				<img class="bg-img" src="${path}/img/xiaomimix.jpg">
			</a>
			<div class="login-container">
				<div class="login-body-title">
					<span>账号登录</span>
				</div>
				<div class="login-body-content content-1">
					<input type="text" name="name" id="name" size="25" maxlength="25" onblur="isusername();" class="layui-input" placeholder="邮箱/RCE ID"/>
					<br>
					<input type="password" id="pwd" size="25" maxlength="15" onblur="ispwd();" class="layui-input" placeholder="密码"/>
					<br>
					<i id="namespan"></i><i id="pwdspan"></i><span class="error-hint">*请输入密码<br><br></span>

					<div id="slideBar"></div>
					<br><br><br>
					<input type="checkbox" name="isremember" id="isremember"/>
					<span>记住我的登录状态</span>
					<input disabled="true" class="layui-btn login-btn" type="button" name="" value="登录" id="loginbtn" onclick="submitlogin();">
					<div style="">
						<br>
						<span style="float: right;">
							<a href="${path}/register/index">立即注册</a>
							|
							<a href="${path}/forget/index">忘记密码</a>
						</span>
					</div>
				</div>
				<div class="login-body-content content-2" style="display: none; ;margin-top: 60px;font-size: 24px; text-align: center;">
					<center></center><img src="${path}/img/loding.gif" width="200px" height="120px"></center>
					<center>安全检测中...请稍等...</center>
				</div>

			</div>
		</div>
	</div>
	<script src="${path}/js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="${path}/layui/layui.js"></script>
	<script type="text/javascript" src="${path}/js/slide.js"></script>
	<script type="text/javascript">
		function test()
		{
			alert(1);
		}
        var dataList = ["0","1"];
        var options = {
            dataList: dataList,
            success:function(){  
                console.log("show"); 
                $(".login-btn").attr("disabled",false);
                $(".login-btn").css("opacity","1");
            },
            fail: function(){
                console.log("fail");  
            }
        };
        SliderBar("slideBar", options);
    </script>
</body>
</html>