<%--
  Created by IntelliJ IDEA.
  User: Firstmetcs
  Date: 2018/6/12/0012
  Time: 10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
    <script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
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
<form method="post" id="form" action="">
    <table>
        <tbody>
        <tr>
            <th><span class="rq">*</span><label for="ZODRdi">用户名:</label></th>
            <td><input type="text" name="name" id="name" size="25" maxlength="25" onblur="isusername();"/></td>
            <td class="tipcol" colspan="3">
                <i id="namespan"></i>
            </td>
        </tr>
        <tr>
            <th><span class="rq">*</span><label for="ZODRdi">密码:</label></th>
            <td><input type="password" id="pwd" size="25" maxlength="15" onblur="ispwd();"/></td>
            <td class="tipcol" colspan="3">
                <i id="pwdspan"></i>
            </td>
        </tr>
        <tr style="padding-top: 0px;height: 10px;">
            <th></th>
            <td>
                <input type="checkbox" name="isremember" id="isremember"/>
                记住我的登录状态
            </td>
            <td class="tipcol" colspan="3">
            </td>
        </tr>
        </tbody>
    </table>
    <div class="rfmrig mbw">
        <span id="reginfo_a_btn"> <em>&nbsp;</em> <input class="btn" id="loginbtn" type="button" value="登录"
                                                         onclick="submitlogin();"/> </span>
        <a href="/rcestore/forget/index">忘记密码</a>
    </div>
</form>
</body>
</html>
