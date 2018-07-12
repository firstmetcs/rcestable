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
    <script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
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
            alert("test");
            alert(isverifyCode());
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
<h5>系统检测到您的登陆地点为：${sessionScope.loginaddress}<br>
    不在常用地点登录，请进行验证</h5>
<h5>验证码已发送至您的邮箱</h5>
<input type="text" id="verifyCode" onblur="isverifyCode();">
<button onclick="">重新发送</button>
<i id="verifyCodespan"></i><br>
<button onclick="submit();">提交</button>

</body>
</html>
