<%@ include file="/WEB-INF/inc/taglibs.jsp" %>
<%--
  Created by IntelliJ IDEA.
  User: LX
  Date: 2018/7/3
  Time: 11:20
  To change this template use File | Settings | File Templates.
--%>
<%--换货信息--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="addGoodsChange" method="post" >
    <input type="text" name="orderId" value="${orderId}"  readonly = "readonly"/><br>
    <input type="text" name="goodsAttrId" value="${goodsAttrId}"readonly = "readonly"/><br>
    <input type="text" name="userId" value="${userId}" readonly = "readonly"/><br>
    <input type="text" name="info"/><br>
    <input type="submit" value="提交换货申请"/>
</form>
</body>
</html>
