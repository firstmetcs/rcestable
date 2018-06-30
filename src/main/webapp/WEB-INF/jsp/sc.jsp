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
    <script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
    <script>
        function changeselect(id) {
            var cb=$("#"+id);
            var status=cb.is(':checked');
            var param={};
            param.shoppingcartid=id;
            if (status) {
                param.ischeck=1;
            }else{
                param.ischeck=0;
            }
            var sum = 0;
            $("span[name='termprice']").each(function() {
                if ($(this).siblings("input[name='hobby']").is(':checked')) {
                    sum += $(this).text() * 1;
                }
            });
            $("#total").html("¥"+sum.toFixed(2));
            $.ajax({
                type: "POST",
                url: "/rcestore/shoppingCart/change",
                data: param,
                dataType: "json",
                async: true,
                success: function(data){

                },
                error: function (data) {
                    alert(data.total);
                }
            });
        }


        function change(id) {
            var param={};
            param.shoppingcartid=id;
            param.goodscount=parseInt($("#"+id+"amount").val());
            $("#"+id+"amount").attr("value",param.goodscount);
            $("#"+id+"termprice").html((parseInt($("#"+id+"amount").val())*parseInt($("#"+id+"goodsprice").text())).toFixed(2));
            var sum = 0;
            $("span[name='termprice']").each(function() {
                if ($(this).siblings("input[name='hobby']").is(':checked')) {
                    sum += $(this).text() * 1;
                }
            });
            $("#total").html("¥"+sum.toFixed(2));
            $.ajax({
                type: "POST",
                url: "/rcestore/shoppingCart/change",
                data: param,
                dataType: "json",
                async: true,
                success: function(data){


                },
                error: function (data) {
                    alert("error:请刷新页面");
                }
            });
        }

        function add(id) {
            $("#"+id+"amount").attr("value",parseInt($("#"+id+"amount").val())+1);
            change(id);
        }
        function dec(id) {
            $("#"+id+"amount").attr("value",parseInt($("#"+id+"amount").val())-1);
            change(id);
        }

    </script>
</head>
<body>
<a href="/rcestore/index.jsp">主页</a><br>
<form action="" method="post">

    <c:if test="${!empty sessionScope.shoppingCarts}">
            <c:forEach var="shoppingCart" items="${sessionScope.shoppingCarts}">
                <div>
                <input type="checkbox" id="${shoppingCart.shoppingcartid}" name="hobby" value="1" <c:if test="${shoppingCart.ischeck==1}">checked="true"</c:if> onchange="changeselect(${shoppingCart.shoppingcartid})"/>${shoppingCart.goodsname}&nbsp;&nbsp;${shoppingCart.goodsversion}&nbsp;&nbsp;${shoppingCart.goodscolor}&nbsp;&nbsp;
                <span id="${shoppingCart.shoppingcartid}goodsprice">${shoppingCart.goodsprice}</span>
                <input type="button" value="<" onclick="dec(${shoppingCart.shoppingcartid})"><input type="text" value="${shoppingCart.goodscount}" id="${shoppingCart.shoppingcartid}amount" onblur="change(${shoppingCart.shoppingcartid})"><input type="button" value=">" onclick="add(${shoppingCart.shoppingcartid})"><span id="${shoppingCart.shoppingcartid}termprice" name="termprice">${shoppingCart.termprice}</span><br>
                </div>
            </c:forEach>
    </c:if>

    <span>总价：</span>
    <span>
        <em id="total">¥${sessionScope.total}</em>
    </span>

    <br />
    <a href="/rcestore/order/index">结算</a>
</form>
</body>
</html>
