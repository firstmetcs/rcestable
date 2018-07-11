<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>RCE后台管理</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" type="text/css" href="/rcestore/layui/css/layui.css">
    <link rel="stylesheet" href="/rcestore/css/font.css">
    <link rel="stylesheet" href="/rcestore/css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="/rcestore/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="/rcestore/js/xadmin.js"></script>
    <script type="text/javascript" src="/rcestore/js/stock.js"></script>
</head>

<script>
    var totaType = 1;

    function addPurchaseList() {
        totaType++;
        $("#totalType").val(totaType);

    }

    function changeNum(obj) {
        var num = $(obj).val();
        $("#totalNum").val(num);
    }

    $(document).ready(function () {

        var date = new Date();
        var month = date.getMonth() + 1;
        var stockId = "JRCE" + date.getFullYear() + month + date.getDay() + date.getHours() + date.getMinutes();
        $("#stockId").val(stockId);

        var stockTime = date.getFullYear() + "-" + month + "-" + date.getDay();
        $("#stockTime").val(stockTime);

        $("#totalType").val(totaType);

        layui.use('form', function () {
            var form = layui.form;
            form.on('select(producer)', function (data) {
                clearn("goodsName");
                changeGoodsName(data.value);
                form.render();

                form.on('select(goodsName)', function (data2) {
                    clearn("goodsColor");
                    clearn("goodsRam");
                    clearn("goodsRom");
                    clearn("goodsSize");
                    changeGoodsInfo(data.value, data2.value);
                    form.render();

                    form.on('select(goodsRom)', function (data3) {
                        form.on('select(goodsRam)', function (data4) {

                            $.ajax({
                                type: "post",
                                url: "/rcestore/goodsStock/findPrice",
                                dataType: "json",
                                data: {"goodsRom": data3.value, "goodsRam": data4.value},
                                success: function (data) {
                                    $("#goodsPrice").val(data);
                                    var totalPrice = $("#goodsPrice").val();
                                    $("#totalAccount").val(totalPrice);
                                },
                                error: function (data) {
                                    alert("失败");
                                }
                            });
                        });
                    });

                    form.on('select(goodsRam)', function (data3) {
                        form.on('select(goodsRom)', function (data4) {

                            $.ajax({
                                type: "post",
                                url: "/rcestore/goodsStock/findPrice",
                                dataType: "json",
                                data: {"goodsRom": data4.value, "goodsRam": data3.value},
                                success: function (data) {

                                    $("#goodsPrice").val(data);
                                    var totalPrice = $("#goodsPrice").val();
                                    $("#totalAccount").val(totalPrice);
                                },
                                error: function (data) {
                                    alert("失败");
                                }
                            });
                        });
                    });

                });

            });
        });
    })
</script>

<body>
<div class="x-nav">
        <span class="layui-breadcrumb">
            <a href="">首页</a>
            <a href="">进销存管理</a>
            <a href="">进货</a>
            <a><cite>进货单</cite></a>
        </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"
       href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i>
    </a>
