<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/inc/taglibs.jsp" %>
<%--商品详情--%>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>商品信息</title>
    <link rel="stylesheet" href="${path}/css/style.css">
    <link rel="stylesheet" href="${path}/css/detail.css">
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${path}/layui/css/layui.css" media="all">
</head>

<body> <!-- 3是版本数量，需要改 -->
<div>
    <!-- 导航 -->
    <div>
        <div class="row">
            <div class="col-md-10">
                <ol class="breadcrumb">
                    <li><a href="#">商品名1</a></li>
                    <li class="active">商品名2</li>
                </ol>
            </div>
            <!-- <div class="col-md-2">
                <a href="#" title="">概述</a>
            </div> -->
        </div>

    </div>
    <!-- 商品详情 -->
    <div id="detail-div">
        <div class="row">
            <div class="col-md-1">

            </div>
            <div class="col-md-5" style="border: 0px solid #EE1515;height: 1000px;">
                <!-- 这里是图片 -->
                <div id="div-img">
                    <img src="${goodsColor.get(0).get("goodsImage")}" alt="商品名" id="commodity-img">
                </div>
            </div>
            <!-- 这里是详情 -->
            <div class="col-md-4" id="detail">
                <!-- 商品名称 -->
                <h1 class="commodityName">${goods.goodsName}</h1>
                <!-- 提示 -->
                <div class="message" id="commodity-introduction">
                    <font color="#ff4a00">${goods.goodsSaleDesc}</font>${goods.goodsAttrDesc}
                </div>
                <!-- 价格 -->
                <span class="commo-price" id="price-top">
						899元
						<del>1099元</del>
					</span>
                <!-- 优惠 -->
                <div class="sale-wrap">
                    <!-- 优惠一 -->
                    <span class="coupon-tag">优惠券</span>
                    <span class="coupon-name">红米5 50元优惠券</span>
                    <a href="#" title="">立即领取</a>
                </div>
                <div class="sale-wrap">
                    <!-- 优惠二 -->
                    <span class="coupon-tag">赠品</span>
                    <span class="coupon-name">赠米粉卡</span>
                </div>
                <!-- 主体 -->
                <div class="address-wrap" style="border: 0px solid #FF6700;">
                    <!-- 分仓地址layui-icon-location -->
                    <div class="J_main">
                        <div class="user-default-address">
                            <!-- 图标 -->
                            <i class="layui-icon layui-icon-location"></i>
                            <div class="address-info">
                                <span class="item">陕西</span>
                                <span class="item">咸阳</span>
                                <span class="item">杨陵区</span>
                            </div>
                            <span class="change-address">修改</span>
                            <div class="product-status active">
                                <span class="sale" id="state">有现货</span>
                            </div>
                        </div>

                    </div>
                    <!-- 版本信息 -->
                    <div class="list-wrap">
                        <div class="pro-version-choose" id="select-version-div">
                            <div class="pro-version-choose-text">
                                选择版本
                            </div>
                            <div class="step-one" id="v">
                                <% int goodsAttrNum = 0; %>
                                <c:forEach items="${goodsRoam}" var="goodsRoamAttr">
                                    <% goodsAttrNum++;%>
                                    <% String goodsVersion = "version" + goodsAttrNum; %>
                                    <button class="layui-btn layui-btn-primary" id="<%=goodsVersion%>" onclick="
                                            changeVersion(<%=goodsAttrNum%>)">${goodsRoamAttr.get("goodsRom")}+${goodsRoamAttr.get("goodsRam")} ${goodsRoamAttr.get("goodsPrice")}元
                                    </button>

                                </c:forEach>
                            </div>
                        </div>
                        <div class="color-choose" id="select-color-div">
                            <div class="pro-version-choose-text">
                                选择颜色
                            </div>
                            <div id="color-div">
                                <% int goodsAttrColor = 0; %>
                                <c:forEach items="${goodsColor}" var="color">
                                    <% goodsAttrColor++;%>
                                    <% String goodsColor = "color" + goodsAttrColor; %>
                                    <% String goodsColorText = "colorText" + goodsAttrColor; %>
                                    <button class="layui-btn layui-btn-primary" id="<%=goodsColor%>"
                                            onclick="changeColor(<%=goodsAttrColor%>,'${color.get("goodsImage")}')">
                                        <i class="layui-icon layui-icon-circle-dot"></i>
                                        <font color="#010000" id="<%=goodsColorText%>">${color.get("goodsColor")}</font>
                                    </button>
                                </c:forEach>
                            </div>
                        </div>
                        <div class="security-service">
                            <div class="security-service-text">
                                选择RCE提供的保障服务
                                <a href="#" title="">了解保障服务</a>
                            </div>

                            <div style="padding-top: 20px; padding-left: 80px; padding-bottom: 20px; margin-top: 20px;  border:1px solid #D6D6D6;"
                                 id="border1">
                                <span class="name">意外保障服务</span>
                                <p class="desc">手机意外摔落/进水/碎屏等损坏</p>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" value="" name="chk" id="read" onclick="read()">
                                        我已阅读
                                        <a href="#" title="">保险条款</a> |
                                        <a href="#" title="">投保须知</a> |
                                        <a href="#" title="">客户告知</a> |
                                        <a href="#" title="">常见问题</a>
                                        &nbsp;&nbsp;&nbsp;&nbsp;59元
                                    </label>
                                </div>
                            </div>
                        </div>
                        <!-- 已选择的产品 -->
                        <div class="pro-list">
                            <ul id="version-list">
                                <li id="version-li">
                                    <!-- 3GB+32GB  -->
                                    <!-- <del>899元</del>
                                    <span>799元&nbsp;</span> -->
                                </li>
                                <li id="accident-service">

                                </li>
                                <li class="total-price" id="totalPrice">
                                    总计：799元
                                </li>
                            </ul>
                        </div>
                        <!-- 购买按钮 -->
                        <button class="layui-btn layui-btn-primary" id="buy-btn"
                                style="width: 298px; height: 50px; color: #ff6700; font-size: 16px; border-color: #ff6700;"
                                onmouseover="this.style.backgroundColor='	OrangeRed'; this.style.color = 'white';"
                                onmouseout="this.style.backgroundColor=''; this.style.color = 'OrangeRed';">加入购物车
                        </button>

                        <div class="pro-policy">
                            <a href="" title="">
									<span>
										<span class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span>
										<em>七天无理由退货</em>
									</span>
                                <span>
										<span class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span>
										<em>十五天质量问题换货</em>
									</span>
                                <span>
										<span class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span>
										<em>365天保修</em>
									</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-2">

            </div>
        </div>
    </div>
