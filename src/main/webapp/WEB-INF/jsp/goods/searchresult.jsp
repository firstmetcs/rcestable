<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/inc/taglibs.jsp" %>
<html>
<head>
    <meta charset="utf-8">
    <title>搜索结果</title>
    <link type="text/css" rel="stylesheet" href="${path}/css/search-result.css">
    <link rel="stylesheet" type="text/css" href="${path}/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="${path}/css/headframe.css">
    <link rel="stylesheet" type="text/css" href="${path}/css/footframe.css">
    <link type="text/css" rel="stylesheet" href="${path}/css/search-result.css">
    <script src="${path}/js/jquery-3.3.1.min.js"></script>
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
                        <strong class="searchresult-search-key">"返回搜索商品名称数据结果"</strong>
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
                                <ul class="searchresult-J_valueList v_fixed" title="goodsType">
                                    <li style="display: block;"><a  rel="nofollow" title="荣耀" onclick="searchGoodsByInfo(this)">荣耀</a>
                                    </li>
                                    <li style="display: block;"><a  rel="nofollow" title="华为" onclick="searchGoodsByInfo(this)">华为</a>
                                    </li>
                                    <li style="display: block;"><a  rel="nofollow" title="oppo" onclick="searchGoodsByInfo(this)">oppo</a>
                                    </li>
                                    <li style="display: block;"><a  rel="nofollow" title="vivo" onclick="searchGoodsByInfo(this)">vivo</a>
                                    </li>
                                    <li style="display: block;"><a  rel="nofollow" title="魅族" onclick="searchGoodsByInfo(this)">魅族</a>
                                    </li>
                                    <li style="display: block;"><a  rel="nofollow" title="小米" onclick="searchGoodsByInfo(this)">小米</a>
                                    </li>
                                    <li style="display: block;"><a  rel="nofollow" title="一加" onclick="searchGoodsByInfo(this)">一加</a>
                                    </li>
                                    <li style="display: block;"><a  rel="nofollow" title="努比亚" onclick="searchGoodsByInfo(this)">努比亚</a>
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
                                <ul class="searchresult-J_valueList v_fixed" title="goodsPrice">
                                    <li style="display: block;"><a  rel="nofollow" title="500-1000" onclick="searchGoodsByInfo(this)">500-1000</a>
                                    </li>
                                    <li style="display: block;"><a  rel="nofollow" title="1000-2000" onclick="searchGoodsByInfo(this)">1000-2000</a>
                                    </li>
                                    <li style="display: block;"><a  rel="nofollow" title="2000-3000" onclick="searchGoodsByInfo(this)">2000-3000</a>
                                    </li>
                                    <li style="display: block;"><a  rel="nofollow" title="3000-" onclick="searchGoodsByInfo(this)">3000以上</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="searchresult-lineselect">
                    <div class="searchresult-firstwrap">
                        <div class="searchresult-sl-key">
                            <strong>运行内存:</strong>
                        </div>
                        <div class="searchresult-sl-value">
                            <div class="searchresult-sl-v-list">
                                <ul class="searchresult-J_valueList v_fixed" title="goodsRom">
                                    <li style="display: block;"><a  rel="nofollow" title="4G" onclick="searchGoodsByInfo(this)">4GB</a>
                                    </li>
                                    <li style="display: block;"><a rel="nofollow" title="6G" onclick="searchGoodsByInfo(this)">6GB</a>
                                    </li>
                                    <li style="display: block;"><a rel="nofollow" title="8G" onclick="searchGoodsByInfo(this)">8GB</a>
                                    </li>
                                    <li style="display: block;"><a rel="nofollow" title="32G" onclick="searchGoodsByInfo(this)">32GB</a>
                                    </li>
                                    <li style="display: block;"><a  rel="nofollow" title="64G" onclick="searchGoodsByInfo(this)">64GB</a>
                                    </li>
                                    <li style="display: block;"><a  rel="nofollow" title="128G" onclick="searchGoodsByInfo(this)">128GB</a>
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
                                <ul class="searchresult-J_valueList v_fixed" title="goodsRam">
                                    <li style="display: block;"><a  rel="nofollow" title="8G" onclick="searchGoodsByInfo(this)">8GB</a>
                                    </li>
                                    <li style="display: block;"><a  rel="nofollow" title="16G" onclick="searchGoodsByInfo(this)">16GB</a>
                                    </li>
                                    <li style="display: block;"><a rel="nofollow" title="32G" onclick="searchGoodsByInfo(this)">32GB</a>
                                    </li>
                                    <li style="display: block;"><a rel="nofollow" title="64G" onclick="searchGoodsByInfo(this)">64GB</a>
                                    </li>
                                    <li style="display: block;"><a rel="nofollow" title="128G" onclick="searchGoodsByInfo(this)">128GB</a>
                                    </li>
                                    <li style="display: block;"><a rel="nofollow" title="256G" onclick="searchGoodsByInfo(this)">256GB</a>
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
                            <a href="javascript:;" class="searchresult-" >
                                <span class="searchresult-fs-tit">综合</span>
                                <em class="searchresult-fs-down"><i class="searchresult-arrow"></i></em>
                            </a>
                            <a href="javascript:;" class="searchresult-" >
                                <span class="searchresult-fs-tit">销量</span>
                                <em class="searchresult-fs-down"><i class="searchresult-arrow"></i></em>
                            </a>
                            <a href="javascript:;" class="searchresult-" >
                                <span class="searchresult-fs-tit">评论数</span>
                                <em class="searchresult-fs-down"><i class="searchresult-arrow"></i></em>
                            </a>
                        </div>
                        <div class="searchresult-f-pager">
                            <span class="searchresult-fp-text">
                                <b>返回当前页数</b>
                                <em>/</em>
                                <i>返回总页数</i>
                            </span>
                            <a class="searchresult-fp-prev" href="javascript:;" title="使用方向键也可以翻到上一页"><</a>
                            <a class="searchresult-fp-next" href="javascript:;" title="使用方向键也可以翻到下一页">></a>
                        </div>
                        <div class="searchresult-f-result-sum">共<span class="searchresult-num">返回总页数数据</span>件商品
                        </div>
                    </div>
                </div>
                <div class="searchresult-goods-list-v2">
                    <ul class="searchresult-gl-wrap searchresult-clearfix">
                       <c:forEach items="${goodsAttrList}" var="goodsAttr">
                        <li class="searchresult-gl-item">
                            <div class="searchresult-gl-i-wrap">
                                <div class="searchresult-p-img">
                                    <a target="_blank" title="" href="${pageContext.request.contextPath}/goods/findGood?goodsId=${goodsAttr.get("goodsId")}"><img width="220" height="220" src="${path}/img/goodsAttr/${goodsAttr.get("goodsAttr").goodsImage}"></a>
                                </div>
                                <div class="searchresult-p-price">
                                    <strong>
                                        <em>￥</em>
                                        <i>${goodsAttr.get("goodsAttr").goodsPrice}</i>
                                    </strong>
                                </div>
                                <div class="searchresult-p-name searchresult-p-name-type-2">
                                    <a target="_blank" title="返回图片对应商品名称" href="">
                                        <em>${goodsAttr.get("goodsName")} ${goodsAttr.get("goodsTotalDesc")} 全网通 标配版 ${goodsAttr.get("goodsAttr").goodsRom}+${goodsAttr.get("goodsAttr").goodsRam} ${goodsAttr.get("goodsAttr").goodsColor}
                                        </em>
                                    </a>
                                </div>
                                <div class="searchresult-p-shop">
                                    <span><a target="_blank" title="RCE电子商城" href="">RCE电子商城
                                        <b class="searchresult-im-01" title="联系客服咨询"></b>
                                    </a></span>
                                </div>
                            </div>
                        </li>
                       </c:forEach>
                    </ul>
                </div>
                <div class="searchresult-page searchresult-clearfix">
                    <div class="searchresult-p-wrap">
                        <span class="searchresult-p-num">
                            <a class="searchresult-pn-prev" href="javascript:;" title="使用方向键也可以翻到上一页">
                                <i><</i>
                                <em>上一页</em>
                            </a>
                            <a href="javascript:;">1</a>
                            <a class="searchresult-pn-next" href="javascript:;" title="使用方向键也可以翻到下一页">
                                <em>下一页</em>
                                <i>></i>
                            </a>
                        </span>
                        <span class="searchresult-p-skip">
                            <em>共
                                <b>返回总页数数据</b>页&nbsp;&nbsp;到第
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

