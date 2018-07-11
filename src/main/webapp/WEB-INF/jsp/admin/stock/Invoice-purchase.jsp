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
    <script src="${path}/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="${path}/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${path}/js/xadmin.js"></script>
    
</head>

<body>
    <div class="x-nav">
        <span class="layui-breadcrumb">
        <a href="">首页</a>
        <a onclick="javascript:history.go(-1)">进销存管理</a>
        <a>
          <cite>进货情况</cite>
        </a>
      </span>
        <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
    </div>
    <div class="x-body">
        <div class="layui-row">
            <form class="layui-form layui-col-md12 x-so">
                <div class="layui-input-inline">
                    <select>
                        <option value="">产品商家</option>
                        <option value="荣耀">荣耀</option>
                        <option value="华为">华为</option>
                        <option value="oppo">oppo</option>
                        <option value="vivo">vivo</option>
                        <option value="魅族">魅族</option>
                        <option value="小米">小米</option>
                        <option value="一加">一加</option>
                        <option value="努比亚">努比亚</option>
                    </select>
                </div>
                <div class="layui-input-inline">
                    <select>
                        <option value="">产品名称</option>
                        <option value="白色">白色</option>
                        <option value="黑色">黑色</option>
                        <option value="红色">红色</option>
                        <option value="蓝色">蓝色</option>
                        <option value="金色">金色</option>
                        <option value="玫瑰金">玫瑰金</option>
                    </select>
                </div>
                <div class="layui-input-inline">
                    <select>
                        <option value="">运行内存</option>
                        <option value="4G">4G</option>
                        <option value="8G">8G</option>
                        <option value="16G">16G</option>
                        <option value="32G">32G</option>
                    </select>
                </div>
                <div class="layui-input-inline">
                    <select>
                        <option value="">手机容量</option>
                        <option value="4G">4G</option>
                        <option value="8G">8G</option>
                        <option value="16G">16G</option>
                        <option value="32G">32G</option>
                        <option value="64G">64G</option>
                        <option value="128G">128G</option>
                    </select>
                </div>
                <div class="layui-input-inline">
                    <select>
                        <option value="">尺寸</option>
                        <option value="5.4">5.4</option>
                        <option value="5.8">5.8</option>
                        <option value="5.9">5.9</option>
                        <option value="6.3">6.3</option>
                        <option value="6.4">6.4</option>
                        <option value="6.5">6.5</option>
                        <option value="6.6">6.6</option>
                    </select>
                </div>
                <input type="text" placeholder="请输入商品编号" autocomplete="off" class="layui-input">
                <button class="layui-btn" lay-submit="" lay-filter="sreach" title="搜索"><i class="layui-icon">&#xe615;</i></button>
            </form>
        </div>
        <xblock>
            <button class="layui-btn" onclick="location.href='addStockList'"><i class="layui-icon"></i>添加进货单</button>

        </xblock>
        <table id="table1" class="layui-table">
            <thead>
                <tr>
                    <th>
                        <div class="layui-unselect header layui-form-checkbox" lay-skin="primary"><i class="layui-icon">&#xe605;</i></div>
                    </th>
                    <th>生产厂家</th>
                    <th>商品编号</th>
                    <th>商品名称</th>
                    <th>运行内存</th>
                    <th>手机容量</th>
                    <th>尺寸</th>
                    <th>颜色</th>
                    <th>单价</th>
                    <th>进货时间</th>
                    <th>进货量</th>
                    <th>总价</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach items="${goodsStockList}" var="goodsStock">
                <tr>
                    <td>
                        <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='2'><i class="layui-icon">&#xe605;</i></div>
                    </td>
                    <td>${goodsStock.goodsType}</td>
                    <th>${goodsStock.goodsAttrId}</th>
                    <td>${goodsStock.goodsName}</td>
                    <td>${goodsStock.goodsRom}</td>
                    <td>${goodsStock.goodsRam}</td>
                    <td>${goodsStock.goodsSize}</td>
                    <td>${goodsStock.goodsColor}</td>
                    <td>${goodsStock.goodsPrice}</td>
                    <th>${goodsStock.stockTime}</th>
                    <td>${goodsStock.stockNum}</td>
                    <td>${goodsStock.goodsTotalPrice}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <div class="page">
            <div>
                <a class="prev" href="">&lt;&lt;</a>
                <span class="current">1</span>
                <a class="num" href="">2</a>
                <a class="num" href="">3</a>
                <a class="num" href="">489</a>
                <a class="next" href="">&gt;&gt;</a>
            </div>
        </div>
    </div>
   <%-- <script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
    </script>
    <script>
    //统计记录数目
    $(function() {
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