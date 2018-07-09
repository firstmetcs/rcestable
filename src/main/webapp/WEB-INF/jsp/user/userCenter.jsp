<%--
  Created by IntelliJ IDEA.
  User: LX
  Date: 2018/7/3
  Time: 10:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <title>Title</title>
</head>
<body>
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>

<script>
    $(document).ready(function () {

        $("#send").click(function () {
            $("#send").attr("disabled", "disabled");

            var id= $("#sendId").val();
            var wuliu=$("#wuliu").val();

            $.ajax({
                type: "post",
                url: "showWuliuInfo",
                data: {"id": id, "wuliu":wuliu}
            });
        });
    });
</script>

  <button id="send">已发货</button>
  <input type="text" id="wuliu"/>
  <input type="text" id="sendId" />

</body>
</html>
