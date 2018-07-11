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
    <div class="x-nav">
        <span class="layui-breadcrumb">
        <a href="">首页</a>
        <a onclick="javascript:history.go(-1)">商品列表</a>
        <a>
          <cite>商品详情</cite>
        </a>
      </span>
        <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
    </div>
    <div class="x-body">
        <form class="layui-form">
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">
                    商品总描述
                </label>
                <div class="layui-input-block">
                    <textarea placeholder="商品总描述" class="layui-textarea">${goods.goodsTotalDesc}</textarea>
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">
                    属性描述
                </label>
                <div class="layui-input-block">
                    <textarea placeholder="属性描述" class="layui-textarea">${goods.goodsAttrDesc}</textarea>
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">
                    销售描述
                </label>
                <div class="layui-input-block">
                    <textarea placeholder="销售描述" class="layui-textarea">${goods.goodsSaleDesc}</textarea>
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">
                    屏幕描述
                </label>
                <div class="layui-input-block">
                    <textarea placeholder="屏幕名称" class="layui-textarea">${screen[0]}</textarea>
                    <textarea placeholder="屏幕描述" class="layui-textarea">${screen[1]}</textarea>
                </div>
                <br>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">
                    电池描述
                </label>
                <div class="layui-input-block">
                    <textarea placeholder="电池名称" class="layui-textarea">${battery[0]}</textarea>
                    <textarea placeholder="电池描述" class="layui-textarea">${battery[1]}</textarea>
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">
                    前置摄像头描述
                </label>
                <div class="layui-input-block">
                    <textarea placeholder="前置摄像头名称" class="layui-textarea">${precamera[0]}</textarea>
                    <textarea placeholder="前置摄像头描述" class="layui-textarea">${precamera[1]}</textarea>
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">
                    后置摄像头描述
                </label>
                <div class="layui-input-block">
                    <textarea placeholder="后置摄像头名称" class="layui-textarea">${camera[0]}</textarea>
                    <textarea placeholder="后置摄像头描述" class="layui-textarea">${camera[1]}</textarea>
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">
                    CPU描述
                </label>
                <div class="layui-input-block">
                    <textarea placeholder="CPU名称" class="layui-textarea">${cpu[0]}</textarea>
                    <textarea placeholder="CPU描述" class="layui-textarea">${cpu[1]}</textarea>
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">
                    系统描述
                </label>
                <div class="layui-input-block">
                    <textarea placeholder="系统名称" class="layui-textarea">${system[0]}</textarea>
                    <textarea placeholder="系统描述" class="layui-textarea">${system[1]}</textarea>
                </div>
            </div>
        </form>
    </div>
    <script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
    </script>
</body>

</html>