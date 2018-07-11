<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/inc/taglibs.jsp" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>RCE后台管理</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="${path}/layui/css/layui.css">
    <link rel="stylesheet" href="${path}/css/font.css">
    <link rel="stylesheet" href="${path}/css/xadmin.css">
    <link rel="stylesheet" href="${path}/css/goods-list.css">
    <script src="${path}/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="${path}/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${path}/js/xadmin.js"></script>
</head>
<script>
    function addNum(obj) {

        if ($(obj).attr("value") == "添加") {

            $(obj).attr("value", '保存')
            $(obj).html("保存");
            $(obj).parents("td").find('input').prop("disabled", false);

        } else {
            $(obj).attr("value", '添加')
            $(obj).html("添加");
            $(obj).parents("td").find('input').prop("disabled", true);
            var addNum=parseInt($(obj).parents("td").find('input').val());
            parseInt($(obj).parents("td").find('input').val(""));
            var id="#"+$(obj).attr("name");
            var id2=$(obj).attr("name");
            var goodsType=$(id).attr("title");
            var goodsName=$(id).attr("class");
            var preNum=parseInt($(id).html());
            var newNum=preNum+addNum;
            $(id).html(newNum);

            $.ajax({
                type: "post",
                url: "${path}/goodsStock/addGoodsStock",
                dataType: "json",
                data: {"goodsAttrId": id2, "goodsNum": newNum,"goodsType":goodsType,"goodsName":goodsName,"addNum":addNum},
               /* success: function (data) {
                    alert(data);
                },
                error: function (data) {
                    alert("失败");
                }*/
            });

        }
    }
</script>
<body class="layui-anim layui-anim-up">
<div class="x-nav">
        <span class="layui-breadcrumb">
            <a href="">首页</a>
            <a href="">进销存管理</a>
            <a><cite>库存列表</cite></a>
        </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i>
    </a>
</div>
<div class="x-body">
    <div class="layui-row">
        <form class="layui-form layui-col-md12 x-so">
            <div class="layui-input-inline">
                <select>
                    <option value="">产品商家</option>
                    <option value="rongyao">荣耀</option>
                    <option value="huawei">华为</option>
                    <option value="oppo">oppo</option>
                    <option value="vivo">vivo</option>
                    <option value="meizu">魅族</option>
                    <option value="xiaomi">小米</option>
                    <option value="yijia">一加</option>
                    <option value="nubiya">努比亚</option>
                </select>
            </div>
            <div class="layui-input-inline">
                <select>
                    <option value="">产品名称</option>
                    <option value="white">白色</option>
                    <option value="black">黑色</option>
                    <option value="red">红色</option>
                    <option value="blue">蓝色</option>
                    <option value="golden">金色</option>
                    <option value="rose-gold">玫瑰金</option>
                </select>
            </div>
            <div class="layui-input-inline">
                <input type="text" placeholder="请输入商品编号" autocomplete="off" class="layui-input">
                <button class="layui-btn" lay-submit="" lay-filter="sreach">查询</button>
            </div>

        </form>
    </div>
    <!-- <xblock>
        <button class="layui-btn" onclick="x_admin_show('添加商品','Invoice-in-stock-add.html',800,500)"><i class="layui-icon"></i>添加</button>
        <span class="x-right" style="line-height:40px">共有数据： <span id="row"></span> 条</span>
    </xblock> -->
    <table id="table1" class="layui-table">
        <thead>
        <tr>
            <th>
                <div class="layui-unselect header layui-form-checkbox" lay-skin="primary"><i class="layui-icon">&#xe605;</i></div>
            </th>
            <th>厂家</th>
            <th>商品编号</th>
            <th>商品名称</th>
            <td>运行内存</td>
            <td>手机容量</td>
            <td>尺寸</td>
            <td>颜色</td>
            <th>库存量</th>
            <th>库存添加</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${goodsAttrList}" var="goodsAttr">
        <tr>
            <td>
                <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='2'><i class="layui-icon">&#xe605;</i></div>
            </td>
            <td>${goodsAttr.get("goodsType")}</td>
            <td>${goodsAttr.get("goodsAttributes").goodsAttrId}</td>
            <td>${goodsAttr.get("goodsName")}</td>
            <td>${goodsAttr.get("goodsAttributes").goodsRom}</td>
            <td>${goodsAttr.get("goodsAttributes").goodsRam}</td>
            <td>${goodsAttr.get("goodsAttributes").goodsSize}</td>
            <td>${goodsAttr.get("goodsAttributes").goodsColor}</td>
            <td id="${goodsAttr.get("goodsAttributes").goodsAttrId}" title="${goodsAttr.get("goodsType")}" class="${goodsAttr.get("goodsName")}">${goodsAttr.get("goodsAttributes").goodsStock}</td>
            <td width="150px">
                <button class="layui-btn" name="${goodsAttr.get("goodsAttributes").goodsAttrId}" onclick="addNum(this)" value="添加">添加</button>
                <input id="status" type="text" disabled="true" class="layui-input" style="float: right; width: 80px">
            </td>
        </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<div class="page">
    <div class="row">
        <div class="col-sm-6 page-info" id="page_info_area" style="float:left;">
            当前第 ${pageInfo.pageNum} 页.总共 ${pageInfo.pages} 页.一共 ${pageInfo.total} 条记录
        </div>
        <!--点击分页-->
        <div class="col-sm-6 page-show" id="page_nav_area" style="float: right;">
            <nav aria-label="Page navigation">
                <ul class="pagination pagination-lg">
                    <li><a href="${pageContext.request.contextPath}/goodsStock/showGoodsStockNum?pn=1"><span class="num" style="padding: 0;border: none">首页</span></a></li>
                    <!--上一页-->
                    <li>
                        <c:if test="${pageInfo.hasPreviousPage}">
                            <a href="${pageContext.request.contextPath}/goodsStock/showGoodsStockNum?pn=${pageInfo.pageNum-1}" aria-label="Previous">
                                <span class="prev" aria-hidden="true" style="padding: 0;border: none">&lt;&lt;</span>
                            </a>
                        </c:if>
                    </li>
                    <c:forEach items="${pageInfo.navigatepageNums}" var="page_num">
                        <c:if test="${page_num == pageInfo.pageNum}">
                            <li class="active">
                                <a href="#">
                                    <span class="current">${page_num}</span>
                                </a>
                            </li>
                        </c:if>
                        <c:if test="${page_num != pageInfo.pageNum}">
                            <li><a class="num" href="${pageContext.request.contextPath}/goodsStock/showGoodsStockNum?pn=${page_num}"><span class="num" style="padding: 0;border: none">${page_num}</span></a></li>
                        </c:if>
                    </c:forEach>
                    <!--下一页-->
                    <li>
                        <c:if test="${pageInfo.hasNextPage}">
                            <a href="${pageContext.request.contextPath}/goodsStock/showGoodsStockNum?pn=${pageInfo.pageNum+1}" aria-label="Next">
                                <span class="next" aria-hidden="true" style="padding: 0;border: none">&gt;&gt;</span>
                            </a>
                        </c:if>
                    </li>
                    <li><a href="${pageContext.request.contextPath}/goodsStock/showGoodsStockNum?pn=${pageInfo.pages}"><span class="num" style="padding: 0;border: none">尾页</span></a></li>
                </ul>
            </nav>
        </div>
    </div>
</div>
</body>

</html>