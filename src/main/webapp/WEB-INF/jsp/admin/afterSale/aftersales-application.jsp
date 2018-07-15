<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/inc/taglibs.jsp" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>RCE后台管理</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="stylesheet" type="text/css" href="${path}/lib//layui/css/layui.css">
    <link rel="stylesheet" href="${path}/css/font.css">
    <link rel="stylesheet" href="${path}/css/xadmin.css">
    <link rel="stylesheet" href="${path}/css/goods-list.css">
    <script type="text/javascript" src="${path}/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="${path}/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${path}/js/xadmin.js"></script>
</head>

<body class="layui-anim layui-anim-up">
    <div class="x-nav">
        <span class="layui-breadcrumb">
            <a href="">首页</a>
            <a href="">售后管理</a>
            <a><cite>售后申请</cite></a>
        </span>
        <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
            <i class="layui-icon" style="line-height:30px">ဂ</i>
        </a>
    </div>
    <div class="x-body">
        <xblock>
            <span class="x-right" style="line-height:40px">共有数据： <span id="row"></span> 条</span>
        </xblock>
        <table id="table1" class="layui-table">
            <thead>
                <tr>
                    <th>
                        <div class="layui-unselect header layui-form-checkbox" lay-skin="primary"><i class="layui-icon">&#xe605;</i></div>
                    </th>
                    <th>订单编号</th>
                    <th>用户编号</th>
                    <th>商品编号</th>
                    <th>订单描述</th>
                    <th>订单种类</th>
                    <th>申请状态</th>
                    <th>操作</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach items="${goodsAfterSaleList}" var="goodsAterSale">
                <tr>
                    <td>
                        <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='2'><i class="layui-icon">&#xe605;</i></div>
                    </td>
                    <td>${goodsAterSale.get("goodsAfterSale").orderId}</td>
                    <td>${goodsAterSale.get("goodsAfterSale").userId}</td>
                    <td>${goodsAterSale.get("goodsAfterSale").goodsAttrId}</td>
                    <td>${goodsAterSale.get("goodsAfterSale").postscript}</td>
                    <td style="color:#008B8B">${goodsAterSale.get("goodsAfterSale").afterSaleType}</td>
                    <td style="color: red" id="${goodsAterSale.get("goodsAfterSale").afterSaleId}">${goodsAterSale.get("status")}</td>
                    <td>
                        <button class="layui-btn" onclick="changeOp(this)" title="${goodsAterSale.get("goodsAfterSale").afterSaleId}">${goodsAterSale.get("op")}</button>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <div class="page">
            <div>
                <a class="prev" href="">&lt;&lt;</a>
                <span class="current">1</span>
                <a class="num" href="">2</a>
                <a class="num" href="">3</a>
                <a class="num" href="">489</a>
                <a class="next" href="">&gt;&gt;</a>
            </div>
        </div>
    </div>
    <script>
        function changeOp(obj) {
            if($(obj).html()=="待审核") {
                $(obj).html("已审核");
                var id = "#" + $(obj).attr("title");
                $(id).html("已审核");
                $(obj).attr("disabled", "disabled");
                var status="1";

            var afterSaleId= $(obj).attr("title");

            $.ajax({
                type: "post",
                url: "${path}/afterSale/updateAfterStatus",
                dataType: "json",
                data: {"afterSaleId": afterSaleId,"status":status}

                /*success: function (data) {

                   alert("成功");
                },
                error: function (data) {
                    alert("失败");
                }*/
            });
            }
        }
    </script>
    <script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
    </script>
    <script>
    $(function() { //统计记录
        function init() {
            var table = document.getElementById("table1");
            var rows = table.rows.length - 1;
            $("#row").html(rows.toFixed(2));
        }
        init();
    })
    </script>
</body>

</html>