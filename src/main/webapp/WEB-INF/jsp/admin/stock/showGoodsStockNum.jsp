<%--
  Created by IntelliJ IDEA.
  User: LX
  Date: 2018/7/4
  Time: 12:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
   <c:forEach items="${goodsAttrList}" var="goodsAttr">
    <tr>
        <td>${goodsAttr.get("goodsAttributes").getGoodsAttrId()}</td>
        <td>${goodsAttr.get("goodsAttributes").getGoodsStock()}</td>
        <td>${goodsAttr.get("goodsName")}</td></br>

    </tr>
 </c:forEach>
</body>
</html>
