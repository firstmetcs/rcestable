<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/inc/taglibs.jsp" %>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>服务记录</title>
	<link rel="stylesheet" type="text/css" href="${path}/layui/css/layui.css">
	<link rel="stylesheet" type="text/css" href="${path}/css/global.css">
	<link rel="stylesheet" type="text/css" href="${path}/css/headframe.css">
	<link rel="stylesheet" type="text/css" href="${path}/css/footframe.css">
	<link rel="stylesheet" type="text/css" href="${path}/css/selfcenter.css">
	<link type="text/css" rel="stylesheet" href="${path}/css/apply-exchange.css">
	<link type="text/css" rel="stylesheet" href="${path}/css/after-apply.css">
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
							<dd><a href="selfcenter.html">个人中心</a></dd>
							<dd><a href="">退出登录</a></dd>
						</dl>
					</li>
					<li class="layui-nav-item"><a href="">消息通知<span class="layui-badge">9</span></a></li>
					<li id="myBookList" class="layui-nav-item"><a href="orderList.html">我的订单</a></li>
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
				<a href="/">首页</a>
				<a ><cite>申请服务</cite></a>
			</span>
			<div class="layui-row">
				<br>
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
							<li><a href="selfcenter.html">我的个人中心</a></li>
							<li><a href="message.html">消息通知</a></li>
							<li><a href="coupon.html">优惠券</a></li>
						</ul>
						<ul>
							<h3>售后服务</h3>
							<li><a href="../../user/servicerecord.jsp">服务记录</a></li>
							<li><a href="applyservice.jsp" style="color: #008b8b">申请服务</a></li>
						</ul>
					</div>
				</div>
				<div class="layui-col-md9 content" style="margin-left: 60px;">
					<h1>申请服务</h1>
					<br>
					<br>

					<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
						<ul class="layui-tab-title">
							<li class="layui-this">服务申请</li>
							<li>服务说明</li>
						</ul>
						<div class="layui-tab-content">
							<div class="layui-tab-item layui-show">
								<div class="booklist-detail">
									<br>
									<div class="listdetail">
										<div class="nonelist">暂没有服务记录</div>
										<div class="listdetail">
											<div class="pro-support">
												<div class="afterapply-main">
												    <div class="afterapply-gap"></div>
												    <form name="applyForm" autocomplete="off" >
												      <div class="afterapply-modmain afterapply-modcomm">
												        <div class="afterapply-top">
												          <h3>申请售后</h3>
												          <div class="afterapply-extra">
												            <a href="./after-sale.html" target="_blank" class="afterapply-repair-btn margin">售后政策</a>
												            <a class="afterapply-repair-btn afterapply-margin" href="" title="联系卖家">联系卖家</a>
												          </div>
												        </div>
												        <div class="afterapply-toptable">
												          <table class="afterapply-tb-void afterapply-mb10">
												           <thead>
												             <tr>
												               <th width="260">商品名称</th>
												               <th width="280">商品价格</th>
												               <th width="170">赠送清单</th>
												               <th width="105">购买数量</th>
												             </tr>
												           </thead>
												           <tbody>
												            <tr>
												              <td>
												                <ul class="afterapply-list-proinfo">
												                  <li class="afterapply-fore1">
												                   <a href="" target="_blank">
												                    <img alt="商品图片" src="${goodsImg}"></a>
												                    <div class="afterapply-p-info"><a href="${pageContext.request.contextPath}/goods/findGood?goodsId=${goodsId}" target="_blank">${goodsName}</a></div>
												                  </li>
												                </ul>
												              </td>
												              <td>${goodsPrice}</td>
												              <td>-</td>
												              <td>${goodsNum}</td>
												            </tr>
												           </tbody>
												          </table>
												        </div>
												        <div class="afterapply-form">
												          <div class="afterapply-item">
												            <div class="afterapply-margin2">
												              <span><em>*</em><span> 温馨提示：</span></span><label>本次售后服务将由官方<span>RCE电子商城</span> 为您提供</label><br>&nbsp;&nbsp;
												            </div>
												          </div>
												          <div class="afterapply-repair-steps" id="repairSteps">
												            <!--核心区域-->
												            <div id="mainarea" name="mainarea" class="afterapply-repair-step-curr" title="">
												              <form>
												                <div class="afterapply-item" style="float: left;">
												                  <span class="afterapply-label"><em>*</em>服务类型</span>
												                  <div class="afterapply-face">
												                    <ul id="customerExpect" class="afterapply-list-type afterapply-list-new-type">
												                      <input type="hidden" id="isPopzulin" name="isPopzulin" value>
												                      <li name="returngoods" id="returngoods" class="afterapply-selected">
												                        <a href="javascript:void(0);" onclick="changeApplyType(this)" title="退货">退货<b></b></a>
												                      </li>
												                      <li name="exchangegoods" id="exchangegoods" class="afterapply-selected">
												                        <a href="javascript:void(0);" onclick="changeApplyType(this)" title="换货">换货<b></b></a>
												                      </li>
												                      <li name="maintaingoods" id="maintaingoods" class="afterapply-selected">
												                        <a href="javascript:void(0);" onclick="changeApplyType(this)" title="维修">维修<b></b></a>
												                      </li>
												                    </ul>
												                  </div>
												                </div>
												                <div id="return-style" class="afterapply-item" style="float: left;display: none;">
												                  <span class="afterapply-label"><em>*</em>退款方式:</span>
												                  <div class="afterapply-face">
												                    <a href="javascript:void(0);" class="afterapply-applyreturn-layui-inputway">		原支付方式返回
												                    	<img style="width: 20px;" src="${path}/img/paysuccess.png">
												                    </a>
												                  </div>
												                  <div class="afterapply-tips">
												                    <span class="afterapply-apply-return-span">&nbsp;&nbsp;请您联系客服询问退款时效或查看通用时效标准</span>
												                  </div>
												                </div>
												                <div class="afterapply-item" style="float: left;">
												                  <span class="afterapply-label"><em>*</em>提交数量:</span>
												                  <div class="afterapply-face">
												                    <input id="subnum"type="text" name="">
												                  </div>
												                </div>
												                <div id="after-apply-exchange" class="afterapply-item" style="float: left;display: none;">
												                  <span class="afterapply-label"><em>*</em>申请原因:</span>
												                  <div class="afterapply-face">
												                    <div class="afterapply-applyreturn-layui-input-block">
												                      <select id="exchangeps"class="afterapply-applyreturn-select" name="applyreason" onchange="applyremindreturn()";>
												                        <option value="无">------请选择------</option>
												                        <option value="发票问题" data-desc="发票问题">发票问题</option>
												                        <option value="七天无理由退换" data-desc="请注意保持商品的完好，寄回全套商品（包含附件，赠品等）">七天无理由退换</option>
												                        <option value="商品与描述不符" data-desc="建议您描述问题">商品与描述不符</option>
												                        <option value="质量原因" data-desc="商品在保修期内产生质量问题可申请此原因维修">质量原因</option>
												                        <option value="发错货" data-desc="建议您提供有效凭证，包含商品照片或物流凭证等">发错货</option>
												                        <option value="其他" data-desc="请描述具体问题，建议您先与客服沟通确认">其他</option>
												                      </select>
												                      <span id="applyreturn-applydescribe1">&nbsp;&nbsp;如果是因为发票存在问题请选择“发票问题”</span>
												                      <span id="applyreturn-applydescribe2">&nbsp;&nbsp;请注意保持商品的完好，寄回全套商品（包含附件，赠品等）</span>
												                      <span id="applyreturn-applydescribe3">&nbsp;&nbsp;建议您描述问题，请尽量描述具体以方便参考</span>
												                      <span id="applyreturn-applydescribe4">&nbsp;&nbsp;商品在保修期内产生质量问题可申请此原因维修</span>
												                      <span id="applyreturn-applydescribe5">&nbsp;&nbsp;建议您提供有效凭证，包含商品照片或物流凭证等</span>
												                      <span id="applyreturn-applydescribe6">&nbsp;&nbsp;请描述具体问题，建议您先与客服沟通确认</span>
												                    </div>
												                  </div>
												                </div>
												                <div id="after-apply-maintain" class="afterapply-item" style="float: left;display: none;">
												                  <span class="afterapply-label"><em>*</em>申请原因:</span>
												                  <div class="afterapply-face">
												                    <div class="afterapply-applyexchange-layui-input-block">
												                      <select id="fixps"class="afterapply-applyexchange-select" name="applyreason2" onchange="applyremindexchange();">
												                        <option value="无">------请选择------</option>
												                        <option value="误购" data-desc="请注意保持商品的完好，建议您先与客服沟通（换货请注明换货商品型号或颜色尺寸）">误购</option>
												                        <option value="质量原因" data-desc="商品在保修期内产生质量问题可申请此原因维修（换货请注明换货商品型号或颜色尺寸）">质量原因</option>
												                        <option value="发错货" data-desc="建议您提供有效凭证，包含商品照片或物流凭证等（换货请注明换货商品型号或颜色尺寸）">发错货</option>
												                        <option value="商品与描述不符" data-desc="建议您描述相关问题并提供相关凭证或联系客服（换货请注明换货商品型号或颜色尺寸）">商品与描述不符</option>
												                        <option value="其他" data-desc="请描述具体问题，建议您先与客服沟通确认（换货请注明换货商品型号或颜色尺寸）">其他</option>
												                      </select>
												                      <span id="applyexchange-applydescribe1">&nbsp;&nbsp;请注意保持商品的完好，建议您先与客服沟通</span>
												                      <span id="applyexchange-applydescribe2">&nbsp;&nbsp;商品在保修期内产生质量问题可申请此原因维修</span>
												                      <span id="applyexchange-applydescribe3">&nbsp;&nbsp;建议您提供有效凭证，包含商品照片或物流凭证等</span>
												                      <span id="applyexchange-applydescribe4">&nbsp;&nbsp;建议您描述相关问题并提供相关凭证或联系客服</span>
												                      <span id="applyexchange-applydescribe5">&nbsp;&nbsp;请描述具体问题，建议您先与客服沟通确认</span>
												                    </div>
												                    <div class="afterapply-moretips">
												                      <span>（换货请注明换货商品型号或颜色尺寸）</span>
												                    </div>
												                  </div>
												                </div>
												                <div id="after-apply-return" class="afterapply-item" style="float: left;display: none;">
												                  <span class="afterapply-label"><em>*</em>申请原因:</span>
												                  <div class="afterapply-face">
												                    <div class="afterapply-applymaintain-layui-input-block">
												                      <select id="returnps" class="afterapply-applymaintain-select" name="applyreason3" onchange="applyremindmaintain();">
												                        <option value="无">--请选择--</option>
												                        <option value="质量原因" data-desc="商品在保修期内产生质量问题可申请此原因维修">质量原因</option>
												                        <option value="其他" data-desc="请描述具体问题，建议您先与客服沟通确认">其他</option>
												                      </select>
												                      <span id="applymaintain-applydescribe1">&nbsp;&nbsp;商品在保修期内产生质量问题可申请此原因维修</span>
												                      <span id="applymaintain-applydescribe2">&nbsp;&nbsp;请描述具体问题，建议您先与客服沟通确认</span>
												                    </div>
												                  </div>
												                </div>
												                <div class="afterapply-item" style="float: left;">
												                  <span class="afterapply-label"><em>*</em>问题描述:</span>
												                  <div class="afterapply-face">
												                    <div class="afterapply-applyreturn-layui-input-block2">
												                      <textarea  id="reason" placeholder="请描述产品的问题" class="afterapply-applyreturn-layui-textarea"></textarea>
												                      <div class="afterapply-applyreturn-layui-input-blockbottom">0-200字即可</div>
												                    </div>
												                  </div>
												                </div>
												              </form>
												            </div>
												            <!--确认信息-->
												            <div id="after-apply-default" style="display: none;" class="afterapply-repair-step">
												              <div class="afterapply-mt-10">
												                <strong>确认信息</strong>
												              </div>
												              <div class="afterapply-item">
												                <span class="afterapply-label">&nbsp;&nbsp;申请凭据</span>
												                <div class="afterapply-face">
												                  <label>有发票</label>
												                </div>
												              </div>
												              <div class="afterapply-item" style="float: left;">
												                <span class="afterapply-label"><em>*</em>返回方式:</span>
												                <div class="afterapply-face">
												                  <label>快递自发</label>
												                </div>
												              </div>
																<div class="afterapply-item" style="float: left;">
																	<span class="afterapply-label"><em>*</em>客户姓名:</span>
																	<div class="afterapply-face">
																		<label>${address.username}</label>
																	</div>
																</div>
												              <div class="afterapply-item" style="float: left;">
												                <span class="afterapply-label"><em>*</em>用户收货地址:</span>
												                <div class="afterapply-face">
												                  <label>${address.address}</label>
												                </div>
												              </div>
												              <div class="afterapply-item" style="float: left;">
												                <span class="afterapply-label"><em>*</em>返联系电话:</span>
												                <div class="afterapply-face">
												                  <label>${address.userphone}</label>
												                </div>
												              </div>
												              <div class="afterapply-item" style="float: left;">
												                <span class="afterapply-label">&nbsp;&nbsp;&nbsp;备注:</span>
												                <div class="afterapply-face">
												                  <div class="afterapply-applyreturn-layui-input-block">
												                    <textarea placeholder="请输入您要强调的信息" class="afterapply-applyreturn-layui-textarea"></textarea>
												                  </div>
												                </div>
												              </div>
												              <div class="afterapply-applyreturn-layui-form-item">
												                <center><span class="afterapply-span-white">提交服务单后，售后专员可能与您电话沟通，请保持手机畅通</span></center>
												              </div>
												            </div>
												          </div>
												        </div>
												      </div>
												    </form>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="layui-tab-item">
								<div class="booklist-detail">
									<br>
									<div class="nonelist">暂没有服务记录</div>
									<div class="listdetail">
										<div class="pro-support">
											<div class="aftersale-conent">
												<div class="aftersale-top-list">
													<p class="aftersale-p1">服务支持</p>
													<p class="aftersale-p2">我们为您提供以下帮助</p>
												</div>
												<div class="aftersale-right-list">
													<div class="aftersale-div1">
														<div class="aftersale-d1">
															<p class="aftersale-p1">售后服务</p>
														</div>
														<div class="aftersale-d2">
															<p class="aftersale-p1">选择主题：</p>
															<a  href="#skip8A2C9C6357740FB2015774A04AC80014">未收到货，仅退款</a> <a
																href="#skip0000000054C178A00154C20030B90026"s>退换货政策</a> <a
																href="#skip0000000054C178A00154C2059B520027">退换货流程</a> <a
																href="#skip0000000054C178A00154C206699F0028">退款说明</a>
														</div>
													</div>

													<div class="aftersale-div2">
														<div class="aftersale-d1">
															<p id="skip8A2C9C6357740FB2015774A04AC80014" class="aftersale-p1">未收到货，仅退款</p>
														</div>
														<div class="aftersale-d2">
															<div class="aftersale-p1">
																<p class="aftersale-Text">
																	<b>·付款后我可以取消订单吗？</b>
																</p>
																<p class="aftersale-Text">
																	付款后无法取消订单，您可以在订单信息页面点击“申请售后”进行申请退款。如果您订购的商品订单状态为“已签收”，您可以在线申请退货或换货。
																</p>
																<p class="aftersale-Text">
																	<br />
																</p>
																<p class="aftersale-MsoNormal">
																	<b>·提交申请后多久可以审核完毕？<span></span></b>
																</p>
																<p class="aftersale-MsoNormal">
																	您成功提交申请后，我们将于<span>2</span>个工作日内审核完毕。
																</p>
																<p class="aftersale-MsoNormal">
																	<br />
																</p>
																<p class="aftersale-Text">
																	<b>·审核通过后，退款什么时候到账？<span></span></b>
																</p>
																<p class="aftersale-Text">
																	我们将在<span>7</span>个工作日内为您退款，但您的银行卡收到退款的具体时间取决于您发卡银行的内部政策和操作惯例。任何与退款将何时退回您账户有关的问题，请联系您的发卡银行。
																</p>
																<p>
																	<br />
																</p>
															</div>
														</div>
													</div>


													<div class="aftersale-div2">
														<div class="aftersale-d1">
															<p id="skip0000000054C178A00154C20030B90026" class="aftersale-p1">退换货政策</p>
														</div>
														<div class="aftersale-d2">
															<div class="aftersale-p1">
																<p class="aftersale-Text">
																	<span>本政策适用于本网站的所有商品。本网站商品由本网站为您提供退换货服务，您可在线提交申请办理退换货事宜。质保期内由官方零售店及授权店为您提供保修服务。<span></span></span>
																</p>
																<p class="aftersale-Text">
																	<span><br /> </span>
																</p>
																<p class="aftersale-Text">
																	<b><span>· 售后承诺<span></span></span></b>
																</p>
																<p class="aftersale-Text">
																	<span>所有商品凭发票均可以享受生产厂家的全国联保服务或指定服务商联保服务，本网站将严格按照国家三包政策、新消法以及本《退换货政策》，对所售商品履行换货和退货的义务。<span></span></span>
																</p>
																<p class="aftersale-Text">
																	<span><br /> </span>
																</p>
																<p class="aftersale-Text">
																	<span><b>· 退换货情形</b></span>
																</p>
																<p class="aftersale-Text">本平台支持以下两类退换货情形：</p>
																<p class="aftersale-Text">（一）7天无理由退货；</p>
																<p class="aftersale-Text">（二）15天内性能故障等质量问题引起的退换货。</p>
																<p class="aftersale-Text">
																	<br />
																</p>
																<p class="aftersale-Text">
																	15天以上，在质保期内享受免费保修等三包服务，保修详情浏览相关手机官方网站联系客服寻求解决方案，也可前往当地授权的零售商或维修点咨询。
																</p>
																<p class="aftersale-Text">
																	<br />
																</p>
																<p class="aftersale-Text">
																	7日无理由退货的商品，需保持外观完整、包装完整、附件齐全；且商品返回运费需由您承担；如返回商品存在以下情况，无法办理7日无理由退货，将以到付方式寄回给您：
																</p>
																<p class="aftersale-Text">1. 任何非本网站出售给您的商品（IMEI码不符）；</p>
																<p class="aftersale-Text">2. 商品外观存在人为损坏或改动痕迹；</p>
																<p class="aftersale-Text">3. 自签收次日起已超过7天；</p>
																<p class="aftersale-Text">4. 发票（如有）缺失或涂改；</p>
																<p class="aftersale-Text">
																	<br />
																</p>
																<p>
																	<b><span>· 退换货规则</span></b>
																</p>
																<p class="aftersale-Text">
																	<b><span><b><span><img src="${path}/img/afterSale/return-require.png" alt="" /><br /> </span></b> </span></b>
																</p>
																<p class="aftersale-Text">
																	<b><b><span><br /> </span></b></b>
																</p>
																<p class="aftersale-Text">
																	<b><b><span> </span></b></b>
																</p>
																<p class="aftersale-Text">
																	<b><b><b>· 注意事项：</b></b></b><br /> 1. 因手机激活后可能需要绑定手机ID，影响商品的完好性，此种情况不在无理由退货范围内，同时请勿使用第三方软件对系统进行升级或改装，否则机器将无法享受三包政策，敬请谅解！
																</p>
																<p class="aftersale-Text">2.
																	如手机激活后，出现功能性故障或质量问题，请到官方或授权零售店/维修点进行检测并进行换新及维修处理，或联系客服咨询维修流程。换新只针对主机，附件不更换；
																</p>
																<p class="aftersale-Text">
																	3. 手机官方或授权零售店/维修点查询：<a href="https://wwww.baidu.com/cn/zh/"
																						   target="_blank">https://www.baidu.com/cn/zh/</a><b><b>
																</b></b>
																</p>
																<p class="aftersale-Text">
																	<b><br /> </b>
																</p>
																<div>
																	<b><b><b><b></b></b> </b></b>
																</div>
																<p>
																	<br />
																</p>
																<p class="aftersale-Text">
																	<b><b><span>· 送达时间判定标准<span></span></span></b> </b>
																</p>
																<p>
																	<b><span> </span> </b>
																</p>
																<p class="aftersale-Text">
																	<span>以您实际签收日期为准。</span>
																</p>
																<p class="aftersale-Text">
																	<b><b><span><br /> </span></b> </b>
																</p>
																<p class="aftersale-Text">
																	<b><b><span>· 配送与签收<span></span></span></b> </b>
																</p>
																<p class="aftersale-Text">
								<span>1.
									在您收到商品时，请务必检查是否存在因运输过程造成的损坏、破碎等外观损坏，或原装配件缺失、缺少发票等缺少附件问题，如您发现以上情况，请选择拒收；<span></span>
								</span>
																</p>
																<p class="aftersale-Text">
																	<span>2. 如因您个人或您授权的其他个人代签收的商品，视同您已在收货时确认商品完好。<span></span></span>
																</p>
																<p class="aftersale-Text">
																	<b><b><span><br /> </span></b> </b>
																</p>
																<p class="aftersale-Text">
																	<b><b><span>· 退换货商品附件要求<span></span></span></b> </b>
																</p>
																<p class="aftersale-Text">
								<span>退换货（包含有质量问题的商品）时，请务必将商品的内带附件、赠品（如有）、保修卡、说明书、发票（如有）、<span>服务报告单</span>（针对需凭<span>服务报告单</span>办理退换货的商品）等随同商品一起退回。
								</span>
																</p>
																<p class="aftersale-Text">
																	<span><br /> </span>
																</p>
																<p class="aftersale-Text">
																	<b><b><span>· 办理申请方式<span></span></span></b> </b>
																</p>
																<p class="aftersale-Text">
								<span>如果您需要办理退换货，请按照以下方式在线申请：登录网站<span>-</span>点击用户名<span>-</span>订单信息<span>-</span>找到该订单<span>-</span>点击申请售后，进入后选择退货或换货，并根据提示在线提交申请信息。
								</span>
																</p>
																<p class="aftersale-Text">
																	<span></span>
																</p>
																<p class="aftersale-Text">
																	<b><span><br /> </span> </b>
																</p>
																<p class="aftersale-Text">
																	<b><span>· 温馨提醒：<span></span></span> </b>
																</p>
																<p class="aftersale-Text">
																	<span>1. 建议妥善保管商品的外包装、附件、赠品至少<span>15</span>天，退换货时附商品的原外包装；<span></span></span>
																</p>
																<p class="aftersale-Text">
																	<span>2.&nbsp;商品送货时您需与送货人员开箱验机（外观），开箱后如产品有外观缺陷缺附件问题的，可直接拒收，签收后发生的外观损坏缺件等问题因此导致问题，会影响您的退换货办理。</span>
																</p>
															</div>
														</div>
													</div>



													<div class="aftersale-div2">
														<div class="aftersale-d1">
															<p id="skip0000000054C178A00154C2059B520027" class="aftersale-p1">退换货流程</p>
														</div>
														<div class="aftersale-d2">
															<div class="aftersale-p1">
																<p class="aftersale-Text">
																	<span>本网站为您提供了在线受理退换货的服务，您可在申请退换货前了解退换货相关条款，确认符合退换货标准后，您只需：登录网站<span>-</span>点击用户名<span>-</span>订单信息<span>-</span>找到该订单<span>-</span>点击申请售后，进入后选择退货或换货，并根据提示在线提交申请信息即可。<span></span></span>
																</p>
																<p class="aftersale-Text">
																	<span><br /> </span>
																</p>
																<p>
																	<b><span>退换货流程</span></b>
																</p>
																<p>
																	<img src="${path}/img/afterSale/return-process.png" alt="" />
																</p>
																<p>
																	<br />
																</p>
																<p>
																	<strong><b><span>· 具体流程说明</span></b></strong>
																</p>
																<p>
																	<img src="${path}/img/afterSale/con-process.png" alt="" />
																</p>
																<p>
																	<br/>
																</p>
																<p class="aftersale-Text">
																	<b><span>· 售后申请在哪里查看进度？<span></span></span></b>
																</p>
																<p class="aftersale-Text">
																	<span>登录<span>-</span>点击用户名<span>-</span>订单信息<span>-</span>找到该订单<span>-</span>点击查看售后进度。<span></span></span>
																</p>
																<p class="aftersale-Text">
																	<b><span><br /> </span></b>
																</p>
																<p class="aftersale-Text">
																	<b><span>· 提交申请后发现出错如何修改？<span></span></span></b>
																</p>
																<p class="aftersale-Text">
																	<span> </span>
																</p>
																<p class="aftersale-Text">
																	提<span>交申请后您将无法修改申请信息，您可以：</span>
																</p>
																<p class="aftersale-Text">
																	<span></span>
																</p>
																<p class="aftersale-Text">
																	1. 点击查看售后进度，自行撤销申请，然后重新申请；<span></span>
																</p>
																2. 点击页面右侧的在线客服，联系我们为您处理。
																<p class="aftersale-Text">
																	<br />
																</p>
																<p class="aftersale-Text">
																	<b>· 我提交申请后想要撤销申请，怎么办？</b>
																</p>
																<p class="aftersale-Text">
								<span>您可以点击用户名<span>-</span>订单信息<span>-</span>找到该订单<span>-</span>点击查看售后进度，进入后点击<span>“</span>撤销申请<span>”</span>进行撤销。
								</span>
																</p>
																<p class="aftersale-Text">
																	<span><br /> </span>
																</p>
																<p class="aftersale-Text">
																	<b><span>· 提交申请后多久可以审核完毕？<span></span></span></b>
																</p>
																<p class="aftersale-Text">
								<span>您成功提交申请后，我们将于<span>2</span>个工作日内审核完毕。<span></span>
								</span>
																</p>
																<p class="aftersale-Text">
																	<b><span><br /> </span></b>
																</p>
																<p class="aftersale-Text">
																	<b><span>· 是否能申请更换同等价格的不同商品？<span></span></span></b>
																</p>
																<p class="aftersale-Text">
																	<span>换货只能换同一型号、同一存储容量的商品，无法更换其他商品或其他型号；若您需要更换商品颜色，在价格一致和库存条件允许的情况下可以更换。<span></span></span>
																</p>
																<p class="aftersale-Text">
																	<b><span><br /> </span></b>
																</p>
																<p class="aftersale-Text">
																	<b><span>· 办理退换货需要多长时间？<span></span></span></b>
																</p>
																<p class="aftersale-Text">
								<span>一般情况下，退货处理周期（不包含检测时间）如下：<br />
									退货：自接收到退货商品之日起7日之内处理完成；<br /> 换货：自接收到换货商品之日起15日之内处理完成；<br />
									该周期的起始时间以售后登记到货品之日起算的。<br />
								</span>
																</p>
																<p>
																	<br />
																</p>
																<p>
																	<b><strong>·&nbsp;</strong></b><strong>检测需要多长时间？</strong><br />
																	收到退换货商品后，我们将于2个工作日内检测完毕。
																</p>
																<div></div>
																<p>
																	<br />
																</p>
																<p class="aftersale-Text">
																	<b><span>· 退货时需要我把商品邮寄回去，我可以使用哪些快递？<span></span></span></b>
																</p>
																<p class="aftersale-Text">
																	<span>一般情况下请您选择顺丰快递，顺丰无法接收的情况下请选择<span>EMS</span>。<span></span></span>
																</p>
																<p class="aftersale-Text">
																	<b><span><br /> </span></b>
																</p>
																<p class="aftersale-Text">
																	<b><span>· 退换货地址是哪里？<span></span></span></b>
																</p>
																<p class="aftersale-Text">
								<span>审核通过后，您可在“订单信息<span>-</span>查看售后进度<span>”</span>中，查看到您需要寄送的地址。
								</span>
																</p>
																<p>
																	<br />
																</p>
																<p class="aftersale-Text">
																	<b><span>· 退换货，运费是否可以使用到付？<span></span></span></b>
																</p>
																<p class="aftersale-Text">
																	<span>我们不接受到付的快递；根据退换货规则，若是质量问题换货，请您先垫付运费，收到商品后我们会向您返还运费。<span></span></span>
																</p>
																<p class="aftersale-Text">
																	<span><br /> </span>
																</p>
																<p class="aftersale-Text">
								<span><b>·&nbsp;</b>温馨提示：贵重商品建议您保价寄出，寄出后，请您尽快填写物流信息。如果由于您未及时填写物流信息导致退换货流程延误甚至丢件，本平台不承担任何责任。<br />
								</span>
																</p>
															</div>
														</div>
													</div>


													<div class="aftersale-div2">
														<div class="aftersale-d1">
															<p id="skip0000000054C178A00154C206699F0028" class="aftersale-p1">退款说明</p>
														</div>
														<div class="aftersale-d2">
															<div class="aftersale-p1">
																<p class="aftersale-Text">
																	<b><span>· 退款方式<span></span></span></b>
																</p>
																<p class="aftersale-Text">
																	<span>情况一：未收货或收货前退货，审核成功后，我们将按原支付方式原路退回；<span></span></span>
																</p>
																<p class="aftersale-Text">
																	<span>情况二：退货退款的情况，符合退货条件的，商品入库后，我们将按原支付方式原路退回。</span>
																</p>
																<p class="aftersale-Text">
																	<b><span><br /> </span></b>
																</p>
																<p class="aftersale-Text">
																	<b><span>· 退款说明<span></span></span></b>
																</p>
																<p class="aftersale-Text">
																	<span>信用卡退款：退款金额将原路返还。<span></span></span>
																</p>
																<p class="aftersale-Text">
																	<span>温馨提示：若因卡注销等异常状态导致退款失败，请在订单信息页面点击在线问答，联系我们为您办理退款事宜。<span></span></span>
																</p>
																<p class="aftersale-Text">
																	<b><span><br /> </span></b>
																</p>
																<p class="aftersale-Text">
																	<b><span>· 退款周期<span></span></span></b>
																</p>
																<p>
																	<span>我们将在收到退货商品并检测完成后的7个工作日内向您退款。请您注意，尽管我们将在7个工作日内向您退款，但您的银行卡收到退款的具体时间取决于您发卡银行的内部政策和操作惯例。任何与退款将何时退回您账户有关的问题，请联系您的发卡银行。</span>
																</p>
																<p>
																	<br />
																</p>
															</div>
														</div>
													</div>

												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
    <center> <button class="afterapply-applyreturn-layui-btn" id="after-submit2" onclick="submitAfterApply()">确认无误后请提交</button></center>
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
	<script src="${path}/js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="${path}/layui/layui.js"></script>
	<script type="text/javascript" src="${path}/js/global.js"></script>
	<script type="text/javascript" src="${path}/js/headframe.js"></script>
	<script src="${path}/js/after-apply.js" charset="utf-8"></script>
	<script type="text/javascript">


		function changeApplyType(obj) {
            var applyType=$(obj).attr("title");
            $("#mainarea").attr("title",applyType);
           console.log( $("#mainarea").attr("title"));

        }
        function submitAfterApply2() {
            var versionInfo=$("#version-li").html();

            $.ajax({
                type: "post",
                url: "${path}/goods/findGoodsAttrIdByVersion",
                dataType: "json",
                data: {"goodsVersion": versionInfo},

                success: function (data) {
                    window.location.href = "${path}/shoppingCart/addinto?goodsid=${goods.goodsId}&goodsattrid="+data;
                },
                error: function (data) {
                    //  alert("失败");
                }
            });
        }
        function submitAfterApply() {
        var orderId=${orderId};
        var userId=${address.userid};
        var goodsAttrId=${goodsAttrId};

        var index= $("#mainarea").attr("title");
        if(index=="退货"){
            var postscript=$("#returnps").val();
            var type="退货";
        }else if(index=="换货"){
            var postscript=$("#exchangeps").val();
            var type="换货";
        }else{
            var postscript=$("#fixps").val();
            var type="维修";
        }
         var num=$("#subnum").val();
         var reason=$("#reason").val();

            $.ajax({
                type: "post",
                url: "${path}/afterSale/addGoodsAfter",
                dataType: "json",
                data: {"orderId": orderId,"userId":userId,"goodsAttrId":goodsAttrId,"postscript":postscript,"type": type,"num":num,"reason":reason},

                success: function (data) {

                   window.location.href = "${path}/afterSale/userAfterCenter?userId="+data;
                },
                error: function (data) {
                     alert("失败");
                }
            });

        }



	</script>
</body>
</html>