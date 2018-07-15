<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/inc/taglibs.jsp" %>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>防诈骗提醒</title>
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
    <div class="purchase-wrapper" style="height: 800px;">
        <br>
        <div style="width: 1230px; margin: auto;">
            <div class="purchase-nav">
                <a><span>首页</span></a>
                <span>&nbsp;/&nbsp;</span>
                <a><span>帮助中心</span></a>
                <span>&nbsp;/&nbsp;</span>
                <a href="purchasetime.jsp" title="购物指南"><span>购物指南</span></a>
                <span>&nbsp;/&nbsp;</span>
                <a href="nobilk.jsp" title="防诈骗提醒"><span>防诈骗提醒</span></a>
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
                            <td><a href="postrule.jsp" title="包邮政策">包邮政策</a></td>
                        </tr>
                        <tr>
                            <td><a href="sendtime.jsp" title="发货时效">发货时效</a></td>
                        </tr>
                        <tr>
                            <td><a href="nobilk.jsp" title="防诈骗提醒"><span class="purchase-key">防诈骗提醒</span></a></td>
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
            <div class="purchase-nobilk-div-right">
                <div class="purchase-font-right-top">
                    <h1>防诈骗提醒</h1>
                </div>
                <div class="purchase-font-right-bottom">
                    <p>尊敬的RCE用户： 近期收到用户反馈，有不法分子冒充RCE工作人员通过电话和短信形式联系RCE用户进行诈骗，为避免广大用户上当受骗遭受经济损失，请您关注以下信息:
                    </p>
                    <P>
                        常见诈骗形式：
                        <br>1、冒充RCE客服打电话给受害者：抱歉，由于系统原因，您的产品订单要重新确认，请再次输入银行卡信息。
                        <br>2、以用户在RCE公司活动中奖为名，要求交保证金，骗取钱财。
                        <br>3、发送短信恭喜中大奖，让用户前往伪装成RCE官网的钓鱼网站凭验证码领取。但需要确认身份，请登录网页完善个人信息。当进入这个“钓鱼网站”，会在骗子的诱导下输入自己的信用卡信息。
                    </P>
                    <p>
                        温馨提醒：
                        <br>1、RCE官方客服热线为400-100-5678，任何业务问题RCE客服绝不会通过私人手机联系会员。如您接到可疑电话但无法判断是否属于诈骗，请务必致电RCE官方客服电话400-100-5678咨询核实，以免上当受骗，遭受不必要损失。
                        <br> 2、RCE官方网站：，如有钓鱼网站伪装成RCE官方网站，请您切勿轻信。如订单有任何问题，RCE不会通过短信/QQ给您发送链接，且无需您提供个人银行卡信息（请尤其注意银行卡密码及验证码）。
                        <br> 3、特别提醒消费者，有关RCE的客服电话，请以RCE网站公布的信息为准，谨防上当受骗。
                        <br>如果您有任何疑问或不明之处，可拨打客服电话或者登录RCE官网在线咨询相关信息！
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