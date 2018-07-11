<%--
  Created by IntelliJ IDEA.
  User: LX
  Date: 2018/7/3
  Time: 10:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/inc/taglibs.jsp" %>
<html>

<head>
    <title>Title</title>
    <script src="${path}/js/jquery-3.3.1.min.js"></script>
</head>
<body>

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