</div>


<div id="bottom-nav" style="border: 0px solid #E91717;">
    <!-- 导航 -->
    <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
        <ul class="layui-tab-title" style="text-align: center; font-size: 30px;">
            <li class="layui-this">概述</li>
            <li>参数</li>
            <li>晒单评价</li>
        </ul>
        <div class="layui-tab-content"
             style="text-align: center; justify-content: center;align-items: center; display: flex;">
            <div class="layui-tab-item layui-show" align="center">
                <div class="imgLayout">
                    <%--<span id="span1">${goods.goodsName}</span>
                    <span id="span2">${goodsDesc.get(0).get("total1")}</span>
                    <span id="span3">￥699<font size="4px">起</font></span>--%>
                    <img src="${goodsDesc.get(0).get("img")}" id="gaishuimg">
                </div>
                <div class="imgLayout" style="width: 50%; margin-top: 40px; margin-bottom: 40px;" align="center"
                     id="tb">
                    <table rules="all">
                        <tr>
                            <td>
                                <span class="span4"><b>${goodsDesc.get(1).get("screen1")}</b></span> <br>
                                <span><font color="#b0b0b0">${goodsDesc.get(1).get("screen2")}</font></span>
                            </td>
                            <td>
                                <span class="span4"><b>${goodsDesc.get(2).get("battery1")} </b></span><br>
                                <span><font color="#b0b0b0">${goodsDesc.get(2).get("battery2")}</font></span>
                            </td>
                            <td>
                                <span class="span4"><b>${goodsDesc.get(4).get("preCamera1")}</b></span><br>
                                <span><font color="#b0b0b0">${goodsDesc.get(4).get("preCamera2")}</font></span>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span class="span4">${goodsDesc.get(5).get("camera1")}<b></b></span> <br>
                                <span><font color="#b0b0b0">${goodsDesc.get(5).get("camera2")}</font></span>
                            </td>
                            <td>
                                <span class="span4"><b>${goodsDesc.get(3).get("cpu1")}</b></span><br>
                                <span><font color="#b0b0b0">${goodsDesc.get(3).get("cpu2")}</font></span>
                            </td>
                            <td>
                                <span class="span4"><b>${goodsDesc.get(6).get("system1")}</b></span><br>
                                <span><font color="#b0b0b0">${goodsDesc.get(6).get("system2")}</font></span>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="imgLayout">
                    <%--<span id="span5">${goodsDesc.get(1).get("screen2")}</span>
                    <span id="span6">${goodsDesc.get(1).get("screen1")}</span>
                    <span id="span7">${goodsDesc.get(1).get("screen3")}</span>--%>
                    <%--<span id="span8">与机身设计相得益彰，屏幕点亮瞬间绚丽夺目。</span>--%>
                    <img src="${goodsDesc.get(1).get("img")}" style="width:100% ;height: 100%;">
                </div>
                <div id="game" style="margin-top: 50px;">
                    <span class="playGame">玩游戏</span><br>
                    <span class="playGame">视野更广，先发制胜</span><br><br>
                    <span style="font-size: 15px; color: #727171;">比 16:9 的手机显示区域更多，提前发现敌人位置，助你一击制胜。</span><br>
                    <!-- <div style="border: 0px solid #F53333; margin-top: 50px; width: 45%; float: left;">
                        <img src="img/detail/红米5/index_game_list1.jpg" alt="" width="80%" style="margin-left: 18%;">
                    </div> -->
                    <!-- <div style="border: 0px solid #F42727; margin-top: 50px; width: 45%; float: left;">
                        <img src="img/detail/红米5/index_game_list2.jpg" alt="" width="85%" style="margin-right: -45px;">
                    </div> -->
                    <div style="border: 0px solid #F53333; margin-top: 50px; width: 100%; float: left;">
                        <img src="${path}/img/goods/小米8/index_game_list1.jpg" alt="" width="60%"
                             style="margin-left: 5%;">
                    </div>
                    <div style="clear:both; margin-top: 50px; width: 100%; float: left;">
                        <span style="margin-left: 5%; font-size: 20px; color: #838282;">16:9 屏幕比例 5.5" </span>
                    </div>
                    <!-- <div style="border: 0px solid #F42727; margin-top: 50px; width: 45%; float: left;">
                        <span style="">18:9 屏幕比例 5.99" 红米5 Plus</span>
                    </div> -->
                </div>
                <div style=" clear:both; padding: 100px;">
                    <table id="tb2">
                        <tr>
                            <td>
                                屏幕玻璃侧边精抛<br>
                                <font size="3px" style="letter-spacing: 1px; font-weight: lighter;">将碎屏率再降低30%</font>
                            </td>
                            <td>
                                加厚中框四角厚度 <br>
                                <font size="3px" style="letter-spacing: 1px; font-weight: lighter;">降低四角触地时碎屏几率</font>
                            </td>
                            <td>
                                双重保护听筒话筒 <br>
                                <font size="3px" style="letter-spacing: 1px; font-weight: lighter;">避免长时间使用后音量变小</font>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="imgLayout">
                    <%--<span id="span9">${goodsDesc.get(2).get("battery2")}</span>
                    <span id="span10">${goodsDesc.get(2).get("battery1")}</span>
                    <span id="span11">${goodsDesc.get(2).get("battery3")}</span>--%>
                    <%--<span id="span12">* 红米：3300mAh ；红米 Plus：4000mAh</span>--%>
                    <img src="${goodsDesc.get(2).get("img")}" width="100%">
                </div>
                <div class="imgLayout">
                    <%--<span id="span13">${goodsDesc.get(3).get("cpu2")}</span>
                    <span id="span14">${goodsDesc.get(3).get("cpu1")}</span>
                    <span id="span15">${goodsDesc.get(3).get("cpu3")}</span>--%>
                    <%--<span id="span16">更有超低的功耗表现。</span>--%>
                    <img src="${goodsDesc.get(3).get("img")}" alt="" width="100%">
                </div>
                <!-- <img src="img/detail/红米5/处理器.png" alt="" width="1200px" height="800px"> -->
                <div class="imgLayout">
                    <%--<span id="span17">${goodsDesc.get(4).get("preCamera2")}</span>
                    <span id="span18">${goodsDesc.get(4).get("preCamera1")}</span>
                    <span id="span19">${goodsDesc.get(4).get("preCamera3")}</span>--%>
                    <%--<span id="span20">更有智能美颜3.0，让肤色白皙自然。</span>--%>
                    <img src="${goodsDesc.get(4).get("img")}" alt="" width="100%">
                </div>
                <div class="imgLayout">
                    <%--<span id="span21">${goodsDesc.get(5).get("camera2")}</span>
                    <span id="span22">${goodsDesc.get(5).get("camera1")}</span>
                    <span id="span23">${goodsDesc.get(5).get("camera3")}</span>--%>
                    <img src="${goodsDesc.get(5).get("img")}" alt="" width="100%">
                </div>
                <div class="imgLayout">
                    <%--<span id="span24">${goodsDesc.get(6).get("system2")}</span>
                    <span id="span25">${goodsDesc.get(6).get("system1")}</span>
                    <span id="span26">${goodsDesc.get(6).get("system3")}</span>--%>
                    <img src="${goodsDesc.get(6).get("img")}" alt="" width="100%">
                </div>
                <div class="imgLayout">
                    <span id="span27">附送 TPU 极简保护壳</span>
                    <img src="${path}/img/goods/小米8/index_extend.jpg" alt="" width="100%">
                </div>
            </div>
            <!-- 参数 -->
            <div class="layui-tab-item" style="border: 0px solid #DD4C4C; width: 80%;" id="params">
                <table style="width: 100%; height: 100%;" id="table-param">
                    <tr>
                        <td width="30%" class="paramName">处理器</td>
                        <td width="70%">
                            <div class="content1">
                                骁龙 845 旗舰处理器<br>
                            </div>
                            <div class="content2">
                                骁龙845 最高主频 2.8GHz <br>
                            </div>
                            <div class="content3 bottom-content">
                                Adreno 630 图形处理器 最高主频 710MHz
                            </div>
                        </td>
                    </tr>
                    <tr><!-- 内存与容量 -->
                        <td class="paramName">内存与容量</td>
                        <td>
                            <table>
                                <tr>
                                    <td>
                                        <div class="content1 bottom-content">
                                            6GB+256GB <br>
                                        </div>
                                    </td>
                                    <td width="50%">
                                        <div class="content2">
                                            6GB LPDDR4x 双通道大内存 <br>
                                        </div>
                                        <div class="content3 bottom-content">
                                            可选64GB/128GB/256GB 机身存储 UFS
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr><!-- 屏幕 -->
                        <td width="30%" class="paramName">屏幕</td>
                        <td width="70%">
                            <div class="content1">
                                6.21英寸 三星 AMOLED 屏幕<br>
                            </div>
                            <div class="content2">
                                2248 x 1080 FHD+，402 PPI <br>
                            </div>
                            <div class="content3">
                                600nit (HBM)，430nit (typ)
                            </div>
                            <div class="content3">
                                60000:1(min) 高对比度
                            </div>
                            <div class="content3">
                                DCI-P3 色域
                            </div>
                            <div class="content3">
                                支持 AOD 熄屏显示
                            </div>
                            <div class="content3">
                                支持无级色温调节 | 标准模式
                            </div>
                            <div class="content3">
                                支持阳光屏 | 护眼模式
                            </div>
                            <div class="content3 bottom-content">
                                支持HDR显示
                            </div>
                        </td>
                    </tr>
                    <tr><!-- 相机 -->
                        <td class="paramName">相机</td>
                        <td>
                            <table>
                                <tr>
                                    <td>
                                        <div class="content1">
                                            AI 超感光双摄 <br>
                                        </div>
                                        <div class="content4">
                                            DxO超百分相机
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="content2">
                                            12MP 广角镜头，4轴光学防抖，f/1.8<br>
                                        </div>
                                        <div class="content3 bottom-content">
                                            12MP 长焦镜头，人像镜头，f/2.4
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="paramName">
                            充电与电池
                        </td>
                        <td>
                            <div class="content2">
                                3400mAh （typ）/ 3300mAh (min)<br>
                            </div>
                            <div class="content3">
                                有线充电支持 QC 4.0+ 快充协议*
                            </div>
                            <div class="content3">
                                USB Type-C 双面充电接口
                            </div>
                            <div class="content3">
                                内置电池，免更换
                            </div>
                            <div class="content2">
                                手机支持QC4+快充协议，<br>
                            </div>
                            <div class="content3 bottom-content">
                                标配18W QC3.0充电器
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="paramName">
                            网络与制式
                        </td>
                        <td>
                            <div class="content1">
                                全网通 5.0 <br>
                            </div>
                            <div class="content4">
                                支持双卡不限运营商，均可4G驻网①
                            </div>
                            <div class="content2">
                                双Nano-SIM卡槽，任意卡槽均可设置为主卡<br>
                            </div>
                            <div class="content3">
                                支持移动/联通/电信 4G+/4G/3G/2G
                            </div>
                            <div class="content3">
                                支持双卡VoLTE高清语音②
                            </div>
                            <div class="content2">
                                注1： 是否支持4G取决于当地运营商网络；两张电信卡不能同时使用
                            </div>
                            <div class="content3">
                                注2： 受限于运营商网络和业务部署，当前仅支持中国移动<br>
                            </div>
                            <div class="content3">
                                VoLTE业务，后续可通过软件升级支持其他运营商VoLTE需求
                            </div>
                            <div class="content2 title">
                                支持频段<br>
                            </div>
                            <div class="content2">
                                GSM B2 / B3 / B5 / B8
                            </div>
                            <div class="content3">
                                CDMA 1X/EVDO BC0
                            </div>
                            <div class="content3">
                                WCDMA B1 / B2 / B4 / B5 / B8
                            </div>
                            <div class="content3">
                                TD-SCDMA B34 / B39
                            </div>
                            <div class="content3">
                                TD-LTE B34 / B38 / B39 / B40 / B41 (120MHz)
                            </div>
                            <div class="content3">
                                FDD-LTE B1 / B2 / B3 / B4 / B5 / B7 / B8 / B12 / B17 / B20
                            </div>
                            <div class="content2">
                                LTE B41 4天线技术，可支持 4×4 MIMO<br>
                            </div>
                            <div class="content2 title">
                                无线网络<br>
                            </div>
                            <div class="content2">
                                支持协议 802.11a/b/g/n/ac
                            </div>
                            <div class="content3">
                                支持 2.4G WiFi / 支持 5G WiFi / 支持 WiFi Direct
                            </div>
                            <div class="content3">
                                支持 WiFi 2x2 MIMO技术，支持MU-MIMO
                            </div>
                            <div class="content3">
                                支持 WiFi Display
                            </div>
                            <div class="content3">
                                支持 蓝牙5.0
                            </div>
                            <div class="content3 bottom-content">
                                支持 AAC/aptX/aptX-HD音频
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="paramName">外观尺寸</td>
                        <td>
                            <div class="content2">
                                高度：154.9mm；
                            </div>
                            <div class="content3">
                                宽度：74.8mm；
                            </div>
                            <div class="content3">
                                厚度：7.6mm；
                            </div>
                            <div class="content3 bottom-content">
                                重量：175g
                            </div>
                        </td>
                    </tr>
                    <tr class="content5">
                        <td class="paramName">传感器</td>
                        <td>
                            <div class="sensor1" style="text-align: left;">
                                <ul>
                                    <li>距离传感器</li>
                                    <li>陀螺仪</li>
                                    <li>加速感应器</li>
                                    <li>电子罗盘</li>
                                </ul>
                            </div>
                            <div class="bottom-content"
                                 style="margin-bottom: 35px; text-align: left; margin-top: 10px;">
                                <ul>
                                    <li>振动马达</li>
                                    <li>气压计</li>
                                    <li>霍尔传感器</li>
                                    <li>环境光传感器</li>
                                </ul>
                            </div>

                        </td>
                    </tr>
                    <tr>
                        <td class="paramName">包装清单</td>
                        <td>
                            <div class="content2 bottom-content sensor1">
                                手机主机 / 保护套 / 电源适配器 / USB Type-C 数据线 / Type-C TO AUDIO 转接线 / 插针 / 三包凭证 / 入门指南
                            </div>
                        </td>
                    </tr>
                </table>
            </div>

            <div class="layui-tab-item">评价晒单</div>
        </div>
    </div>
</div>

<script type="text/javascript" src="${path}/js/decorate.js"></script>
<script type="text/javascript" src="${path}/layui/layui.js"></script>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="${path}/js/jquery-3.3.1.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script type="text/javascript">
    $('.carousel').carousel({
        interval: false
    })
    //注意：选项卡 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function () {
        var element = layui.element;

        //…
    });
</script>
<script>
    $(window).scroll(function () {
        var st = $(this).scrollTop();
        if (st >= 700) {
            $(".div-img img").attr("style", "position:absolute;");
            $("#commodity-img").css("bottom", "10px");
        } else {
            $(".div-img img").attr("style", "position:fixed;");
        }
        console.log(st);
    });

</script>

</body>
</html>