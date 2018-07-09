<%--
  Created by IntelliJ IDEA.
  User: Firstmetcs
  Date: 2018/6/12/0012
  Time: 10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<title>RCE商城登陆</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="/rcestore/layui/css/layui.css">
	<link rel="stylesheet" type="text/css" href="/rcestore/css/global.css">
	<link rel="stylesheet" type="text/css" href="/rcestore/css/slide.css">
	<link rel="stylesheet" type="text/css" href="/rcestore/css/login.css">

	<script src="/rcestore/js/jquery-3.3.1.min.js"></script>

	<script type="text/javascript">

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
                param.loginpwd = pwd;
                param.isremember = $("#isremember").is(':checked');
                param.pathlocation = '${pathlocation}';
                $.ajax({
                    type: "POST",
                    url: "/rcestore/login/login",
                    data: param,
                    dataType: "json",
                    async: false,
                    success: function (data) {
                        var flag = data.flag;
                        var pathlocation = data.pathlocation;
                        if (flag == 99) {
                            $("#namespan").html("用户名错误");
                            $("#namespan").show();
                        } else if (flag == 88) {
                            $("#pwdspan").html("密码错误");
                            $("#pwdspan").show();
                            $("#namespan").hide();
                        } else if (flag == 77) {
                            $("#yanzhengmaspan").html("验证码错误");
                            $("#yanzhengmaspan").show();
                            $("#namespan").hide();
                            $("#pwdspan").hide();
                        } else if (flag == 66) {
                            window.location.href = "/rcestore/verify/index?pathlocation=" + pathlocation;
                        } else if (flag == 0) {
                            $("#namespan").html("请激活邮箱");
                            $("#namespan").show();
                            $("#pwdspan").hide();
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
					<a href="/rcestore/index.html">
					<img src="/rcestore/img/logo.png">
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
				<img class="bg-img" src="/rcestore/img/xiaomimix.jpg">
			</a>
			<div class="login-container">
				<div class="login-body-title">
					<span>账号登录</span>
				</div>
				<div class="login-body-content">
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
							<a href="register.jsp">立即注册</a>
							|
							<a href="/rcestore/forget/index">忘记密码</a>
						</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="/rcestore/js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="/rcestore/layui/layui.js"></script>
	<script type="text/javascript" src="/rcestore/js/slide.js"></script>
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