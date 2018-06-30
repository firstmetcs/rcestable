<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/6/28
  Time: 18:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/rcestore/order/submit" method="post">
    <c:if test="${!empty addressList}">
        <c:forEach var="address" items="${addressList}">
            <input type="radio" value="${address.addressid}" name="addressid">${address.addressid}${address.province}${address.city}${address.area}<br>
        </c:forEach>
    </c:if>
    <c:if test="${!empty sessionScope.shoppingCarts}">
        <c:forEach var="shoppingcart" items="${sessionScope.shoppingCarts}">
            <c:if test="${shoppingcart.ischeck==1}">
                ${shoppingcart.goodsname}&nbsp;&nbsp;${shoppingcart.goodsversion}&nbsp;&nbsp;${shoppingcart.goodscount}&nbsp;&nbsp;${shoppingcart.termprice}<br>
            </c:if>
        </c:forEach>
        ${sessionScope.total}<br>
    </c:if>
    支付方式：<br>
    <input type="radio" name="paytype" value="1">支付宝<br>
    <input type="radio" name="paytype" value="2">微信<br>
    配送方式：<<br>
    <input type="radio" name="delivertype" value="1">快递（免邮）<br>
    <input type="radio" name="delivertype" value="2">顺丰<br>
    配送时间：<<br>
    <input type="radio" name="deliverytime" value="1">周内<br>
    <input type="radio" name="deliverytime" value="2">全周<br>
    <input type="radio" name="deliverytime" value="3">周末、节假日<br>
    发票抬头：<input type="text" name="invoiceclient"><br>
    订单备注：<input type="text" name="orderremarks"><br>
    <input type="submit" value="提交订单">
</form>
</body>
</html>
