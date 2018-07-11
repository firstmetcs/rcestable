<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/inc/taglibs.jsp" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>RCE后台管理</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="${path}/layui/css/layui.css">
    <link rel="stylesheet" href="${path}/css/xadmin.css">
    <link rel="stylesheet" href="${path}/css/font.css">
    <script src="${path}/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="${path}/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${path}/js/xadmin.js"></script>
</head>

<body>
    <div class="x-body">
        <form class="layui-form" style="float: left;" method="post" action="saveGoodsInfo?goodsAttrId=${goodsAttributes.goodsAttrId}&goodsName=${goodsName}" enctype="multipart/form-data">
            <div class="layui-form-item">
                <label class="layui-form-label">
                    商品编号
                </label>
                <div class="layui-input-inline">
                    <input type="text" name="goodsAttrId" value="${goodsAttributes.goodsAttrId}" placeholder="商品编号" required="" lay-verify="required" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">
                    价格
                </label>
                <div class="layui-input-inline">
                    <input type="text" name="goodsAttrPrice" value="${goodsAttributes.goodsPrice}" placeholder="价格" required="" lay-verify="required" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">
                    颜色
                </label>
                <div class="layui-input-inline">
                    <select name="goodsAttrColor">
                        <option value="${goodsAttributes.goodsColor}">${goodsAttributes.goodsColor}</option>
                        <option value="白色">白色</option>
                        <option value="黑色">黑色</option>
                        <option value="红色">红色</option>
                        <option value="蓝色">蓝色</option>
                        <option value="金色">金色</option>
                        <option value="玫瑰金">玫瑰金</option>
                    </select>
                </div>
            </div>

        <div class="layui-form" style="float: left;left: 300px;">
            <div class="layui-form-item">
                <label class="layui-form-label">
                    运行内存
                </label>
                <div class="layui-input-inline">
                    <select name="goodsAttrRom">
                        <option value="${goodsAttributes.goodsRam}">${goodsAttributes.goodsRam}</option>
                        <option value="4G">4G</option>
                        <option value="8G">8G</option>
                        <option value="16G">16G</option>
                        <option value="32G">32G</option>
                    </select>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">
                    手机容量
                </label>
                <div class="layui-input-inline">
                    <select name="goodsAttrRam">
                        <option value="${goodsAttributes.goodsRam}">${goodsAttributes.goodsRam}</option>
                        <option value="4G">4G</option>
                        <option value="8G">8G</option>
                        <option value="16G">16G</option>
                        <option value="32G">32G</option>
                        <option value="64G">64G</option>
                        <option value="128G">128G</option>
                    </select>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">
                    尺寸
                </label>
                <div class="layui-input-inline">
                    <select name="goodsAttrSize">
                        <option value="${goodsAttributes.goodsSize}">${goodsAttributes.goodsSize}</option>
                        <option value="5.4">5.4</option>
                        <option value="5.8">5.8</option>
                        <option value="5.9">5.9</option>
                        <option value="6.3">6.3</option>
                        <option value="6.4">6.4</option>
                        <option value="6.5">6.5</option>
                        <option value="6.6">6.6</option>
                    </select>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">
                </label>
                <input type="submit" value="保存" class="layui-btn" lay-filter="add" lay-submit="">
            </div>
        </div>
        </form>
    </div>
</body>
  <%--  <script>
    layui.use(['form', 'layer'], function() {
        $ = layui.jquery;
        var form = layui.form,
            layer = layui.layer;

        //监听提交
        form.on('submit(add)', function(data) {
            console.log(data);
            //发异步，把数据提交给php
            layer.alert("增加成功", { icon: 6 }, function() {
                // 获得frame索引
                var index = parent.layer.getFrameIndex(window.name);
                //关闭当前frame
                parent.layer.close(index);
            });
            return false;
        });
    });
    </script>
    <script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
    </script>--%>


</html>