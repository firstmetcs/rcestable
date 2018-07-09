<%--
  Created by IntelliJ IDEA.
  User: LX
  Date: 2018/6/30
  Time: 11:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

</head>

<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script>
    $(document).ready(function () {

        /*     $(".return").click(function () {
                $(".form").attr("action","returnGoods")
             });

             $(".change").click(function () {
                 $(".form").attr("action","changeGoods")
             });

             $(".fix").click(function () {
                 $(".form").attr("action","repairGoods")
             });*/
        $(".return").click(function () {
            $.ajax({
                type: "post",
                url: "http://localhost:8080/rcestore/afterSale/returnGoods",
                data: {"data": 1},
                success: function (data) {
                    window.location.href = "http://localhost:8080/rcestore/afterSale/addGoodsReturn";
                },
                error: function (data) {.333
                    alert("网络错误,保存失败");
                }
            });
        });
    })
    /*var json={"edit":[{"bh":"11111","mc":"11111","dbms":"ORACLE9i","dwmmc":"","addr":"","username":"","password":"","rm_sz":"ck","nyr_sz":"","id":"-1"},
                       {"bh":"121","mc":"12","dbms":"ORACLE9i","dwmmc":"12","addr":"12","username":"12","password":"12","rm_sz":"ck","nyr_sz":"2011-09-06","id":"13"}],
                   "del":["12"]};*/
    /* $.ajax({
          type:"post",
          url:"returnGoods",
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
<body>
<%--<form mathod="post" action="" class="form">--%>
<input id="userId" type="text" name="userId" value="1"/>
<input id="goodsId" type="text" name="goodsAttrId" value="2">
<input id="orderId" type="text" name="orderId" value="3"/>

<%--<input type="submit" class="return" value="退货"></input>--%>
<%--<input type="submit" class="change" value="换货"></input>--%>
<%--<input type="submit" class="fix" value="维修"></input>--%>

<%--</form>--%>
</body>
</html>
