<%--
  Created by IntelliJ IDEA.
  User: Firstmetcs
  Date: 2018/6/12/0012
  Time: 11:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>用户信息列表</title>
</head>
<body>
<%--<c:if test="${!empty userList}">--%>
<%--<c:forEach var="user" items="${userList}">--%>
<%--姓名：${user.userName} &nbsp;&nbsp;手机号：${user.userPhone} &nbsp;&nbsp;邮箱：${user.userEmail} &nbsp;&nbsp;<br>--%>
<%--</c:forEach>--%>
<%--</c:if>--%>
${indexuser.loginname}
<a href="/rcestore/user/logout">退出</a>
<a href="/rcestore/index.jsp">主页</a><br>
</body>
</html>
