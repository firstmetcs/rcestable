<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<head>
    <meta charset="UTF-8">
    <title>RCE后台管理</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="/rcestore/layui/css/layui.css">
    <link rel="stylesheet" href="/rcestore/css/font.css">
    <link rel="stylesheet" href="/rcestore/css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="/rcestore/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="/rcestore/js/xadmin.js"></script>
</head>
<script>
    $(document).ready(function () {
        $("#pldelete").click(function pldelete() {
            var deleteStr="";
            var checkbox=document.getElementsByName("deleteGoodsAttr");
            var trStrAttr="";
            for(var i=0;i<checkbox.length;i++){
                if(checkbox[i].checked==true){
                    deleteStr=deleteStr+checkbox[i].value+"#";
                    trStrAttr=trStrAttr+"#trAttr"+i+"!";
                }
            }

        var trAttrList=trStrAttr.split("!");
        for(var i=0;i<trAttrList.length;i++){

            var tr=trAttrList[i];
            $(tr).remove();
        }
            $.ajax({
                type: "post",
                url: "http://localhost:8080/rcestore/goods/batchDeleteGoodsAttr",
                data: {"deleteStr": deleteStr},
                /*success: function (data) {
                    alert(data);
                },
                error: function (data) {
                    alert("批量删除失败");
                }*/

            });
        })



    })
</script>
<body>
    <div class="x-nav">
        <span class="layui-breadcrumb">
        <a href="">首页</a>
        <a onclick="javascript:history.go(-1)">商品列表</a>
        <a>
          <cite>商品属性</cite>
        </a>
      </span>
        <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="showGoodsInfo?pn=${pageInfo.pageNum}" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
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
                    <select>
                        <option value="">运行内存</option>
                        <option value="1">4G</option>
                        <option value="2">8G</option>
                        <option value="3">16G</option>
                        <option value="4">32G</option>
                    </select>
                </div>
                <div class="layui-input-inline">
                    <select>
                        <option value="">手机容量</option>
                        <option value="1">4G</option>
                        <option value="2">8G</option>
                        <option value="3">16G</option>
                        <option value="4">32G</option>
                        <option value="4">64G</option>
                        <option value="4">128G</option>
                    </select>
                </div>
                <div class="layui-input-inline">
                    <select>
                        <option value="">尺寸</option>
                        <option value="0">6.0</option>
                        <option value="1">6.1</option>
                        <option value="2">6.2</option>
                        <option value="3">6.3</option>
                        <option value="4">6.4</option>
                        <option value="5">6.5</option>
                        <option value="6">6.6</option>
                    </select>
                </div>
                <input type="text" placeholder="请输入订单号" autocomplete="off" class="layui-input">
                <button class="layui-btn" lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
            </form>
        </div>
        <xblock>
            <button id="pldelete" class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除</button>
            <a class="layui-btn" href="addGoodsInfo?goodsId=${goodsId}&goodsName=${goodsName}"><i class="layui-icon"></i>添加</a>

        </xblock>
        <table id="table1" class="layui-table">
            <thead>
                <tr>
                    <th>
                        <div class="layui-unselect header layui-form-checkbox" lay-skin="primary"><i class="layui-icon">&#xe605;</i></div>
                    </th>
                    <th>商品编号</th>
                    <th>商品图片</th>
                    <th>运行内存</th>
                    <th>手机容量</th>
                    <th>网络支持</th>
                    <th>尺寸</th>
                    <th>颜色</th>
                    <th>价格</th>
                    <th>操作</th>
                </tr>
            </thead>
            <tbody>
              <c:forEach items="${goodsAttrList}" var="goodsAttr" varStatus="status">
                <tr id="trAttr${status.index}">
                    <td>
                        <input type="checkbox" name="deleteGoodsAttr" value="${goodsAttr.get("goodsAttrId")}"/>
                    </td>
                    <td>${goodsAttr.get("goodsAttrId")}</td>
                    <td>
                        <div class="layui-input-inline">
                            <img src="/rcestore/img/goodsAttr/${goodsAttr.get("goodsImage")}" style="width: 50px; height: 50px;">
                        </div>
                    </td>
                    <th>${goodsAttr.get("goodsRom")}</th>
                    <th>${goodsAttr.get("goodsRam")}</th>
                    <th>${goodsAttr.get("goodsNetType")}</th>
                    <th>${goodsAttr.get("goodsSize")}</th>
                    <th>${goodsAttr.get("goodsColor")}</th>
                    <th>${goodsAttr.get("goodsPrice")}</th>
                    <td class="td-manage">
                        <a title="编辑"  href="updateGoodsInfo?goodsAttrId=${goodsAttr.goodsAttrId}&goodsName=${goodsName}">
                            <i class="layui-icon">&#xe642;</i>
                        </a>
                        <a title="删除" onclick="member_del(this,'要删除的id')" href="deleteGoodsInfo?goodsAttrId=${goodsAttr.goodsAttrId}&goodsName=${goodsName}">
                            <i class="layui-icon">&#xe640;</i>
                        </a>
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
                        <li><a href="${pageContext.request.contextPath}/goods/showGoodsInfo?pn=1&goodsId=${goodsId}&goodsName=${goodsName}"><span class="num" style="padding: 0;border: none">首页</span></a></li>
                        <!--上一页-->
                        <li>
                            <c:if test="${pageInfo.hasPreviousPage}">
                                <a href="${pageContext.request.contextPath}/goods/showGoodsInfo?pn=${pageInfo.pageNum-1}&goodsId=${goodsId}&goodsName=${goodsName}" aria-label="Previous">
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
                                <li><a class="num" href="${pageContext.request.contextPath}/goods/showGoodsInfo?pn=${page_num}&goodsId=${goodsId}&goodsName=${goodsName}"><span class="num" style="padding: 0;border: none">${page_num}</span></a></li>
                            </c:if>
                        </c:forEach>
                        <!--下一页-->
                        <li>
                            <c:if test="${pageInfo.hasNextPage}">
                                <a href="${pageContext.request.contextPath}/goods/showGoodsInfo?pn=${pageInfo.pageNum+1}&goodsId=${goodsId}&goodsName=${goodsName}" aria-label="Next">
                                    <span class="next" aria-hidden="true" style="padding: 0;border: none">&gt;&gt;</span>
                                </a>
                            </c:if>
                        </li>
                        <li><a href="${pageContext.request.contextPath}/goods/showGoodsInfo?pn=${pageInfo.pages}&goodsId=${goodsId}&goodsName=${goodsName}"><span class="num" style="padding: 0;border: none">尾页</span></a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
    <%--<script>
    function member_del(obj, id) {
        layer.confirm('确认要删除吗？', function(index) {
            //发异步删除数据
            $(obj).parents("tr").remove();
            layer.msg('已删除!', { icon: 1, time: 1000 });
        });
    }

    function delAll(argument) {
        var data = tableCheck.getData();
        if (data >= 1) {
            layer.confirm('确认要删除吗？', function(index) {
                //捉到所有被选中的，发异步进行删除
                $(".layui-form-checked").not('.header').parents('tr').remove();
                layer.msg('删除成功', { icon: 1 });
            });
        } else {
            layer.msg('请选择删除项！', { icon: 0 });
        }
    }

    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
    </script>
    <script>
    $(function() { //统计记录
        function init() {
            var table = document.getElementById("table1");
            var rows = table.rows.length - 1;
            $("#row").html(rows.toFixed(2));
        }
        init();
    })
    </script>--%>
</body>

</html>