<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Firstmetcs
  Date: 2018/7/11/0011
  Time: 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>个人中心</title>
    <link rel="stylesheet" type="text/css" href="/rcestore/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/rcestore/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="/rcestore/css/global.css">
    <link rel="stylesheet" type="text/css" href="/rcestore/css/headframe.css">
    <link rel="stylesheet" type="text/css" href="/rcestore/css/footframe.css">
    <link rel="stylesheet" type="text/css" href="/rcestore/css/selfcenter.css">
    <link rel="stylesheet" type="text/css" href="/rcestore/css/userInfo.css">
    <script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript">
        /*加载省下拉选*/
        $(function () {
            alert("test");
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
                        $('#provinceidAdd').append("<option value='" + city[i].id + "' >" + city[i].name + "</option>");
                    }
                },
                error: function () {
                    alert("加载省失败");
                }
            });
        });

        /*加载市下拉选*/
        function getCityAdd() {
            var id = $("#provinceidAdd").val();
            $("#cityidAdd").empty();
            $("#areaidAdd").empty();
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
                    $('#cityidAdd').append("<option value='' selected='selected' >" + '请选择' + "</option>");
                    $('#areaidAdd').append("<option value='' selected='selected' >" + '请选择' + "</option>");
                    for (var i = 0; i < city.length; i++) {
                        $('#cityidAdd').append("<option value='" + city[i].id + "' >" + city[i].name + "</option>");
                    }
                },
                error: function () {
                    alert("加载市失败");
                }
            });
        }
        ;

        /*加载地区下拉选*/
        function getAreaAdd() {
            var id = $("#cityidAdd").val();
            $("#areaidAdd").empty();
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
                    $('#areaidAdd').append("<option value='' selected='selected' >" + '请选择' + "</option>");
                    for (var i = 0; i < city.length; i++) {
                        $('#areaidAdd').append("<option value='" + city[i].id + "' >" + city[i].name + "</option>");
                    }
                },
                error: function () {
                    alert("加载区失败");
                }
            });
        }
    </script>
    <script type="text/javascript">
        /*加载省下拉选*/
        $(function () {
            alert("test");
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
<!--头部导航-->

<%@ include file="/WEB-INF/inc/top.jsp"%>
<div class="layui-top-nav logo-top-nav">
    <div class="layui-main">
        <a class="logo" href="../index.html"><img src="../img/logo.png"></a>
        <div class="logo-nav">
            <ul class="layui-logo-nav">
                <li class="layui-nav-item logo-nav-1" onmouseover="getNavRec(1)" onmouseout="removeNavRec(1)"><a href="javascript:;">荣耀</a></li>
                <li class="layui-nav-item logo                     -nav-2" onmouseover="getNavRec(2)" onmouseout="removeNavRec(2)"><a href="javascript:;">华为</a></li>
                <li class="layui-nav-item logo-nav-3" onmouseover="getNavRec(3)" onmouseout="removeNavRec(3)"><a href="javascript:;">oppo</a></li>
                <li class="layui-nav-item logo-nav-4" onmouseover="getNavRec(4)" onmouseout="removeNavRec(4)"><a href="javascript:;">vivo</a></li>
                <li class="layui-nav-item logo-nav-5" onmouseover="getNavRec(5)" onmouseout="removeNavRec(5)"><a href="javascript:;">魅族</a></li>
                <li class="layui-nav-item logo-nav-6" onmouseover="getNavRec(6)" onmouseout="removeNavRec(6)"><a href="javascript:;">小米</a></li>
                <li class="layui-nav-item logo-nav-7" onmouseover="getNavRec(7)" onmouseout="removeNavRec(7)"><a href="javascript:;">一加</a></li>
                <li class="layui-nav-item logo-nav-8" onmouseover="getNavRec(8)" onmouseout="removeNavRec(8)"><a href="javascript:;">努比亚</a></li>
            </ul>
        </div>
        <div class="logo-nav-search">
            <div class="layui-input-inline" style="width: 250px;">
                <input type="text" name="" placeholder="请输入搜索内容..." class="layui-input" autocomplete="on">
            </div>
            <button class="layui-btn layui-btn-primary">
                <i class="layui-icon layui-icon-search"></i>
            </button>
        </div>
    </div>
</div>
<div class="self-center">
    <div class="layui-main">
        <br>
        <span class="layui-breadcrumb breadcrumb" lay-separator=">">
				<a href="">首页</a>
				<a ><cite>个人中心</cite></a>
			</span>
        <div class="layui-row">
            <div class="layui-col-md2 content">
                <div class="left-nav">
                    <ul>
                        <h3>订单中心</h3>
                        <li><a href="orderlist.html">我的订单</a></li>
                        <li><a href="commentlist.html">评价晒单</a></li>
                        <li><a href="insurance.html">意外保</a></li>
                    </ul>
                    <ul>
                        <h3>个人中心</h3>
                        <li><a href="selfcenter.html" style="color: #008b8b">我的个人中心</a></li>
                        <li><a href="message.html">消息通知</a></li>
                        <li><a href="coupon.html">优惠券</a></li>
                    </ul>
                    <ul>
                        <h3>售后服务</h3>
                        <li><a href="servicerecord.html">服务记录</a></li>
                        <li><a href="applyservice.html">申请服务</a></li>
                    </ul>
                </div>
            </div>
            <!-- 添加收获地址 -->
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title">修改收获地址</h4>
                        </div>
                        <div class="modal-body">
                            <form class="form-horizontal">
                                <div class="form-group">
                                    <div class="col-sm-4">
                                        <select class="form-control" id="provinceid" name="provinceid" onchange="getCity()">
                                            <option>省份/自治区</option>
                                        </select>
                                    </div>
                                    <div class="col-sm-5" id="city">
                                        <select class="form-control" id="cityid" name="cityid" onchange="getArea()">
                                            <option>城市/地区/自治州</option>
                                        </select>
                                    </div>
                                    <div class="col-sm-3" id="county">
                                        <select class="form-control" id="areaid" name="areaid">
                                            <option>区/县</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <textarea class="form-control" rows="3" placeholder="路名或街道地址，门牌号" id="address" name="address"></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <input type="text" class="form-control" name="postcode" id="postcode" placeholder="邮政编码">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <input type="text" class="form-control" id="username" name="username" placeholder="收货人姓名">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <input type="text" class="form-control" name="userphone" id="userphone" placeholder="11位手机号/电话号码">
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                            <button type="button" class="btn btn-primary" id="save-btn-modal" data-dismiss="modal" onclick="changeData()">保存</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="layui-col-md9 content" style="margin-left: 60px;">
                <h1>账号设置</h1>
                <br>
                <br>
                <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
                    <ul class="layui-tab-title">
                        <li class="layui-this">基本资料</li>
                        <li>安全设置</li>
                        <li>收货地址</li>
                    </ul>
                    <div class="layui-tab-content">
                        <div class="layui-tab-item layui-show">
                            <div>
                                <form class="form-horizontal">
                                    <div class="form-group" id="username">
                                        <label class="col-md-2 control-label" id="username-label" style="font-weight: lighter;">当前头像</label>
                                        <div class="col-md-7">
                                            <img src="../img/selfcenter/head_icon.jpg" width="80px" height="80px" alt="" title="点击修改" id="upload">
                                        </div>
                                    </div>
                                    <!-- 昵称 -->
                                    <div class="form-group" id="username">
                                        <label class="col-md-2 control-label" id="username-label" style="font-weight: lighter;">昵称</label>
                                        <div class="col-md-7">
                                            <input type="email" class="form-control" placeholder="请输入昵称">
                                        </div>
                                    </div>
                                    <!-- 真实姓名 -->
                                    <div class="form-group">
                                        <label class="col-md-2 control-label" id="realname-label" style="font-weight: lighter;">真实姓名</label>
                                        <div class="col-md-7">
                                            <input type="text" class="form-control" placeholder="请输入真实姓名">
                                        </div>
                                    </div>
                                    <!-- 性别 -->
                                    <div class="form-group">
                                        <label class="col-md-2 control-label" style="font-weight: lighter;font-size: 16px;">性别</label>
                                        <div class="col-md-2">
                                            <div class="radio" id="sex-radio">
                                                <label>
                                                    <input type="radio" name="sex">男
                                                </label>
                                                &nbsp;&nbsp;
                                                <label>
                                                    <input type="radio" name="sex">女
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 邮箱 -->
                                    <div class="form-group">
                                        <label class="col-md-2 control-label" id="email-label" style="font-weight: lighter;">邮箱</label>
                                        <div class="col-md-7">
                                            <input type="email" class="form-control" id="email" placeholder="请输入邮箱">
                                        </div>
                                    </div>
                                    <!-- 保存按钮 -->
                                    <div class="form-group">
                                        <div class="col-md-offset-2 col-md-7">
                                            <button type="submit" class="btn btn-primary" style="background-color: #008B8B; border-color: #008B8B;">保存</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!-- 安全设置 -->
                        <div class="layui-tab-item" id="security-setting">
                            <div>
                                <h4>您的基础信息</h4>
                                <br>
                                <table id="base-info">
                                    <tr>
                                        <td>会员名</td>
                                        <td>wq</td>
                                        <!-- 填会员名 -->
                                    </tr>
                                    <tr>
                                        <td>登录邮箱</td>
                                        <td>wq@qq.com</td>
                                    </tr>
                                </table>
                            </div>
                            <br>
                            <div>
                                <h4>您的安全服务</h4>
                                <br>
                            </div>
                            <div>
                                <table id="security-service">
                                    <tr>
                                        <td>安全等级</td>
                                        <td colspan="3">
                                            <div class="layui-progress">
                                                <div class="layui-progress-bar" lay-percent="40%"></div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="100px">
                                            <i class="layui-icon layui-icon-ok-circle" style="font-size: 18px; color: #008b8b;"><font style="font-size:16px;color:#000000;">已完成</font></i>
                                        </td>
                                        <td width="100px">身份认证</td>
                                        <td class="tip">用于提升账号的安全性和信任级别。认证后的有卖家记录的账号不能修改认证信息。</td>
                                        <td width="50px"><a href="#" title="">查看</a></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <i class="layui-icon layui-icon-ok-circle" style="font-size: 18px; color: #008b8b;"><font style="font-size:16px;color:#000000;">已完成</font></i>
                                        </td>
                                        <td>登录密码</td>
                                        <td class="tip">建议您定期更换密码，且设置一个包含数字和字母，并长度超过6位以上的密码。</td>
                                        <td>
                                            <a href="#" title="">修改</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <i class="layui-icon layui-icon-ok-circle" style="font-size: 18px; color: #008b8b;"><font style="font-size:16px;color:#000000;">已完成</font></i>
                                        </td>
                                        <td>
                                            绑定邮箱
                                        </td>
                                        <td class="tip">绑定邮箱后，您即可享受RCE丰富的服务，如邮箱找回密码等。</td>
                                        <td>
                                            <a href="#" title="">修改</a>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <!-- 收货地址 -->
                        <div class="layui-tab-item" id="receiver-address">
                            <div>
                                <h4 style="color: #161A6E;">收货地址</h4>
                                <hr>
                            </div>
                            <div id="layui-container">
                                <div id="delivery-info">
                                    <form class="form-horizontal" action="" method="post">
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label" style="font-weight: lighter; color: #008b8b;">新增地址</label>
                                            <div class="col-sm-10">
                                                <span style="color:red; line-height: 36px; vertical-align: middle;">*电话号码、手机号选填一项, 其余均为必填项</span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label" style="font-weight: lighter;">详细地址</label>
                                            <div class="col-sm-2">
                                                <select class="form-control" id="provinceidAdd" name="provinceidAdd" onchange="getCityAdd()">
                                                    <option>请选择</option>
                                                </select>
                                            </div>
                                            <div class="col-sm-2">
                                                <select class="form-control" id="cityidAdd" name="cityidAdd" onchange="getAreaAdd()">
                                                    <option>请选择</option>
                                                </select>
                                            </div>
                                            <div class="col-sm-2">
                                                <select class="form-control" id="areaidAdd" name="areaidAdd">
                                                    <option>请选择</option>
                                                </select>
                                            </div>
                                            <div class="col-sm-4">
                                                <input type="textarea" class="form-control" id="addressAdd" name="addressAdd" placeholder="请如实填写详细地址">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label" style="font-weight: lighter;">邮政编码</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="postcodeAdd" id="postcodeAdd" placeholder="请输入邮政编码">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label" style="font-weight: lighter;">收货人</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="usernameAdd" name="usernameAdd" placeholder="长度不超过25个字符">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label" style="font-weight: lighter;">手机号码</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="userphoneAdd" id="userphoneAdd" placeholder="电话号码、手机号选填一项">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label" style="font-weight: lighter;">电话号码</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="usertelAdd" id="usertelAdd" placeholder="电话号码、手机号选填一项">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-offset-2 col-sm-10">
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="setDefaul"> 设置为默认收货地址
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-offset-2 col-sm-10">
                                                <button type="button" class="btn save-addr-btn" onmousemove="Mouseover(this)" id="save-addre" onclick="addCurrentRow()">保存</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div id="saved-address">
                                <p style="color: #008b8b;">已保存了
                                    <span>5</span>条地址，还能保存
                                    <span id="leftover">5</span>条地址</p>
                                <br>
                                <c:if test="${!empty addressList}">
                                <table class="table table-striped table-hover" id="receive-addr" style="" bgcolor="#FFFFFF">
                                    <thead>
                                    <tr>
                                        <td>收货人</td>
                                        <td>详细地址</td>
                                        <td>邮编</td>
                                        <td>电话/手机</td>
                                        <td>操作</td>
                                        <td></td>
                                    </tr>
                                    </thead>
                                    <tbody id="user-receive-address">
                                    <c:forEach var="address" items="${addressList}">
                                    <tr class="active">
                                        <td id="username1">wq1</td>
                                        <td id="detail-addr1">地址：${address.province} &nbsp;&nbsp;${address.city} &nbsp;&nbsp;${address.area}
                                            &nbsp;&nbsp;${address.address}&nbsp;&nbsp;</td>
                                        <td id="zipcode1">712100</td>
                                        <td id="phone1">${address.userphone}&nbsp;&nbsp;</td>
                                        <td>
                                            <a href="javascript:;" class="md-trigger btn-md" onclick="getData()" data-toggle="modal" data-target="#myModal">
                                                修改
                                            </a> &nbsp;| &nbsp;
                                            <a href="javascript:;" title="" onclick="deleteCurrentRow(this)" class="del">删除</a>
                                        </td>
                                        <td class="first-td">
                                            <button type="button" class="btn btn-primary btn-xs set-default" id="toDefault1" onclick="swapRow()">设为默认
                                            </button>
                                        </td>
                                    </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                                </c:if>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="logo-nav-recommend" onmouseover="getNavRec(1)" onmouseout="removeNavRec(1)" style="display: none;">
    <div class="layui-main layui-row">
        <div class="layui-col-md2">
            <img src="../img/phone/vivonex.png">
            <p class="goods-title">vivo Nex</p>
            <p class="goods-price">3982元起</p>
        </div>
        <div class="layui-col-md2">
            <img src="../img/phone/vivonex.png">
            <p class="goods-title">vivo Nex</p>
            <p class="goods-price">3982元起</p>
        </div>
        <div class="layui-col-md2">
            <img src="../img/phone/vivonex.png">
            <p class="goods-title">vivo Nex</p>
            <p class="goods-price">3982元起</p>
        </div>
        <div class="layui-col-md2">
            <img src="../img/phone/vivonex.png">
            <p class="goods-title">vivo Nex</p>
            <p class="goods-price">3982元起</p>
        </div>
        <div class="layui-col-md2">
            <img src="../img/phone/vivonex.png">
            <p class="goods-title">vivo Nex</p>
            <p class="goods-price">3982元起</p>
        </div>
        <div class="layui-col-md2">
            <img src="../img/phone/vivonex.png">
            <p class="goods-title">vivo Nex</p>
            <p class="goods-price">3982元起</p>
        </div>
    </div>
</div>
<!--尾部-->
<div class="layui-main layui-foot">
    <div class="layui-row foot">
        <div class="layui-col-md3 foot">
            <i class="layui-icon layui-icon-util foot-icon"></i>
            <a href="">预约维修服务</a>
            <span class="layui-seperator">|</span>
        </div>
        <div class="layui-col-md3 foot">
            <i class="layui-icon layui-icon-rmb foot-icon"></i>
            <a href="">7天无理由退货</a>
            <span class="layui-seperator">|</span>
        </div>
        <div class="layui-col-md3 foot">
            <i class="layui-icon layui-icon-tips foot-icon"></i>
            <a href="">15天免费换货</a>
            <span class="layui-seperator">|</span>
        </div>
        <div class="layui-col-md3 foot">
            <i class="layui-icon layui-icon-diamond foot-icon"></i>
            <a href="">满200元包邮</a>
        </div>
    </div>
    <div class="foot-hr">
        <hr class="foot-hr">
    </div>
    <div class="foot-link">
        <div class="layui-row">
            <div class="layui-col-md9">
                <div class="layui-row">
                    <div class="layui-col-md2">
                        <h2>帮助中心</h2>
                        <li>账户管理</li>
                        <li>购物指南</li>
                    </div>
                    <div class="layui-col-md2">
                        <h2>服务支持</h2>
                        <li>售后政策</li>
                        <li>自助服务</li>
                    </div>
                    <div class="layui-col-md2">
                        <h2>线下门店</h2>
                        <li>服务网点</li>
                        <li>授权体验店</li>
                    </div>
                    <div class="layui-col-md2">
                        <h2>关于RCE</h2>
                        <li>了解RCE</li>
                        <li>加入RCE</li>
                    </div>
                    <div class="layui-col-md2">
                        <h2>关注我们</h2>
                        <li>新浪微博</li>
                        <li>联系我们</li>
                    </div>
                    <div class="layui-col-md2">
                        <h2>特色服务</h2>
                        <li>优惠券</li>
                        <li>防伪查询</li>
                    </div>
                </div>
            </div>
            <div class="layui-col-md3">
                <div class="foot-contact">
                    <h2 class="foot-tel">400-100-8754</h2>
                    <p>周一至周日8:00-18:00</p>
                    <button class="layui-btn layui-btn-primary">
                        <i class="layui-icon layui-icon-dialogue"></i>
                        <span>联系客服</span>
                    </button>
                </div>
            </div>
        </div>
    </div>
    <div class="copyright">
        <p>RCE版权所有-京ICP备10046444-京公网安备11010802020134号-京ICP证110507号</p>
    </div>
    <br>
    <br>
    <br>
</div>
<script type="text/javascript" src="/rcestore/layui/layui.js"></script>
<script type="text/javascript" src="/rcestore/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/rcestore/js/global.js"></script>
<script type="text/javascript" src="/rcestore/js/headframe.js"></script>
<script type="text/javascript" src="/rcestore/js/userInfo.js"></script>
</body>

</html>