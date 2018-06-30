<%--
  Created by IntelliJ IDEA.
  User: Firstmetcs
  Date: 2018/6/8/0008
  Time: 16:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>register</title>
    <script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
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
                url: "/rcestore/register/exist",
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
<%=request.getContextPath()%>
<form method="post" id="form" action="add">
    <table>
        <tbody>
        <tr>
            <th><span class="rq"></span><label for="ZODRdi">邮箱:</label></th>
            <td><input type="text" name="useremail" id="useremail"  size="25" maxlength="25"  onblur="isusername();"/></td>
            <td colspan="3">
                <i id="emailspan"></i>
            </td>
        </tr>
        <tr>
            <th><span class="rq">*</span><label for="ZODRdi">密码:</label></th>
            <td><input type="password" id="pwd"  size="25" maxlength="15"  onblur="ispwd();"/></td>
            <td colspan="3">
                <i id="pwdspan"></i>
            </td>
        </tr>
        <tr>
            <th><span class="rq">*</span><label for="ZODRdi">确认密码:</label></th>
            <td><input type="password" name="loginpwd" id="qpwd"  size="25" maxlength="15" onblur="isqpwd();" /></td>
            <td colspan="3">
                <i id="qpwdspan"></i>
            </td>
        </tr>
        </tbody>
    </table>
    <span id="reginfo_a_btn"> <em>&nbsp;</em> <input class="btn"  type="button" id="zhucbut" value="立即注册" onclick="submitzhuc();"/> </span>
</form>
</body>
</html>
