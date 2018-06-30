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
    <script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
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
                window.location.href='/rcestore/forget/repass?loginname='+$.trim($("#name").val());
                alert("已发送重置密码邮件，请查看邮箱！");
            }
        }

    </script>
</head>
<body>
<form method="post" id="form" action="">
    <table>
        <tbody>
        <tr>
            <th><span>*</span><label for="ZODRdi">用户名:</label></th>
            <td><input type="text" name="loginname" id="name"
                       class="px" size="25" maxlength="25" onblur="isusername();" /></td>
            <td class="tipcol" colspan="3"><i id="namespan"></i></td>
        </tr>

        <tr>
            <th><span></span><label for="ZODRdi">邮箱:</label></th>
            <td><input type="text" name="email" id="email"
                       class="px" size="25" maxlength="20" /></td>
            <td class="tipcol" colspan="3"><i id="emailspan"></i></td>
        </tr>

        </tbody>
    </table>


    <span id="reginfo_a_btn"> <em>&nbsp;</em> <input
            class="btn" type="button" id="zhucbut" value="重置密码"
            onclick="submitzhuc();" />
								</span>

</form>
</body>
</html>
