<%@ include file="/WEB-INF/inc/taglibs.jsp" %>
<%--
  Created by IntelliJ IDEA.
  User: Firstmetcs
  Date: 2018/7/12/0012
  Time: 21:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="${path}/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="${path}/css/headframe.css">
    <link rel="stylesheet" type="text/css" href="${path}/css/footframe.css">
    <link type="text/css" rel="stylesheet" href="${path}/css/search-result.css">
</head>
<body>
<%@ include file="/WEB-INF/inc/top.jsp"%>


<div class="searchresult-wrapper">
    <div class="searchresult-crumbs-bar">
        <div class="searchresult-crumbs-nav">
            <div class="searchresult-crumbs-nav-main searchresult-clearfix">
                <div class="searchresult-crumbs-nav-item">
                    <div class="searchresult-crumbs-first"><a href="">全部结果</a></div>
                </div>
                <i class="searchresult-crumbs-arrow">&gt;</i>
                <div class="searchresult-crumbs-nav-item">
                    <strong class="searchresult-search-key">"${keyword}"</strong>
                </div>
            </div>
        </div>
    </div>
    <div class="searchresult-container">
        <div class="searchresult-selector">
            <div class="searchresult-brandselect">
                <div class="searchresult-firstwrap">
                    <div class="searchresult-sl-key">
                        <strong>品牌:</strong>
                    </div>
                    <div class="searchresult-sl-value">
                        <div class="searchresult-sl-v-list">
                            <ul class="searchresult-J_valueList v_fixed">
                                <li style="display: block;"><a href="" rel="nofollow" title="1">荣耀</a>
                                </li>
                                <li style="display: block;"><a href="" rel="nofollow" title="2">华为</a>
                                </li>
                                <li style="display: block;"><a href="" rel="nofollow" title="3">oppo</a>
                                </li>
                                <li style="display: block;"><a href="" rel="nofollow" title="4">vivo</a>
                                </li>
                                <li style="display: block;"><a href="" rel="nofollow" title="5">魅族</a>
                                </li>
                                <li style="display: block;"><a href="" rel="nofollow" title="6">小米</a>
                                </li>
                                <li style="display: block;"><a href="" rel="nofollow" title="7">一加</a>
                                </li>
                                <li style="display: block;"><a href="" rel="nofollow" title="8">努比亚</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="searchresult-priceselect">
                <div class="searchresult-firstwrap">
                    <div class="searchresult-sl-key">
                        <strong>价格:</strong>
                    </div>
                    <div class="searchresult-sl-value">
                        <div class="searchresult-sl-v-list">
                            <ul class="searchresult-J_valueList v_fixed">
                                <li style="display: block;"><a href="" rel="nofollow" title="1">500-1000</a>
                                </li>
                                <li style="display: block;"><a href="" rel="nofollow" title="2">1000-2000</a>
                                </li>
                                <li style="display: block;"><a href="" rel="nofollow" title="3">2000-3000</a>
                                </li>
                                <li style="display: block;"><a href="" rel="nofollow" title="4">3000以上</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="searchresult-lineselect">
                <div class="searchresult-firstwrap">
                    <div class="searchresult-sl-key">
                        <strong>屏幕尺寸:</strong>
                    </div>
                    <div class="searchresult-sl-value">
                        <div class="searchresult-sl-v-list">
                            <ul class="searchresult-J_valueList v_fixed">
                                <li style="display: block;"><a href="" rel="nofollow" title="1">4.5英寸以下</a>
                                </li>
                                <li style="display: block;"><a href="" rel="nofollow" title="2">4.6-5英寸</a>
                                </li>
                                <li style="display: block;"><a href="" rel="nofollow" title="3">5.1-5.5英寸</a>
                                </li>
                                <li style="display: block;"><a href="" rel="nofollow" title="4">5.6英寸以上</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="searchresult-spaceselect">
                <div class="searchresult-firstwrap">
                    <div class="searchresult-sl-key">
                        <strong>机身内存:</strong>
                    </div>
                    <div class="searchresult-sl-value">
                        <div class="searchresult-sl-v-list">
                            <ul class="searchresult-J_valueList v_fixed">
                                <li style="display: block;"><a href="" rel="nofollow" title="1">8GB</a>
                                </li>
                                <li style="display: block;"><a href="" rel="nofollow" title="2">16GB</a>
                                </li>
                                <li style="display: block;"><a href="" rel="nofollow" title="3">32GB</a>
                                </li>
                                <li style="display: block;"><a href="" rel="nofollow" title="4">64GB</a>
                                </li>
                                <li style="display: block;"><a href="" rel="nofollow" title="5">128GB</a>
                                </li>
                                <li style="display: block;"><a href="" rel="nofollow" title="6">128GB以上</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="searchresult-g-main2">
            <div class="searchresult-filter">
                <div class="searchresult-f-line top">
                    <div class="searchresult-f-sort">
                        <a href="javascript:;" class="searchresult-">
                            <span class="searchresult-fs-tit">综合</span>
                            <em class="searchresult-fs-down"><i class="searchresult-arrow"></i></em>
                        </a>
                        <a href="javascript:;" class="searchresult-">
                            <span class="searchresult-fs-tit">销量</span>
                            <em class="searchresult-fs-down"><i class="searchresult-arrow"></i></em>
                        </a>
                        <a href="javascript:;" class="searchresult-">
                            <span class="searchresult-fs-tit">评论数</span>
                            <em class="searchresult-fs-down"><i class="searchresult-arrow"></i></em>
                        </a>
                    </div>
                    <div class="searchresult-f-pager">
                            <span class="searchresult-fp-text">
                                <b>${pagenum}</b>
                                <em>/</em>
                                <i>${totalpages}</i>
                            </span>
                        <a class="searchresult-fp-prev" <c:if test="${pagenum==1}">href ="javascript:return false;"</c:if> <c:if test="${pagenum!=1}">href="${path}/search/pagesearch?pageNum=${pagenum-1}&keyWord=${keyword}"</c:if> title="使用方向键也可以翻到上一页"><</a>
                        <a class="searchresult-fp-next" <c:if test="${pagenum==totalpages}">href ="javascript:return false;"</c:if> <c:if test="${pagenum<totalpages}">href="${path}/search/pagesearch?pageNum=${pagenum+1}&keyWord=${keyword}"</c:if> title="使用方向键也可以翻到下一页">></a>
                    </div>
                    <div class="searchresult-f-result-sum">${totalResult}
                    </div>
                </div>
            </div>
            <div class="searchresult-goods-list-v2">
                <ul class="searchresult-gl-wrap searchresult-clearfix">

                    <c:if test="${!empty items}">
                        <c:forEach items="${items}" var="item">
                            <li class="searchresult-gl-item">
                                <div class="searchresult-gl-i-wrap">
                                    <div class="searchresult-p-img">
                                        <a target="_blank" title="返回图片对应商品名称" href=""><img width="220" height="220"
                                                                                           src="${path}/img/goodsAttr/${item.goodsImage}"></a>
                                    </div>
                                    <div class="searchresult-p-price">
                                        <strong>
                                            <em>￥</em>
                                            <i>${item.goodsPrice}</i>
                                        </strong>
                                    </div>
                                    <div class="searchresult-p-name searchresult-p-name-type-2">
                                        <a target="_blank" title="返回图片对应商品名称" href="">
                                            <em><a href="${path}/goods/findGood?goodsId=${item.goodsId}" target="_blank">${item.goodsName}${item.goodsAttrDesc}</a>
                                            </em>
                                        </a>
                                    </div>
                                    <div class="searchresult-p-commit">
                                        <strong>
                                            <a target="_blank" href="">返回评价数数据
                                            </a>条评价
                                        </strong>
                                    </div>
                                    <div class="searchresult-p-shop">
                                    <span><a target="_blank" title="RCE电子商城" href="">RCE电子商城
                                        <b class="searchresult-im-01" title="联系客服咨询"></b>
                                    </a></span>
                                    </div>
                                </div>
                            </li>
                        </c:forEach>
                    </c:if>
                </ul>
            </div>
            <div class="searchresult-page searchresult-clearfix">
                <div class="searchresult-p-wrap">
                        <span class="searchresult-p-num">
                            <a class="searchresult-pn-prev" href="javascript:;" title="使用方向键也可以翻到上一页">
                                <i><</i>
                                <em>上一页</em>
                            </a>
                            <a href="javascript:;">${pagenum}</a>
                            <a class="searchresult-pn-next" href="javascript:;" title="使用方向键也可以翻到下一页">
                                <em>下一页</em>
                                <i>></i>
                            </a>
                        </span>
                    <span class="searchresult-p-skip">
                            <em>共
                                <b>${totalpages}</b>页&nbsp;&nbsp;到第
                            </em>
                            <input class="searchresult-input-txt" type="text">
                            <em>页</em>
                            <a class="searchresult-btn searchresult-btn-default" href="javascript:;">确定</a>
                        </span>
                </div>
            </div>
        </div>
    </div>
</div>


<%@ include file="/WEB-INF/inc/footer.jsp"%>

<script type="text/javascript" src="${path}/layui/layui.js"></script>
<script type="text/javascript" src="${path}/js/global.js"></script>
<script type="text/javascript" src="${path}/js/headframe.js"></script>
<script type="text/javascript" src="${path}/js/index.js"></script>
<script src="${path}/js/jquery-3.3.1.min.js"></script>
</body>
</html>
