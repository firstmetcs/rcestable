<%--
  Created by IntelliJ IDEA.
  User: LX
  Date: 2018/7/3
  Time: 17:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="addGoodsStock" method="post" >

    <c:forEach items="${goodsStockList}" var="goodsStock">
    <input type="text" name="goodsType" value="${goodsStock.goodsType}"/><br>
    <input type="text" name="goodsName" value="${goodsStock.goodsName}"/><br>
    <input type="text" name="goodsRom" value="${goodsStock.goodsRom}"/><br>
    <input type="text" name="goodsRam" value="${goodsStock.goodsRam}"/><br>
    <input type="text" name="goodsColor" value="${goodsStock.goodsColor}"/><br>
    <input type="text" name="goodsSize" value="${goodsStock.goodsSize}"/><br>
    <input type="text" name="goodsNum" value="${goodsStock.stockNum}"/><br>
    <input type="text" name="stockTime" value="${goodsStock.stockTime}"/><br>
    </c:forEach>

    <a href="addGoodsStock">添加</a> </td>
</form>
</body>
</html>
