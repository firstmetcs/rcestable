<%--
  Created by IntelliJ IDEA.
  User: LX
  Date: 2018/7/4
  Time: 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${settleList}" var="settle" varStatus="s">
    <tr>
        <td>${settle.get("goodsType")}</td>
        <td>${settle.get("sum(settleNum)")}</td>

    </tr>
</c:forEach>
</body>
</html>
