<%@ include file="/WEB-INF/inc/taglibs.jsp" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/11
  Time: 15:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="${path}/css/shoppingCart.css">

    <%--主页必要css--%>
    <link rel="stylesheet" type="text/css" href="${path}/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="${path}/css/global.css">
    <link rel="stylesheet" type="text/css" href="${path}/css/headframe.css">
    <link rel="stylesheet" type="text/css" href="${path}/css/footframe.css">
    <link rel="stylesheet" type="text/css" href="${path}/css/index.css">

    <script src="${path}/js/jquery-3.3.1.min.js"></script>
    <script>
        function change(id) {
            var param = {};
            param.shoppingcartid = id;
            param.goodscount = parseInt($("#" + id + "amount").val());
            $("#" + id + "amount").attr("value", param.goodscount);
            $("#" + id + "termprice").html((parseInt($("#" + id + "amount").val()) * parseInt($("#" + id + "goodsprice").text())).toFixed(2));
            var sum = 0;
            $("span[name='termprice']").each(function () {
                if ($(this).parent().siblings(".singlecheck").children("div:first-child").children("input:first-child").is(':checked')) {
                    sum += $(this).text() * 1;
                }
            });
            alert(sum);
            $("#total").html("¥" + sum.toFixed(2));
            $.ajax({
                type: "POST",
                url: "${path}/shoppingCart/change",
                data: param,
                dataType: "json",
                async: true,
                success: function (data) {


                },
                error: function (data) {
                    alert("error:请刷新页面");
                }
            });
        }

        function add(id) {
            $("#" + id + "amount").attr("value", parseInt($("#" + id + "amount").val()) + 1);
            change(id);
        }

        function dec(id) {
            $("#" + id + "amount").attr("value", parseInt($("#" + id + "amount").val()) - 1);
            change(id);
        }

    </script>
</head>
<body>

<%@ include file="/WEB-INF/inc/top.jsp"%>

<div class="layui-form shopCart">
    <table class="layui-table table-width" lay-skin="line">
        <colgroup>
            <col width="190">
            <col width="170">
            <col width="90">
            <col width="150">
            <col width="150">
            <col width="150">
        </colgroup>
        <thead>
        <tr>
            <th class="all-select-th">
                <form class="layui-form" action="">
                    <input type="checkbox" name="tb-allChoose" title="全选" lay-skin="primary" lay-filter="allChoose">
                </form>
            </th>
            <th>商品</th>
            <th>单价</th>
            <th>数量</th>
            <th>小计</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>


        <c:if test="${!empty sessionScope.shoppingCarts}">
            <c:forEach var="shoppingCart" items="${sessionScope.shoppingCarts}">


                <tr>
                    <td name="ifcheck" class="singlecheck">
                        <div class="shopCart-checkbox">
                            <!-- <form class="layui-form" action=""> -->
                            <input type="checkbox" name="" title="" lay-skin="primary" lay-filter="changeselect"
                                   name="hobby"
                                   id="${shoppingCart.shoppingcartid}"
                                   <c:if test="${shoppingCart.ischeck==1}">checked="true"</c:if>
                                   onchange="alert('111111111');changeselect(${shoppingCart.shoppingcartid})">
                            <!-- </form> -->
                        </div>
                        <div class="shopCart-thumbnail">
                            <img src="img/华为p20.jpg" alt="">
                        </div>
                    </td>
                    <td>${shoppingCart.goodsname}&nbsp;&nbsp;${shoppingCart.goodsversion}&nbsp;&nbsp;${shoppingCart.goodscolor}&nbsp;&nbsp;</td>
                    <td><span id="${shoppingCart.shoppingcartid}goodsprice">${shoppingCart.goodsprice}</span></td>
                    <td>
                        <div class="layui-btn-group">
                            <input class="layui-btn layui-btn-sm layui-btn-primary" name="sub" type="button" value="<"
                                   onclick="dec(${shoppingCart.shoppingcartid})"/>
                            <input class="layui-btn layui-btn-sm layui-btn-primary width35px" name="goodnum" type="text"
                                   value="${shoppingCart.goodscount}"
                                   id="${shoppingCart.shoppingcartid}amount"
                                   onblur="change(${shoppingCart.shoppingcartid})"/>
                            <input class="layui-btn layui-btn-sm layui-btn-primary" name="add" type="button" value=">"
                                   onclick="add(${shoppingCart.shoppingcartid})"/>
                        </div>
                    </td>
                    <td><span
                            id="${shoppingCart.shoppingcartid}termprice"
                            name="termprice">${shoppingCart.termprice}</span>
                    </td>
                    <td>
                        <a href="" title="">删除</a>
                    </td>
                </tr>

            </c:forEach>
        </c:if>


        </tbody>
    </table>