<script>

    var goodsType="！";
    var goodsRom="！";
    var goodsRam="！";
    var goodsPrice="!";
    function searchGoodsByInfo(obj) {

        //alert(obj.parentNode.parentNode.getAttribute("title"));
        var type=obj.parentNode.parentNode.getAttribute("title");
        // obj.style.color="red";
        if(type=="goodsType"){
            goodsType=obj.getAttribute("title");
        }
        if(type=="goodsRom"){
            goodsRom=obj.getAttribute("title");
        }
        if(type=="goodsRam"){
            goodsRam=obj.getAttribute("title");
        }
        if(type=="goodsPrice"){
            goodsPrice=obj.getAttribute("title");
        }

        $.ajax({
            type: "post",
            url: "${path}/goods/searchInfoGoodsByAjax",
            dataType: "json",
            data: {"goodsType": goodsType,"goodsRom":goodsRom,"goodsRam":goodsRam,"goodsPrice":goodsPrice},

            success: function (data) {
                 var list=data.split("-");
                goodsType=list[0];
                goodsRom=list[1];
                goodsRam=list[2];
                goodsPrice=list[3];
                window.location.href ="${path}/goods/searchInfoGoods?result="+data;
            },
            error: function (data) {
                alert("失败");
            }
        });

       // clean(obj);
    }

    function clean(obj){

        alert("000000");
        var infoType=$(obj).parent().parent().attr("title");
        alert(infoType);
    }

</script>
</body>
</html>