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
    <script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
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
                $("#qpwdspan").html('<p class="duihao"></p>');
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
<form method="post" id="form" action="${path}/zhuc/add.do">
    <table>
        <tbody>
        <tr>
            <th><span class="rq">*</span><label for="ZODRdi">用户名:</label></th>
            <td>${sessionScope.repassuser.loginname}</td>
            <td class="tipcol" colspan="3">
                <i id="namespan" class="p_tip"></i>
            </td>
        </tr>
        <tr>
            <th><span class="rq">*</span><label for="ZODRdi">密码:</label></th>
            <td><input type="password" id="pwd"  size="25" maxlength="15"  onblur="ispwd();"/></td>
            <td class="tipcol" colspan="3">
                <i id="pwdspan" class="p_tip"></i>
            </td>
        </tr>
        <tr>
            <th><span class="rq">*</span><label for="ZODRdi">确认密码:</label></th>
            <td><input type="password" name="pwd" id="qpwd"  size="25" maxlength="15" onblur="isqpwd();" /></td>
            <td class="tipcol" colspan="3">
                <i id="qpwdspan" class="p_tip"></i>
            </td>
        </tr>
        </tbody>
    </table>
    <span id="reginfo_a_btn"> <em>&nbsp;</em> <input class="btn"  type="button" id="zhucbut" value="重置密码" onclick="submitzhuc();"/> </span>
</form>
</body>
</html>