</div>
<div class="shopCart clearing-div">
    <div class="del-sel">
        <div class="clear-float">
        </div>
        <div>
            <form class="layui-form" action="">
                <input type="checkbox" name="selectAll" title="全选" lay-skin="primary" lay-filter="all-choose">
                <a href="" title="">删除</a>
            </form>
        </div>
    </div>
    <div class="clearing">
        <div>
            <div class="shopCart-totalPrice">
                <!-- 这里不能有空格，因为jQuery的html方法会计算 -->
                <div id="clearing-total">总计：<em id="total">¥${sessionScope.total}</em></div>
                <div>
                    已选择 <span>0</span> 件商品，已优惠 ￥0.00
                </div>
            </div>
            <div class="clearing-btn">
                <button type="" class="layui-btn" id="settleNow" disabled="disabled">立即结算</button>
                <a  class="layui-btn" href="${path}/order/index">立即结算</a>
            </div>
        </div>
    </div>
</div>
<script>
    //Demo
    layui.use('form', function() {
        var form = layui.form;
        //监听提交
        form.on('submit(formDemo)', function(data) {
            layer.msg(JSON.stringify(data.field));
            return false;
        });
        var selectedQuantity = 0;

        var $ = layui.jquery;
        //表格中的全选
        form.on('checkbox(allChoose)', function(data) {
            var child = $(data.elem).parents('table').find('tbody input[type="checkbox"]');
            $('[name="selectAll"]')[0].checked = data.elem.checked;
            child.each(function(index, item) {
                if (item.checked && data.elem.checked) {
                    selectedQuantity--;
                }
                item.checked = data.elem.checked;
                if (item.checked) {
                    selectedQuantity++;
                }else{
                    if(selectedQuantity > 0){
                        selectedQuantity--;
                    }
                }
            });
            // alert(selectedQuantity);
            form.render('checkbox');
        });

        //结算时的全选
        form.on('checkbox(all-choose)', function(data) {
            var child = $('tbody').find('input[type="checkbox"]');
            $("[name='tb-allChoose']")[0].checked = data.elem.checked;
            child.each(function(index, item) {
                if (item.checked && data.elem.checked) {
                    selectedQuantity--;
                }
                item.checked = data.elem.checked;
                if (item.checked) {
                    selectedQuantity++;
                }else{
                    if(selectedQuantity > 0){
                        selectedQuantity--;
                    }
                }
            });
            // alert(selectedQuantity);
            form.render("checkbox");
        });

        form.on('checkbox(changeselect)', function(data){
            console.log("1"+data.elem.id); //得到checkbox原始DOM对象
            console.log("2"+data.elem.checked); //是否被选中，true或者false
            console.log("3"+data.value); //复选框value值，也可以通过data.elem.value得到
            console.log("4"+data.othis); //得到美化后的DOM对象


            var id = data.elem.id;
            var status = data.elem.checked;
            var param = {};
            param.shoppingcartid = id;
            if (status) {
                param.ischeck = 1;
            } else {
                param.ischeck = 0;
            }
            var sum = 0;
            $("span[name='termprice']").each(function () {
                if ($(this).parent().siblings(".singlecheck").children("div:first-child").children("input:first-child").is(':checked')) {
                    sum += $(this).text() * 1;
                }
            });
            alert(sum);
            $("#total").html("¥" + sum.toFixed(2));
            $.ajax({
                type: "POST",
                url: "${path}/shoppingCart/change",
                data: param,
                dataType: "json",
                async: true,
                success: function (data) {

                },
                error: function (data) {
                    alert(data.total);
                }
            });
        });

    });
</script>
<script type="text/javascript" src="${path}/layui/layui.js"></script>
<script type="text/javascript" src="${path}/js/global.js"></script>
<script type="text/javascript" src="${path}/js/headframe.js"></script>
<script type="text/javascript" src="${path}/js/index.js"></script>
</body>
</html>
