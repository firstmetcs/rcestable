<%--
  Created by IntelliJ IDEA.
  User: Zhangxq
  Date: 2016/7/16
  Time: 0:07
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
<a href="/rcestore/index.jsp">主页</a><br>
<a href="/rcestore/city/selectAdd">添加收货地址</a><br>
<c:if test="${!empty addressList}">
    <table id="address" border="all" cellspacing="0">
        <c:forEach var="address" items="${addressList}">
            <tr>
                <td>用户：${address.userid} &nbsp;&nbsp;</td>
                <td>地址：${address.province} &nbsp;&nbsp;${address.city} &nbsp;&nbsp;${address.area}
                    &nbsp;&nbsp;${address.address}&nbsp;&nbsp;
                </td>
                <td>手机：${address.userphone}&nbsp;&nbsp;</td>
                <td>是否默认：
                    <c:if test="${address.isdefault==0}">否</c:if><c:if test="${address.isdefault==1}">是</c:if></td>
            </tr>
        </c:forEach>
    </table>
</c:if>
</body>
</html>
