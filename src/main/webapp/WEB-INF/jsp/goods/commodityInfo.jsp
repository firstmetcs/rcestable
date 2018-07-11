<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>商品信息</title>
	
	<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="/rcestore/layui/css/layui.css" media="all">
	<link rel="stylesheet" type="text/css" href="/rcestore/css/detail.css">
	<link rel="stylesheet" href="/rcestore/css/commodityInfo.css">
	<link rel="stylesheet" type="text/css" href="/rcestore/css/placeTop.css">
	<link rel="stylesheet" type="text/css" href="/rcestore/css/recommend.css">
</head>
<body>
	<div class="OnlineService_Bg">
		<div class="OnlineService_Box">
			<!-- <ul class="OnlineService_QQBox">
				<li>
					<a target="_blank" rel="nofollow" href=""></a>
				</li>
			</ul> -->
			<div class="OnlineService_Phone">
				<a href="" target="">联系客服</a>
			</div>
			<div class="OnlineService_Top">
				<a href="">返回顶部</a>
			</div>
		</div>
	</div>
	<div class="recommend-position">
		<div class="recommend-title">
			精品推荐
		</div>
		<div>
			<c:forEach items="${goodsRecList}" var="goodRec">
			<div>
			    <div class="single_pic">
			        <a href="#" target="_blank" alt="">
			            <img src="${goodRec.get("image")}" />
			        </a>
			    </div>
			    <div class="commo-describe">
			        <a href="" target="" alt="">${goodRec.get("goods").goodsName}</a>
			        <br>
			    </div>
			    <div class="align-center">
			    	<span><b>${goodRec.get("price")}</b></span>
			    </div>
			</div>
			</c:forEach>
		</div>
	</div>
	<div>
		<!-- 导航 -->
		<!-- <div class=row">
			  <div class="col-lg-10">
			  	<ol class="breadcrumb">
				  <li><a href="">商品名1</a></li>
				  <li class="active">商品名2</li>
				</ol>
			  </div>
			</div>
		</div> -->
		<!-- 商品详情 -->
		<div class="minwidth">
			<div class="row">
				<div class="col-lg-1">
					
				</div>
				<div class="col-lg-5">
					<!-- 这里是图片 -->
					<div class="div-img">
						<img src="${goodsColor.get(0).get("goodsImage")}" alt="商品名" id="commodity-img">
					</div>
				</div>
				<!-- 这里是详情 -->
				<div class="col-lg-4" style="position: relative;">
					<!-- 商品名称 -->
					<h1 class="commodityName">${goods.goodsName}</h1>
					<!-- 提示 -->
					<div class="message commodity-introduction">
						<font color="#008b8b">「${goods.goodsSaleDesc}」</font>${goods.goodsAttrDesc}
					</div>
					<!-- 价格 -->
					<span class="commo-price" id="price-top">
						899元
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
					<div class="address-wrap">
						<!-- 分仓地址layui-icon-location -->
						<div>
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
						<div class="marginTop40px">
							<div class="pro-version-choose" id="select-version-div">
								<div class="pro-version-choose-text">
									选择版本
								</div>
								<div id="sel-version">
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
							</div>
							<div class="security-service">
								<div class="security-service-text">
									选择RCE提供的保障服务
									<a href="#" title="">了解保障服务</a>
								</div>
								
								<div id="security-service-div">
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
										
									</li>
									<li id="accident-service">

									</li>
									<li class="total-price" id="totalPrice">
										总计：799元
									</li>
								</ul>
							</div>
							<!-- 购买按钮 -->
							<button class="layui-btn layui-btn-primary" 
							id="buy-btn" 
							onmouseover="this.style.backgroundColor='#008b8b'; this.style.color = 'white';" 
							onmouseout="this.style.backgroundColor=''; 
								this.style.color = '#008b8b';" >
								加入购物车
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
				<div class="col-lg-2">

				</div>
			</div>
		</div>
	</div>
	<center>
		<div id="bottom-nav">
			<!-- 导航 -->
			<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
			  <ul class="layui-tab-title centerAlign"  style=" font-size: 30px;">
			    <li class="layui-this">概述</li>
			    <li>参数</li>
				  <li>晒单评价</li>
			  </ul>
			  <div class="layui-tab-content centerAlign" style="justify-content: center;align-items: center; display: flex;">
			  	<div class="layui-tab-item layui-show" align="center" id="imgcontainer">
					<div class="imgLayout">
						<%--<span id="span1">红米5</span>
						<span id="span2">千元全面屏</span>
						<span id="span3">￥699<font size="4px">起</font></span>--%>
						<img src="${goodsDesc.get(0).get("img")}" id="gaishuimg" class=".img-retina">
					</div>
					<div class="imgLayout" style="width: 50%; margin-top: 40px; margin-bottom: 40px;" align="center" id="tb">
						<table rules="all">
							<tr>
								<td>
									<span class="span4"><b>${goodsDesc.get(1).get("screen1")}</b></span> <br>
									<span><font color="#b0b0b0">${goodsDesc.get(1).get("screen2")}</font></span></td>
								<td>
									<span class="span4"><b>${goodsDesc.get(2).get("battery1")}</b></span><br>
									<span><font color="#b0b0b0">${goodsDesc.get(2).get("battery2")}</font></span>
								</td>
								<td>
									<span class="span4"><b>${goodsDesc.get(4).get("preCamera1")}</b></span><br>
									<span><font color="#b0b0b0">${goodsDesc.get(4).get("preCamera2")}</font></span>
								</td>
							</tr>
							<tr>
								<td>
									<span class="span4"><b>${goodsDesc.get(5).get("camera1")}</b></span> <br>
									<span><font color="#b0b0b0">${goodsDesc.get(5).get("camera2")}</font></span></td>
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
						<%--<span id="span5">新一代手机屏幕标准</span>
						<span id="span6">18:9 全面屏</span>
						<span id="span7">定制 5.99" 大屏，圆角屏幕设计，圆润、优雅，</span>
						<span id="span8">与机身设计相得益彰，屏幕点亮瞬间绚丽夺目。</span>--%>
						<img src="${goodsDesc.get(1).get("img")}" style="width: 100%;height: 100%;">
					</div>
					<div class="marginTop50px">
						<span class="playGame">玩游戏</span><br>
						<span class="playGame">视野更广，先发制胜</span><br><br>
						<span style="font-size: 15px; color: #727171;">比 16:9 的手机显示区域更多，提前发现敌人位置，助你一击制胜。</span><br>
						<div class="marginTop50px width100 floatLeft">
							<img src="/rcestore/img/goods/小米8/index_game_list1.jpg" alt="" width="60%" style="margin-left: 5%;">
						</div>
						<div class="marginTop50px width100 floatLeft">
							<span class="screen-ratio">16:9 屏幕比例 5.5" </span>
						</div>&ndash;%&gt;
					</div>
					<div class="clearBoth" style="padding: 100px;">
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
						<%--<span id="span9">17 天超长续航</span>
						<span id="span10">4000mAh 大电量</span>
						<span id="span11">高通 14nm 低功耗处理器，MIUI 系统省电优化，一口气看 15 小时视频也不在话下。</span>
						<span id="span12">* 红米5：3300mAh ；红米5 Plus：4000mAh</span>--%>
						<img src="${goodsDesc.get(2).get("img")}" width="100%">
					</div>
			  		<div class="imgLayout">
			  			<%--<span id="span13">流畅运行大型游戏</span>
			  			<span id="span14">14nm 骁龙八核处理器</span>
			  			<span id="span15">系统级游戏加速，不仅轻松运行大型游戏，</span>
			  			<span id="span16">更有超低的功耗表现。</span>--%>
			  			<img src="${goodsDesc.get(3).get("img")}" alt="" width="100%">
			  		</div>
			  		<!-- <img src="img/detail/红米5/处理器.png" alt="" width="1200px" height="800px"> -->
			  		<div class="imgLayout">
			  			<%--<span id="span17">暗光依然明亮动人</span>
			  			<span id="span18">前置柔光自拍</span>
			  			<span id="span19">柔光灯如晨光般柔和，自拍时为你补充自然光，</span>
			  			<span id="span20">更有智能美颜3.0，让肤色白皙自然。</span>--%>
			  			<img src="${goodsDesc.get(4).get("img")}" alt="" width="100%">
			  		</div>
			  		<div class="imgLayout">
						<%--<span id="span21">摄影大片般出色画质</span>
						<span id="span22">1.25μm 大像素相机</span>
						<span id="span23">1.25μm 大像素，12 MP 高画质相机，白天夜晚，都可稳定清晰地成像。</span>--%>
			  			<img src="${goodsDesc.get(5).get("img")}" alt="" width="100%">
			  		</div>
					<div class="imgLayout">
						<%--<span id="span24">更流畅，更省电</span>
						<span id="span25">MIUI 9 快如闪电</span>
						<span id="span26">MIUI 9 不仅应用启动速度快，更拥有传送门、手机分屏等快捷功能。</span>--%>
						<img src="${goodsDesc.get(6).get("img")}" alt="" width="100%">
					</div>
					<div class="imgLayout">
						<span id="span27">附送 TPU 极简保护壳</span>
						<img src="/rcestore/img/goods/小米8/index_extend.jpg" alt="" width="100%">
					</div>
			  	</div>
				<div class="layui-tab-item" style="width: 80%;">
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
								<div class="bottom-content" style="margin-bottom: 35px; text-align: left; margin-top: 10px;">
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
				<div class="layui-tab-item">
	                    <table width="800px">
	                        <div class="evaluation">
	                            评价晒单
	                        </div>
	                        <tbody>
	                            <tr>
	                                <td valign="top">
	                                    <!-- 头像 -->
	                                    <div class="user-img" style="">
	                                        <img src="img/head/head.jpg" alt="" width="80px" height="80px">
	                                    </div>
	                                    <div class="user-name">
	                                    	用户名1
	                                    </div>
	                                </td>
	                                <td>
	                                	<div class="null">
	                        		
	                        			</div>
	                                	<div class="star-div">
	                                		<i class="layui-icon">&#xe67a;</i> 
	                                		<i class="layui-icon">&#xe67a;</i> 
	                                		<i class="layui-icon">&#xe67a;</i> 
	                                		<i class="layui-icon">&#xe67a;</i> 
	                                		<i class="layui-icon">&#xe67a;</i> 
	                                	</div>
	                                    <!-- 消息 -->
	                                    <div class="msg">
	                                        <!-- 文字消息 -->
	                                        刚收到就戴上了，感觉萌萌哒刚收到就戴上了，感觉萌萌哒刚收到就戴上了，感觉萌萌哒刚收到就戴上了，感觉萌萌哒刚收到就戴上了，感觉萌萌哒刚收到就戴上了，感觉萌萌哒刚收到就戴上了，感觉萌萌哒刚收到就戴上了，感觉萌萌哒刚收到就戴上了，感觉萌萌哒刚收到就戴上了，感觉萌萌哒刚收到就戴上了，感觉萌萌哒刚收到就戴上了，感觉萌萌哒
	                                    </div>
	                                    <div class="font16px">
	                                    	商品名 &nbsp;&nbsp;
	                                        2018-6-25 16:33
	                                    </div>
	                                </td>
	                            </tr>
	                            <tr>
	                            	
	                                <td valign="top">
	                                    <!-- 头像 -->
	                                    <div class="user-img">
	                                        <img src="img/head/head.jpg" alt="" width="80px" height="80px">
	                                    </div>
	                                    <div class="user-name">
	                                        用户名2
	                                    </div>
	                                </td>
	                                <td>
	                                	<div class="null">
	                        		
	                        			</div>
	                                	<div class="star-div">
	                                		<i class="layui-icon">&#xe67a;</i> 
	                                		<i class="layui-icon">&#xe67a;</i> 
	                                		<i class="layui-icon">&#xe67a;</i> 
	                                		<i class="layui-icon">&#xe67a;</i> 
	                                		<i class="layui-icon">&#xe67a;</i> 
	                                	</div>
	                                    <!-- 消息 -->
	                                    <div class="msg">
	                                        <!-- 文字消息 -->
	                                        还可以，特别轻！就是好像和我不太搭配还可以，特别轻！就是好像和我不太搭配还可以，特别轻！就是好像和我不太搭配还可以，特别轻！就是好像和我不太搭配还可以，特别轻！就是好像和我不太搭配还可以，特别轻！就是好像和我不太搭配还可以，特别轻！就是好像和我不太搭配
	                                    </div>
	                                    <div class="font16px">
	                                    	商品名 &nbsp;&nbsp;
	                                        2018-6-25 16:35
	                                    </div>
	                                </td>
	                            </tr>
	                        </tbody>
	                    </table>
	            </div>
			  </div>
			</div> 
		</div>
	</center>
	<form>
		<input type="text" name="goodsPrice" value="1099"  id="goodsPrice" 
		class="displayNone">
		<input type="text" name="goodsVersionRom" value="3GB" id="goodsVersionRom" class="displayNone">
		<input type="text" name="goodsVersionRam" value="32GB" id="goodsVersionRam" class="displayNone">
		<input type="text" name="goodsColor" value="黑色" id="goodsColor" 
		class="displayNone">
	</form> 
	
	<script type="text/javascript" src="js/commodityInfo.js"></script>
	<script type="text/javascript" src="./layui/layui.js"></script>
	<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <script type="text/javascript">
    	$('.carousel').carousel({
		  interval: false
		})

		//注意：选项卡 依赖 element 模块，否则无法进行功能性操作
		layui.use('element', function(){
		  var element = layui.element;
		  
		  //…
		});
    </script>

	<script type="text/javascript">
	   $(window).scroll(function ()
		{
			var st = $(this).scrollTop();
			if (st >= 700) {
				$(".div-img img").attr("style","position:absolute;");
				$("#commodity-img").css("bottom","10px");
			}else{
				$(".div-img img").attr("style","position:fixed;");
			}
			// console.log(st);
			if(st <= 560){
				// $("#cart_content").attr("style","position:absolute;");
				// $("#cart_content").attr("style","padding-top:350%;");
			}else{
				// $("#reco").attr("style","display:block;position:fixed");
				// $("#reco").attr("style","position:none;");
			}
			//1308时出现推荐
		});
	</script>
</body>
</html>