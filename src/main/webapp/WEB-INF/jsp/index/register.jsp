<%@ include file="/WEB-INF/inc/taglibs.jsp" %>
<%--
  Created by IntelliJ IDEA.
  User: Firstmetcs
  Date: 2018/6/8/0008
  Time: 16:21
  To change this template use File | Settings | File Templates.
--%>
<%--注册页面--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/inc/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<title>RCE账号注册</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="${path}/layui/css/layui.css">
	<link rel="stylesheet" type="text/css" href="${path}/css/global.css">
	<link rel="stylesheet" type="text/css" href="${path}/css/slide.css">
	<link rel="stylesheet" type="text/css" href="${path}/css/login.css">

	<script src="${path}/js/jquery-3.3.1.min.js"></script>

	<script type="text/javascript">
        document.onkeydown=function(e){
            var keycode=document.all?event.keyCode:e.which;
            if(keycode==13)
                submitzhuc();
        };

        function isusername(){
            var flag=false;
            var useremail=$.trim($("#useremail").val());
            var reg=new RegExp(/^([a-zA-Z0-9._-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/);
            // alert(useremail);
            $("#useremail").val(useremail);
            if(useremail.length<6){
                $("#emailspan").html("Email不能小于6位");
                $("#emailspan").show();
                return flag;
            }else if (!reg.test(useremail)){
                $("#emailspan").html("Email格式不正确");
                $("#emailspan").show();
                return flag;
            }
            else{
                $("#emailspan").hide();
            }
            var param={};
            param.useremail=useremail;
            $.ajax({
                type: "POST",
                url: "${path}/register/exist",
                data: param,
                dataType:"json",
                async: false,
                success: function(data){
                    // alert(data);
                    if(data==0){
                        $("#emailspan").html("Email重复");
                        $("#emailspan").show();
                        flag=false;
                    }else{
                        $("#emailspan").html("ok");
                        $("#emailspan").show();
                        flag=true;
                    }
                },
                error:function(data){
                    //失败
                    alert(data);
                }
            });
            return flag;
        }

        function ispwd(){
            var pwd=$.trim($("#pwd").val());
            $("#pwd").val(pwd);
            if(pwd.length<6){
                $("#pwdspan").html("密码长度不能小于6位");
                $("#pwdspan").show();
                return false;
            }else{
                $("#pwdspan").html("ok");
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
                $("#qpwdspan").html("ok");
                $("#qpwdspan").show();
                return true;
            }
        }

        function submitzhuc(){
            var f = false;
            if(isusername()&&ispwd()&&isqpwd()){
                var param={};
                param.loginpwd=$.trim($("#qpwd").val());
                param.useremail=$.trim($("#useremail").val());
                alert(param.useremail);
                $.ajax({
                    type: "POST",
                    url: "add",
                    data: param,
                    dataType:"json",
                    async: false,
                    success: function(data){
                        var flag=data.flag;
                        var msg=data.msg;
                        if(flag=="1"){
                            alert(msg);
                            f=true;
                        }else{
                            alert(msg);
                        }
                    }
                });
            }
            return f;
        }

	</script>
</head>
<body>
	<div class="register-box">
		<div class="register-container">
			<img src="${path}/img/logo.png">
			<h1>注册RCE账号</h1>
			<form class="layui-form form-register" action="">
				<div class="layui-form-item">
					<div class="layui-inline">
						<label class="layui-form-label">注册邮箱</label>
						<div class="layui-input-inline">
							<input type="text" name="useremail" id="useremail"  size="25" maxlength="25"  class="layui-input" onblur="isusername();"/><i id="emailspan"><font color="red">example@firstmetcs.com</font></i>
						</div>
					</div>
				</div>
				<div class="layui-form-item">
					<div class="layui-inline">
						<label class="layui-form-label">密码</label>
						<div class="layui-input-inline">
							<input type="password" id="pwd"  size="25" maxlength="15"  class="layui-input" onblur="ispwd();"/><i id="pwdspan"><font color="red">格式：Example123#$@</font></i>
						</div>
					</div>
				</div>
				<div class="layui-form-item">
					<div class="layui-inline">
						<label class="layui-form-label">确认密码</label>
						<div class="layui-input-inline">
							<input type="password" name="loginpwd" id="qpwd"  size="25" maxlength="15" class="layui-input" onblur="isqpwd();" /><i id="qpwdspan"><font color="red">请再次输入密码</font></i>
						</div>
					</div>
				</div>
				<div id="slideBar"></div>
				<br><br><br>
				<div class="layui-form-item">
					<div class="layui-inline">
						<div class="layui-input-inline">
							<input class="layui-btn register-btn" type="button" id="zhucbut" value="立即注册" disabled="true" onclick="register();"/>
						</div>
					</div>
				</div>
			</form>
			<form class="layui-form form-vertify" action="">
				<br><br>
				<h3>我们向您的邮箱<span class="vertify-email">noreply@firstmetcs.com</span>发送了连接，请打开邮箱进行验证</h3>
				<br><br><br>
				<div class="layui-form-item">
					<div class="layui-inline">
						<div class="layui-input-inline">
							<a href="${path}/login/index">
								<input type="button" class="layui-btn" value="去登录">
							</a>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<script type="text/javascript" src="${path}/layui/layui.js"></script>
	<script type="text/javascript" src="${path}/js/slide.js"></script>
	<script type="text/javascript">
        var dataList = ["0","1"];
        var options = {
            dataList: dataList,
            success:function(){
                console.log("show");
                $(".register-btn").attr("disabled",false);
                $(".register-btn").css("opacity","1");
            },
            fail: function(){
                console.log("fail");
            }
        };
        SliderBar("slideBar", options);
        function register()
        {
            if (submitzhuc()) {
                $(".form-register").css("display","none");
                $(".form-vertify").css("display","inline-block");
                var email = $("#useremail").val();
                console.log(email);
                $(".vertify-email").text(email);
			}

        }
    </script>
</body>
</html>