</div>
<div class="x-body layui-anim layui-anim-up">
    <form class="layui-form">
        <div class="layui-col-md12 x-so">
            <div>
                <div class="layui-input-inline">
                    <label class="layui-form-label">
                        进货票号：
                    </label>
                    <div class="layui-input-inline">
                        <input id="stockId" type="text" placeholder="进货票号" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-input-inline">
                    <label class="layui-form-label">
                        供应商：
                    </label>
                    <div class="layui-input-inline">
                        <select id="producer" lay-filter="producer">
                            <option value="">供应商</option>
                            <option value="小米">小米</option>
                            <option value="vivo">vivo</option>
                            <option value="oppo">oppo</option>
                            <option value="华为">华为</option>
                            <option value="荣耀">荣耀</option>
                            <option value="魅族">魅族</option>
                            <option value="一加">一加</option>
                            <option value="努比亚">努比亚</option>
                        </select>
                    </div>
                </div>
                <div class="layui-input-inline">
                    <label class="layui-form-label">
                        联系人：
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" placeholder="联系人" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-input-inline">
                    <label class="layui-form-label">
                        结算方式：
                    </label>
                    <div class="layui-input-inline">
                        <select>
                            <option value="">结算方式</option>
                            <option value="rongyao">现金</option>
                            <option value="huawei">微信</option>
                            <option value="oppo">支付宝</option>
                            <option value="oppo">银行卡</option>
                        </select>
                    </div>
                </div>

            </div>
            <div style="margin-top: 10px;">
                <div class="layui-input-inline">
                    <label class="layui-form-label">
                        进货时间：
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" class="layui-input" id="stockTime" placeholder="进货时间">
                    </div>
                </div>
                <div class="layui-input-inline">
                    <label class="layui-form-label">
                        品种数量：
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="totalType" placeholder="品种数量" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-input-inline">
                    <label class="layui-form-label">
                        货品总数：
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="totalNum" placeholder="货品总数" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-input-inline">
                    <label class="layui-form-label">
                        合计金额：
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="totalAccount" placeholder="合计金额" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-input-inline" style="float:right">
                    <div class="layui-input-inline">
                        <button id="add" onclick="addPurchaseList()" class="layui-btn" value="添加">添加</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <table class="layui-table">
                <thead>
                <tr>
                    <th>商品名称</th>
                    <th>运行内存</th>
                    <th>手机容量</th>
                    <th>尺寸</th>
                    <th>颜色</th>
                    <th>数量</th>
                    <th>单价</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <tr id="purchaseList">
                    <td>
                        <select id="goodsName" lay-filter="goodsName">
                            <option value="">商品名称</option>
                            <option value="小米8">小米8</option>
                            <option value="红米Note5">红米Note5</option>
                            <option value="小米6X">小米6X</option>
                        </select>
                    </td>
                    <td>
                        <select id="goodsRom" lay-filter="goodsRom">
                            <option value="">运行内存</option>
                            <option value="4G">4G</option>
                            <option value="8G">8G</option>
                            <option value="16G">16G</option>
                        </select>
                    </td>
                    <td>
                        <select id="goodsRam" lay-filter="goodsRam">
                            <option value="">手机容量</option>
                            <option value="4G">4G</option>
                            <option value="8G">8G</option>
                            <option value="16G">16G</option>
                            <option value="32G">32G</option>
                            <option value="64G">64G</option>
                            <option value="128G">128G</option>
                        </select>
                    </td>
                    <td>
                        <select id="goodsSize">
                            <option value="">尺寸</option>
                            <option value="6.0">6.0</option>
                            <option value="6.1">6.1</option>
                            <option value="6.2">6.2</option>
                            <option value="6.3">6.3</option>
                            <option value="6.4">6.4</option>
                            <option value="6.5">6.5</option>
                            <option value="6.6">6.6</option>
                        </select>
                    </td>
                    <td>
                        <select id="goodsColor">
                            <option value="">颜色</option>
                            <option value="白色">白色</option>
                            <option value="黑色">黑色</option>
                            <option value="红色">红色</option>
                            <option value="蓝色">蓝色</option>
                            <option value="金色">金色</option>
                            <option value="玫瑰金">玫瑰金</option>
                        </select>
                    </td>
                    <td>
                        <input id="goodsNum" type="text" onchange="changeNum(this)" placeholder="数量"
                               class="layui-input">
                    </td>
                    <td>
                        <input id="goodsPrice" type="text" placeholder="单价" class="layui-input">
                    </td>
                    <td class="td-manage">
                        <a title="删除" onclick="member_del(this,'要删除的id')" href="javascript:;">
                            <i class="layui-icon">&#xe640;</i>
                        </a>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="layui-form-item" align="center">
            <label class="layui-form-label">
            </label>
        </div>
    </form>
    <center>
    <a href="showGoodsStock">
        <button class="layui-btn">
            生成进货单
        </button>
    </a>
    </center>
</div>
</body>

</html>