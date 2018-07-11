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
        <form class="layui-form"  method="post" action="saveGoods?goodsId=${goods.goodsId}" enctype="multipart/form-data">
            <div class="layui-form-item">
                <label class="layui-form-label">
                    版本编号
                </label>
                <div class="layui-input-inline">
                    <input type="text" placeholder="版本编号" value="${goods.goodsId}" required="" disabled lay-verify="required" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">
                    <span class="x-red">*</span>商品名称
                </label>
                <div class="layui-input-inline">
                    <input type="text" placeholder="商品名称" value="${goods.goodsName}" name="goodsName" required="" lay-verify="required" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">
                    <span class="x-red">*</span>厂家
                </label>
                <div class="layui-input-inline">
                    <select class="valid" name="goodsType" >
                        <option value="${goods.goodsType}">${goods.goodsType}</option>
                        <option value="荣耀">荣耀</option>
                        <option value="华为">华为</option>
                        <option value="oppo">oppo</option>
                        <option value="vivo">vivo</option>
                        <option value="魅族">魅族</option>
                        <option value="一加">一加</option>
                        <option value="努比亚">努比亚</option>
                    </select>
                </div>
            </div>

        <div class="layui-form">
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">
                    商品总描述
                </label>
                <div class="layui-input-block">
                    <textarea placeholder="商品总描述"  class="layui-textarea" name="goodsTotalDesc">${goods.goodsTotalDesc}</textarea>
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">
                    属性描述
                </label>
                <div class="layui-input-block">
                    <textarea placeholder="属性描述" class="layui-textarea" name="goodsAttrDesc">${goods.goodsAttrDesc}</textarea>
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">
                    销售描述
                </label>
                <div class="layui-input-block">
                    <textarea placeholder="销售描述" class="layui-textarea" name="goodsSaleDesc">${goods.goodsSaleDesc}</textarea>
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">
                    屏幕描述
                </label>
                <div class="layui-input-block">
                    <textarea placeholder="屏幕名称" class="layui-textarea" name="goodsScreenDesc1">${screen[0]}</textarea>
                    <textarea placeholder="屏幕描述" class="layui-textarea" name="goodsScreenDesc2">${screen[1]}</textarea>
                </div>
                <br>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">
                    电池描述
                </label>
                <div class="layui-input-block">
                    <textarea placeholder="电池名称" class="layui-textarea" name="goodsBatteryDesc1">${battery[0]}</textarea>
                    <textarea placeholder="电池描述" class="layui-textarea" name="goodsBatteryDesc2">${battery[1]}</textarea>
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">
                    前置摄像头描述
                </label>
                <div class="layui-input-block">
                    <textarea placeholder="前置摄像头名称" class="layui-textarea" name="goodsPreCameraDesc1">${precamera[0]}</textarea>
                    <textarea placeholder="前置摄像头描述" class="layui-textarea" name="goodsPreCameraDesc2">${precamera[1]}</textarea>
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">
                    后置摄像头描述
                </label>
                <div class="layui-input-block">
                    <textarea placeholder="后置摄像头名称" class="layui-textarea" name="goodsCameraDesc1">${camera[0]}</textarea>
                    <textarea placeholder="后置摄像头描述" class="layui-textarea" name="goodsCameraDesc2">${camera[1]}</textarea>
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">
                    CPU描述
                </label>
                <div class="layui-input-block">
                    <textarea placeholder="CPU名称" class="layui-textarea" name="goodsCPUDesc1">${cpu[0]}</textarea>
                    <textarea placeholder="CPU描述" class="layui-textarea" name="goodsCPUDesc2">>${cpu[1]}</textarea>
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">
                    系统描述
                </label>
                <div class="layui-input-block">
                    <textarea placeholder="系统名称" class="layui-textarea" name="goodsSystemDesc1">${system[0]}</textarea>
                    <textarea placeholder="系统描述" class="layui-textarea" name="goodsSystemDesc2">${system[1]}</textarea>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">
                </label>
                <input type="submit" value="更改" class="layui-btn" lay-filter="add" lay-submit=""/>
            </div>
        </div>
        </form>
    </div>
    <%--<script>
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
</body>

</html>