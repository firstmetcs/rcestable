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
        <form class="layui-form" method="post" action="saveGoods" enctype="multipart/form-data">
            <div class="layui-form-item" style="float: left;">
                <label class="layui-form-label">
                    <span class="x-red">*</span>商品名称.
                </label>
                <div class="layui-input-inline">
                    <input type="text" placeholder="商品名称" required="" lay-verify="required" autocomplete="off" class="layui-input" name="goodsName">
                </div>
            </div>

         <div  style="float: left; left: 300px;">
             <div class="layui-form-item" >
                 <label class="layui-form-label">
                     <span class="x-red">*</span>商品厂家
                 </label>
                 <div class="layui-input-inline">
                     <select  name="goodsType">
                         <option value="">商品厂家</option>}
                         <option value="荣耀">荣耀</option>
                         <option value="华为">华为</option>
                         <option value="oppo">oppo</option>
                         <option value="vivo">vivo</option>
                         <option value="小米">小米</option>
                         <option value="魅族">魅族</option>
                         <option value="一加">一加</option>
                         <option value="努比亚">努比亚</option>
                     </select>
                 </div>
             </div>
         </div>

            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">
                    商品总描述
                </label>
                <div class="layui-input-block">
                    <textarea placeholder="商品总描述" class="layui-textarea" name="goodsTotalDesc"></textarea>
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">
                    属性描述
                </label>
                <div class="layui-input-block">
                    <textarea placeholder="属性描述" class="layui-textarea" name="goodsAttrDesc"></textarea>
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">
                    销售描述
                </label>
                <div class="layui-input-block">
                    <textarea placeholder="销售描述" class="layui-textarea" name="goodsSaleDesc"></textarea>
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">
                    屏幕描述
                </label>
                <div class="layui-input-block">
                    <textarea placeholder="屏幕名称"  class="layui-textarea" name="goodsScreenDesc1"></textarea>
                    <textarea placeholder="屏幕描述"  class="layui-textarea" name="goodsScreenDesc2"></textarea>
                </div>
                <br>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">
                    电池描述
                </label>
                <div class="layui-input-block">
                    <textarea placeholder="电池名称"  class="layui-textarea" name="goodsBatteryDesc1"></textarea>
                    <textarea placeholder="电池描述"  class="layui-textarea" name="goodsBatteryDesc2"></textarea>
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">
                    前置摄像头描述
                </label>
                <div class="layui-input-block">
                    <textarea placeholder="前置摄像头名称"  class="layui-textarea" name="goodsPreCameraDesc1"></textarea>
                    <textarea placeholder="前置摄像头描述"  class="layui-textarea" name="goodsPreCameraDesc2"></textarea>
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label  class="layui-form-label">
                    后置摄像头描述
                </label>
                <div class="layui-input-block">
                    <textarea placeholder="后置摄像头名称"  class="layui-textarea" name="goodsCameraDesc1"></textarea>
                    <textarea placeholder="后置摄像头描述"  class="layui-textarea" name="goodsCameraDesc2"></textarea>
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label  class="layui-form-label">
                    CPU描述
                </label>
                <div class="layui-input-block">
                    <textarea placeholder="CPU名称" class="layui-textarea" name="goodsCPUDesc1"></textarea>
                    <textarea placeholder="CPU描述" class="layui-textarea" name="goodsCPUDesc2"></textarea>
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">
                    系统描述
                </label>
                <div class="layui-input-block">
                    <textarea placeholder="系统名称"  class="layui-textarea" name="goodsSystemDesc1"></textarea>
                    <textarea placeholder="系统描述"  class="layui-textarea" name="goodsSystemDesc2"></textarea>
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
                <label  class="layui-form-label">
                </label>
                <input type="submit" value="添加" class="layui-btn" lay-filter="add" lay-submit=""/>
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
    </script>--%>

</body>

</html>