<%--
  Created by IntelliJ IDEA.
  User: LX
  Date: 2018/7/2
  Time: 17:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/inc/taglibs.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script>
    $(document).ready(function () {

        $(".pass").click(function () {
            $(".pass").attr("disabled", "disabled");
            $(".pass").text("已处理");
             var step= $(".pass").attr("id");

            $.ajax({
                type: "post",
                url: "updateReturnStatus",
                data: {"data": 1, "step":step}
            });

        });
    });
    /*var json={"edit":[{"bh":"11111","mc":"11111","dbms":"ORACLE9i","dwmmc":"","addr":"","username":"","password":"","rm_sz":"ck","nyr_sz":"","id":"-1"},
                       {"bh":"121","mc":"12","dbms":"ORACLE9i","dwmmc":"12","addr":"12","username":"12","password":"12","rm_sz":"ck","nyr_sz":"2011-09-06","id":"13"}],
                   "del":["12"]};*/
    /* $.ajax({
          type:"post",
          url:"returnGoods", $(".pass").attr("id")
          data :{"data":JSON.stringify(json)},
          dataType : "json",
         success:function(data){
              $("#uu").append("<input type='text'name='orderId'value='12121212'/>");
          },
          error:function(data){
              alert("网络错误,保存失败");
          }
      });*/
</script>

<table>
    <tr>
        <td>退货单编号</td>
        <td>订单号</td>
        <td>用户编号</td>
        <td>商品编号</td>
        <td>申请状态</td>
        <td>相关操作</td>
    </tr>

    <c:forEach items="${goodsReturnList}" var="goodsReturn" varStatus="s">
        <tr>
            <td>${goodsReturn.get("goodsReturn").goodsReturnId}</td>
            <td>${goodsReturn.get("goodsReturn").orderId}</td>
            <td>${goodsReturn.get("goodsReturn").userId}</td>
            <td>${goodsReturn.get("goodsReturn").goodsAttrId}</td>
            <td class="status" id="${s}">${goodsReturn.get("status")}</td>
            <td>

                <button id="${s.index}" class="pass" style="width: 70px ;height: 30px">通过</button>
            </td>
        </tr><c:out value="${s.index}"></c:out>
    </c:forEach>
</table>

</body>
</html>

