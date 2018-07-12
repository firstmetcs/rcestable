<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Firstmetcs
  Date: 2018/7/12/0012
  Time: 21:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
${totalResult}<br><hr>
<c:if test="${!empty items}">
    <c:forEach items="${items}" var="item">
        ${item.goodsName}<br>
        ${item.goodsAttrDesc}<br><br>
    </c:forEach>
</c:if>
</body>
</html>
