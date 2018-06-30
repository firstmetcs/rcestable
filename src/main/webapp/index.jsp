<%--
  Created by IntelliJ IDEA.
  User: Firstmetcs
  Date: 2018/6/12/0012
  Time: 11:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<h2>Hello World!</h2>
${indexuser.getCookieid()}<br>
${indexuser.cookieid}<br>
<a href="/rcestore/user/index">个人信息</a><br>
<a href="/rcestore/city/selectAdd">添加收货地址</a><br>
<a href="/rcestore/address/showAddress">查看收货地址</a><br>
<a href="/rcestore/user/showUser">查看</a><br>
<a href="/rcestore/shoppingCart/showSC">购物车</a><br>
<a href="/rcestore/login/index">登陆</a><br>
<a href="/rcestore/register/index">注册</a>
<a href="/rcestore/user/logout">退出</a>
</body>
</html>
