<%@ include file="/WEB-INF/inc/taglibs.jsp" %>
<%--
  Created by IntelliJ IDEA.
  User: LX
  Date: 2018/6/30
  Time: 11:17
  To change this template use File | Settings | File Templates.
--%>
<%--退货--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
     <input type="submit" value="提交申请"/>
 </form>

</body>
</html>
