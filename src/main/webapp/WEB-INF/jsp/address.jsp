<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/6/22
  Time: 8:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${!empty cityList}">
    <c:forEach var="city" items="${cityList}">
        id：${city.id} &nbsp;&nbsp;name：${city.name} &nbsp;&nbsp;pid：${city.pid} &nbsp;&nbsp;<br>
    </c:forEach>
</c:if>
</body>
</html>
