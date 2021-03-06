<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/inc/taglibs.jsp" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>服务记录</title>
    <link rel="stylesheet" type="text/css" href="../layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="../css/global.css">
    <link rel="stylesheet" type="text/css" href="../css/headframe.css">
    <link rel="stylesheet" type="text/css" href="../css/footframe.css">
    <link rel="stylesheet" type="text/css" href="../css/selfcenter.css">
</head>

<body>
    <!--头部导航-->
    <div class="layui-top-nav top-nav">
        <div class="layui-main">
            <div class="top-nav-nav-left">
                <ul class="layui-nav">
                    <li class="layui-nav-item layui-this"><a href="">RCE商城</a></li>
                    <li class="layui-nav-item"><a href="">广告合作</a></li>
                    <li class="layui-nav-item"><a href="">开放平台</a></li>
                </ul>
            </div>
            <div class="top-nav-nav-right">
                <ul class="layui-nav">
                    <li id="login" class="layui-nav-item"><a href="login/login.html">登录</a></li>
                    <li id="register" class="layui-nav-item"><a href="">注册</a></li>
                    <li id="username" class="layui-nav-item">
                        <a href="javascript:;"><img src="http://t.cn/RCzsdCq" class="layui-nav-img">koala1280</a>
                        <dl class="layui-nav-child">
                            <dd><a href="">个人中心</a></dd>
                            <dd><a href="">退出登录</a></dd>
                        </dl>
                    </li>
                    <li class="layui-nav-item"><a href="">消息通知<span class="layui-badge">9</span></a></li>
                    <li id="myBookList" class="layui-nav-item"><a href="">我的订单</a></li>
                    <li class="layui-nav-item">
                        <a href="">购物车</a>
                        <dl class="layui-nav-child usercart">
                            <dd><a href="">购物车为空...</a></dd>
                        </dl>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="layui-top-nav logo-top-nav">
        <div class="layui-main">
            <a class="logo" href="index.html"><img src="../img/logo.png"></a>
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
				<a href="../index.jsp">首页</a>
				<a ><cite>服务记录</cite></a>
			</span>
            <div class="layui-row">
                <br>
                <div class="layui-col-md2 content">
                    <div class="left-nav">
                        <ul>
                            <h3>订单中心</h3>
                            <li><a href="3ist.html">我的订单</a></li>
                            <li><a href="commentlist.html">评价晒单</a></li>
                            <li><a href="insurance.html">意外保</a></li>
                        </ul>
                        <ul>
                            <h3>个人中心</h3>
                            <li><a href="">我的个人中心</a></li>
                            <li><a href="message.html">消息通知</a></li>
                            <li><a href="coupon.html">优惠券</a></li>
                        </ul>
                        <ul>
                            <h3>售后服务</h3>
                            <li><a href="servicerecord.jsp" style="color: #008b8b">服务记录</a></li>
                            <li><a href="applyservice.html">申请服务</a></li>
                        </ul>
                    </div>
                </div>
                <div class="layui-col-md9 content" style="margin-left: 60px;">
                    <h1>服务记录</h1>
                    <br>
                    <br>
                    <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
                        <div class="layui-tab-content">
                            <div class="listdetail">
                                <table class="layui-table">
                                    <tr>
                                        <th>订单编号</th>
                                        <th>商品信息</th>
                                        <th>问题描述</th>
                                        <th>服务种类</th>
                                        <th>申请状态</th>
                                    </tr>
                                    <c:forEach items="${goodsAfterSaleList}" var="goodsAfterSale">
                                    <tr>
                                        <td>${goodsAfterSale.get("goodsAfterSale").orderId}</td>
                                        <td ><a style="color: #008B8B" href="${pageContext.request.contextPath}/goods/findGood?goodsId=${goodsAfterSale.get("goodsId")}">${goodsAfterSale.get("goodsName")}</a></td>
                                        <td>${goodsAfterSale.get("goodsAfterSale").postscript}</td>
                                        <td style="color: #008B8B">${goodsAfterSale.get("goodsAfterSale").afterSaleType}</td>
                                        <td style="color: red">${goodsAfterSale.get("status")}</td>
                                    </tr>
                                    </c:forEach>
                                </table>
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
    <div class="layui-main">
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
    <script type="text/javascript" src="../layui/layui.js"></script>
    <script type="text/javascript" src="../js/global.js"></script>
    <script type="text/javascript" src="../js/headframe.js"></script>
    <script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
   <!--  <script type="text/javascript">
    function show(i) {
        var v = document.getElementById(i);
        if (v.style.display == "none") {
            v.style.display = "inline";
        }
    }
    </script> -->
</body>

</html>