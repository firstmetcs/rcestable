<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>RCE后台管理</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="/rcestore/layui/css/layui.css">
    <link rel="stylesheet" href="/rcestore/css/font.css">
    <link rel="stylesheet" href="/rcestore/css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="/rcestore/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="/rcestore/js/xadmin.js"></script>
</head>

<script>
     function addPurchaseList() {
         var tr=$("#purchaseList").parent();
         tr.append($("#purchaseList").clone());
     }
    $(document).ready(function () {
        var form = layui.form();
        form.on('select(producer)', function(data){
            // console.log(data);
            alert("hhhhh");
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
        <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
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
                            <input type="text" placeholder="进货票号" autocomplete="off" class="layui-input">
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
                            <input class="layui-input" placeholder="进货时间" name="start" id="start">
                        </div>
                    </div>
                    <div class="layui-input-inline">
                        <label class="layui-form-label">
                            品种数量：
                        </label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="品种数量" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-input-inline">
                        <label class="layui-form-label">
                            货品总数：
                        </label>
                        <div class="layui-input-inline">
                            <input type="text" placeholder="货品总数" autocomplete="off" class="layui-input">
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
                    <thead >
                        <tr>
                            <th>商品名称</th>
                            <th>运行内存</th>
                            <th>手机容量</th>
                            <th>尺寸</th>
                            <th>颜色</th>
                            <th>单价</th>
                            <th>操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr id="purchaseList" >
                            <td>
                                <select id="goodsName">

                                    <option value="">商品名称</option>
                                    <option value="">小米8</option>
                                    <option value=""> 红米Note5</option>
                                    <option value=""> 小米6X</option>
                                </select>
                            </td>
                            <td>
                                <select>
                                    <option value="">运行内存</option>
                                    <option value="1">4G</option>
                                    <option value="2">8G</option>
                                    <option value="3">16G</option>
                                    <option value="4">32G</option>
                                </select>
                            </td>
                            <td>
                                <select>
                                    <option value="">手机容量</option>
                                    <option value="1">4G</option>
                                    <option value="2">8G</option>
                                    <option value="3">16G</option>
                                    <option value="4">32G</option>
                                    <option value="4">64G</option>
                                    <option value="4">128G</option>
                                </select>
                            </td>
                            <td>
                                <select>
                                    <option value="">尺寸</option>
                                    <option value="0">6.0</option>
                                    <option value="1">6.1</option>
                                    <option value="2">6.2</option>
                                    <option value="3">6.3</option>
                                    <option value="4">6.4</option>
                                    <option value="5">6.5</option>
                                    <option value="6">6.6</option>
                                </select>
                            </td>
                            <td>
                                <select>
                                    <option value="">颜色</option>
                                    <option value="white">白色</option>
                                    <option value="black">黑色</option>
                                    <option value="red">红色</option>
                                    <option value="blue">蓝色</option>
                                    <option value="golden">金色</option>
                                    <option value="rose-gold">玫瑰金</option>
                                </select>
                            </td>
                            <td>
                                <input type="text" required="" placeholder="单价" autocomplete="off" class="layui-input">
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
                <button class="layui-btn" lay-filter="add" lay-submit="">
                    生成进货单
                </button>
            </div>
        </form>
    </div>
    <script>
    /*删除*/
    layui.use('laydate', function() {
        var laydate = layui.laydate;
        //执行一个laydate实例
        laydate.render({
            elem: '#start' //指定元素
        });
        //执行一个laydate实例
        laydate.render({
            elem: '#end' //指定元素
        });
    });

    function member_del(obj, id) {
        layer.confirm('确认要删除吗？', function(index) {
            //发异步删除数据
            $(obj).parents("tr").remove();
            layer.msg('已删除!', { icon: 1, time: 1000 });
        });
    }
    </script>

</body>

</html>