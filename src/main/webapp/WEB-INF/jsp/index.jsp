<%@ include file="/WEB-INF/inc/taglibs.jsp" %>
<%--
  Created by IntelliJ IDEA.
  User: LX
  Date: 2018/7/3
  Time: 10:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>RCE管理中心</title>
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
	<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta http-equiv="Cache-Control" content="no-siteapp" />
	<link rel="stylesheet" href="${path}/css/font.css">
	<link rel="stylesheet" href="${path}/css/xadmin.css">
</head>
<body>
	<!-- 顶部开始 -->
	<div class="container">
		<div class="logo"><a href="./index.jsp">RCE管理中心</a></div>
		<div class="left_open">
			<i title="展开左侧栏" class="iconfont">&#xe699;</i>
		</div>
		<ul class="layui-nav right" lay-filter="">
			<li class="layui-nav-item">
				<a href="javascript:;">admin</a>
				<dl class="layui-nav-child"> <!-- 二级菜单 -->
					<dd><a href="./login.html">退出</a></dd>
				</dl>
			</li>
			<li class="layui-nav-item to-index"><a href="/">前台首页</a></li>
		</ul>

	</div>
	<!-- 顶部结束 -->
	<!-- 中部开始 -->
	<!-- 左侧菜单开始 -->
	<div class="left-nav">
		<div id="side-nav">
			<ul id="nav">
				<li class="x-admin x-admin-user">
					<a  href="javascript:void(0);">
						<i class="iconfont">&#xe6b8;</i>
						<cite>用户管理</cite>
						<i class="iconfont nav_right">&#xe697;</i>
					</a>
					<ul class="sub-menu">
						<li>
							<a _href="member-list.html">
								<i class="iconfont">&#xe6a7;</i>
								<cite>用户列表</cite>
							</a>
						</li>
						<li>
							<a _href="member-del.html">
								<i class="iconfont">&#xe6a7;</i>
								<cite>用户删除</cite>

							</a>
						</li>
					</ul>
				</li>
				<li class="x-admin x-admin-goods">
					<a href="javascript:;">
						<i class="iconfont">&#xe6cb;</i>
						<cite>商品管理</cite>
						<i class="iconfont nav_right">&#xe697;</i>
					</a>
					<ul class="sub-menu">
						<li>
							<a _href="${path}/goods/showGoods">
								<i class="iconfont">&#xe6a7;</i>
								<cite>商品列表</cite>
							</a>
						</li >
					</ul>
				</li>
				<li class="x-admin x-admin-order">
					<a href="javascript:;">
						<i class="iconfont">&#xe723;</i>
						<cite>订单管理</cite>
						<i class="iconfont nav_right">&#xe697;</i>
					</a>
					<ul class="sub-menu">
						<li>
							<a _href="order-list.html">
								<i class="iconfont">&#xe6a7;</i>
								<cite>订单列表</cite>
							</a>
						</li >
					</ul>
				</li>
				<li class="x-admin x-admin-after-sale">
					<a href="javascript:;">
						<i class="iconfont">&#xe69e;</i>
						<cite>售后服务</cite>
						<i class="iconfont nav_right">&#xe697;</i>
					</a>
					<ul class="sub-menu">
						<li>
							<a _href="${path}/afterSale/showGoodsAfterManage">
								<i class="iconfont">&#xe6a7;</i>
								<cite>处理信息</cite>
							</a>
						</li >

					</ul>
				</li>
				<li class="x-admin x-admin-inventory">
					<a href="javascript:;">
						<i class="iconfont">&#xe6f6;</i>
						<cite>进销存管理</cite>
						<i class="iconfont nav_right">&#xe697;</i>
					</a>
					<ul class="sub-menu">
						<li>
							<a _href="${path}/goodsStock/showGoodsStock">
								<i class="iconfont">&#xe6a7;</i>
								<cite>进货管理</cite>
							</a>
						</li >
						<li>
							<a _href="${path}/goodsStock/showGoodsStockNum">
								<i class="iconfont">&#xe6a7;</i>
								<cite>库存</cite>
							</a>
						</li>
						<li>
						<a _href="${path}/goodsStock/showSettleByType">
							<i class="iconfont">&#xe6a7;</i>
							<cite>销售报表</cite>
						</a>
						</li>
					</ul>
				</li>
				<li class="x-admin x-admin-stuff">
					<a href="javascript:;">
						<i class="iconfont">&#xe726;</i>
						<cite>管理员管理</cite>
						<i class="iconfont nav_right">&#xe697;</i>
					</a>
					<ul class="sub-menu">
						<li>
							<a _href="admin-list.html">
								<i class="iconfont">&#xe6a7;</i>
								<cite>管理员列表</cite>
							</a>
						</li >
						<li>
							<a _href="admin-role.html">
								<i class="iconfont">&#xe6a7;</i>
								<cite>角色管理</cite>
							</a>
						</li >
					</ul>
				</li>
				<li>
					<a href="javascript:;">
						<i class="iconfont">&#xe6ce;</i>
						<cite>系统统计</cite>
						<i class="iconfont nav_right">&#xe697;</i>
					</a>
					<ul class="sub-menu">
						<li>
							<a _href="echarts-zigzag.html">
								<i class="iconfont">&#xe6a7;</i>
								<cite>销售报表</cite>
							</a>
						</li >
						<li>
							<a _href="echarts-cylinder.html">
								<i class="iconfont">&#xe6a7;</i>
								<cite>收支报表</cite>
							</a>
						</li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
	<!-- <div class="x-slide_left"></div> -->
	<!-- 左侧菜单结束 -->
	<!-- 右侧主体开始 -->
	<div class="page-content">
		<div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
			<ul class="layui-tab-title">
				<li class="home">
					<i class="layui-icon">&#xe68e;</i>
					我的管理中心
				</li>
			</ul>
			<div class="layui-tab-content">
				<div class="layui-tab-item layui-show">
					<iframe src='${path}/welcome.jsp' frameborder="0" scrolling="yes" class="x-iframe"></iframe>
				</div>
			</div>
		</div>
	</div>
	<div class="page-content-bg"></div>
	<!-- 右侧主体结束 -->
	<!-- 中部结束 -->
	<!-- 底部开始 -->
	<div class="footer">
		<div class="copyright">Copyright ©2018 rce-admin v1.0 All Rights Reserved</div>  
	</div>
	<!-- 底部结束 -->
	<script type="text/javascript" src="${path}/js/jquery-3.3.1.min.js"></script>
	<script src="${path}/lib/layui/layui.js" charset="utf-8"></script>
	<script type="text/javascript" src="${path}/js/xadmin.js"></script>
	<script type="text/javascript">
		var flag = 1;
		/*1:系统管理员
		  2:超级管理员
		  3:商品管理员
		  4:用户管理员
		  5:进销存管理员
		  6:订单管理员
		  7:售后管理员
		*/
		switch(flag){
			case 1:
				break;
			case 2:
				$(".x-admin-stuff").remove();
				break;
			case 3:
				$(".x-admin-inventory").remove();
				$(".x-admin-stuff").remove();
				$(".x-admin-user").remove();
				$(".x-admin-after-sale").remove();
				$(".x-admin-order").remove();
				break;
			case 4:
				$(".x-admin-inventory").remove();
				$(".x-admin-stuff").remove();
				$(".x-admin-after-sale").remove();
				$(".x-admin-order").remove();
				$(".x-admin-goods").remove();
				break;
			case 5:
				$(".x-admin-stuff").remove();
				$(".x-admin-user").remove();
				$(".x-admin-after-sale").remove();
				$(".x-admin-order").remove();
				$(".x-admin-goods").remove();
				break;
			case 6:
				$(".x-admin-inventory").remove();
				$(".x-admin-stuff").remove();
				$(".x-admin-user").remove();
				$(".x-admin-after-sale").remove();
				$(".x-admin-goods").remove();
				break;
			case 7:
				$(".x-admin-inventory").remove();
				$(".x-admin-stuff").remove();
				$(".x-admin-user").remove();
				$(".x-admin-order").remove();
				$(".x-admin-goods").remove();
				break;
		}
	</script>
</body>
</html>