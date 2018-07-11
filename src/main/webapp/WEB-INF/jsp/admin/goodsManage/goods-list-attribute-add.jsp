<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/inc/taglibs.jsp" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>RCE后台管理</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8" />
    <link rel="stylesheet" type="text/css" href="${path}/layui/css/layui.css">
    <link rel="stylesheet" href="${path}/css/font.css">
    <link rel="stylesheet" href="${path}/css/xadmin.css">
    <script src="${path}/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="${path}/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${path}/js/xadmin.js"></script>
    <script type="text/javascript">
        function imgPreview(fileDom) {
            //判断是否支持FileReader
            if (window.FileReader) {
                var reader = new FileReader();
            } else {
                alert("您的设备不支持图片预览功能，如需该功能请升级您的设备！");
            }

            //获取文件
            var file = fileDom.files[0];
            var imageType = /^image\//;
            //是否是图片
            if (!imageType.test(file.type)) {
                alert("请选择图片！");
                return;
            }
            //读取完成
            reader.onload = function (e) {
                //获取图片dom
                if(document.getElementById("cropedBigImg")){
                    var img = document.getElementById("cropedBigImg");}
                else{
                    var img = document.getElementById("cropedBigImg2");}
                //图片路径设置为读取的图片
                img.src = e.target.result;
            };
            reader.readAsDataURL(file);
        }
    </script>
</head>

<body>
    <div class="x-body">
        <form class="layui-form" style="float: left;" method="post" action="saveGoodsInfo?goodsId=${goodsId}&goodsName=${goodsName}" enctype="multipart/form-data" >
            <div class="layui-form-item">
                <label class="layui-form-label">
                    价格
                </label>
                <div class="layui-input-inline">
                    <input type="text" name="goodsAttrPrice" placeholder="价格" required="" lay-verify="required" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label  class="layui-form-label">
                    尺寸
                </label>
                <div class="layui-input-inline">
                    <select name="goodsAttrSize">
                        <option value="">尺寸</option>
                        <option value="5.4">5.4</option>
                        <option value="5.8">5.8</option>
                        <option value="5.9">5.9</option>
                        <option value="6.1">6.3</option>
                        <option value="6.2">6.4</option>
                        <option value="6.3">6.5</option>
                        <option value="6.4">6.6</option>
                    </select>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">
                    颜色
                </label>
                <div class="layui-input-inline">
                    <select name="goodsAttrColor">
                        <option value="">颜色</option>
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
                        <option value="">运行内存</option>
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
                        <option value="">手机容量</option>
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
                    <label  class="layui-form-label">
                        上传图片
                    </label>
                    <div class="upload">
                        <input type="file" name="pictureFile" id="pictureFile" onchange="imgPreview(this)">

                        <img id="cropedBigImg" style="width:200px;height:200px;"/>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">
                    </label>
                    <input type="submit" value="添加" class="layui-btn" lay-filter="add" lay-submit="">
                </div>
            </div>
        </form>
    </div>
   <%-- <script>
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
    </script>
    <script>
    layui.use('upload', function() {
        var $ = layui.jquery,
            upload = layui.upload;

        //拖拽上传
        upload.render({
            elem: '#test10',
            url: '/upload/',
            multiple: true,
            before: function(obj) {
                //预读本地文件示例，不支持ie8
                obj.preview(function(index, file, result) {
                    $('#file-preview-id').append('<img src="' + result + '" alt="' + file.name + '" class="layui-upload-img">')
                });
            },
            done: function(res) {
                console.log(res)
            }
        });
    });
    </script>--%>
</body>

</html>