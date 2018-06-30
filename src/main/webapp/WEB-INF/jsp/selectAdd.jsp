<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/6/22
  Time: 8:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
    <script type="text/javascript">
        /*加载省下拉选*/
        $(function () {
            var param = {};
            param.name = "test";
            $.ajax({
                type: "POST",
                data: param,
                dataType: "json",
                async: false,
                url: "/rcestore/city/getProvince",
                success: function (data) {
                    var city = data.city;
                    for (var i = 0; i < city.length; i++) {
                        $('#provinceid').append("<option value='" + city[i].id + "' >" + city[i].name + "</option>");
                    }
                },
                error: function () {
                    alert("加载省失败");
                }
            });
        });

        /*加载市下拉选*/
        function getCity() {
            var id = $("#provinceid").val();
            $("#cityid").empty();
            $("#areaid").empty();
            var param = {};
            param.id = id;
            $.ajax({
                type: "POST",
                data: param,
                dataType: "json",
                async: false,
                url: "/rcestore/city/getCity",
                success: function (data) {
                    var city = data.city;
                    $('#cityid').append("<option value='' selected='selected' >" + '请选择' + "</option>");
                    $('#areaid').append("<option value='' selected='selected' >" + '请选择' + "</option>");
                    for (var i = 0; i < city.length; i++) {
                        $('#cityid').append("<option value='" + city[i].id + "' >" + city[i].name + "</option>");
                    }
                },
                error: function () {
                    alert("加载市失败");
                }
            });
        }
        ;

        /*加载地区下拉选*/
        function getArea() {
            var id = $("#cityid").val();
            $("#areaid").empty();
            var param = {};
            param.id = id;
            $.ajax({
                type: "POST",
                data: param,
                dataType: "json",
                async: false,
                url: "/rcestore/city/getArea",
                success: function (data) {
                    var city = data.city;
                    $('#areaid').append("<option value='' selected='selected' >" + '请选择' + "</option>");
                    for (var i = 0; i < city.length; i++) {
                        $('#areaid').append("<option value='" + city[i].id + "' >" + city[i].name + "</option>");
                    }
                },
                error: function () {
                    alert("加载区失败");
                }
            });
        }
    </script>
</head>
<body>
<form action="/rcestore/address/add" method="post">
    <tr>
        <td>所在地:</td>
        <td>
            <select class="select" id="provinceid" name="provinceid" onchange="getCity()">
                <option value="">请选择</option>
            </select>

            <select class="select" id="cityid" name="cityid" onchange="getArea()">
                <option value="">请选择</option>
            </select>

            <select class="select" id="areaid" name="areaid">
                <option value="">请选择</option>
            </select>
        </td>
    </tr>
    <input id="address" name="address" type="text">
    <br>
    姓名：<input type="text" id="username" name="username">
    <br>
    手机：<input type="text" name="userphone" id="userphone">
    <br>
    电话：<input type="text" name="usertel" id="usertel">
    <br>
    邮编：<input type="text" name="postcode" id="postcode">
    <br>
    <input type="submit" value="提交">
</form>
</body>
</html>
