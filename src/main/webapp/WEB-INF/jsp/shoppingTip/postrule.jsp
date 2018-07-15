<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/inc/taglibs.jsp" %>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>包邮政策</title>
    <link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="../css/global.css">
    <link rel="stylesheet" type="text/css" href="../css/headframe.css">
    <link rel="stylesheet" type="text/css" href="../css/footframe.css">
    <link rel="stylesheet" type="text/css" href="../css/selfcenter.css">
    <link rel="stylesheet" type="text/css" href="../css/userInfo.css">
    <link rel="stylesheet" href="../css/purchaseguiding.css" type="text/css">
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
                    <li id="index-login" class="layui-nav-item"><a href="../login/login.html">登录</a></li>
                    <li id="index-register" class="layui-nav-item"><a href="../login/register.html">注册</a></li>
                    <li id="index-username" class="layui-nav-item">
                        <a href="javascript:;"><img src="http://t.cn/RCzsdCq" class="layui-nav-img">koala1280</a>
                        <dl class="layui-nav-child">
                            <dd><a href="">个人中心</a></dd>
                            <dd><a href="">退出登录</a></dd>
                        </dl>
                    </li>
                    <li class="layui-nav-item"><a href="">消息通知<span class="layui-badge">9</span></a></li>
                    <li id="index-myBookList" class="layui-nav-item"><a href="">我的订单</a></li>
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
            <a class="logo" href="../index.jsp"><img src="../img/logo.png"></a>
            <div class="logo-nav">
                <ul class="layui-logo-nav">
                    <li class="layui-nav-item logo-nav-1" onmouseover="getNavRec(1)" onmouseout="removeNavRec(1)"><a href="javascript:;">荣耀</a></li>
                    <li class="layui-nav-item logo-nav-2" onmouseover="getNavRec(2)" onmouseout="removeNavRec(2)"><a href="javascript:;">华为</a></li>
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
    <div class="purchase-wrapper" style="height: 900px;">
        <br>
        <div style="width: 1230px; margin: auto;">
            <div class="purchase-nav">
                <a><span>首页</span></a>
                <span>&nbsp;/&nbsp;</span>
                <a><span>帮助中心</span></a>
                <span>&nbsp;/&nbsp;</span>
                <a href="purchasetime.jsp" title="账户管理"><span>购物指南</span></a>
                <span>&nbsp;/&nbsp;</span>
                <a href="postrule.jsp" title="忘记密码"><span>包邮政策</span></a>
            </div>
            <div class="purchase-leftsidebar">
                <table class="purchase-leftsidebar-toptable">
                    <tbody>
                        <tr>
                            <th>购物指南</th>
                        </tr>
                        <tr>
                            <td><a href="purchasetime.jsp" title="购买时间">购买时间</a></td>
                        </tr>
                        <tr>
                            <td><a href="postrule.jsp" title="包邮政策"><span class="purchase-key">包邮政策</a></td>
                        </tr>
                        <tr>
                            <td><a href="sendtime.jsp" title="发货时效">发货时效</span></a></td>
                        </tr>
                        <tr>
                            <td><a href="nobilk.jsp" title="防诈骗提醒">防诈骗提醒</a></td>
                        </tr>
                        <tr>
                            <td><a href="orderpay.jsp" title="下单及支付时效">下单及支付时效</a></td>
                        </tr>
                    </tbody>
                </table>
                <table class="purchase-leftsidebar-bottomtable">
                    <tbody>
                        <tr>
                            <tr>
                                <td><a href="../service.html" target="_block" title="联系客服">联系客服</a></td>
                            </tr>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="purchase-postrule-div-right">
                <div class="purchase-font-right-top">
                    <h1>包邮政策</h1>
                </div>
                <div class="purchase-font-right-bottom">
                    <p>一、官网满多少元包邮？
                        <br>以您实际支付150元为基准包邮，特殊商品如体重秤、大家电等单独收取快递费用。
                    </p>
                    <p>
                        二、为什么订单满150元还要支付快递费用？
                        <br>1.“满150元免邮费”是指实际支付金额超过150元。
                        <br>2.订单中是否有特殊商品需要单独支付邮费。
                        <br>3.虚拟商品（如安装服务）单独购买不承担运费；虚拟商品和其他商品一起购买时，不参与满150元即免邮的活动。
                        <img class="purchase-img-large" src="../icon/purchaseguiding/pt2.jpg">
                    </p>
                </div>
            </div>
        </div>
    </div>
    <!-- </div> -->
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
                            <li><a href="../account/common-problem.html" target="_blank">账户管理</a></li>
                            <li><a href="purchasetime.jsp">购物指南</a></li>
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
                            <li><a href="../aboutrce.html" target="_blank">了解RCE</a></li>
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
    <script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript" src="../layui/layui.js"></script>
    <script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../js/global.js"></script>
    <script type="text/javascript" src="../js/headframe.js"></script>
    <script type="text/javascript" src="../js/userInfo.js"></script>
</body>

</html>