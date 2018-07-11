<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>销售报表</title>
        <meta name="renderer" content="webkit|ie-comp|ie-stand">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta http-equiv="Cache-Control" content="no-siteapp" />
        <link rel="stylesheet" href="/rcestore/css/font.css">
        <link rel="stylesheet" href="/rcestore/css/xadmin.css">
    </head>

    <body>
        <div class="x-nav">
          <span class="layui-breadcrumb">
            <a href="">首页</a>
            <a href="">管理员管理</a>
            <a>
              <cite>角色管理</cite></a>
          </span>
          <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
            <i class="layui-icon" style="line-height:30px">ဂ</i></a>
        </div>
        <div class="x-body">
            <div class="layui-row">
                <form class="layui-form layui-col-md12 x-so">
                    <div class="layui-input-inline">
                        <input type="text" class="layui-input" id="test1" placeholder=" - ">
                    </div>
                    <div class="layui-input-inline">
                        <button type="button" class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                    </div>
                </form>
            </div>
            <!-- 为 ECharts 准备一个具备大小（宽高）的 DOM -->
        <div id="main" style="width: 100%;height:600px;"></div>
        </div>
        <script type="text/javascript" src="/rcestore/layui/layui.js"></script>
        <script type="text/javascript">
            layui.use('laydate', function(){
              var laydate = layui.laydate;
              
              //执行一个laydate实例
              laydate.render({
                elem: '#test1' //指定元素
                ,type: 'month'
                ,range: true
              });
            });
        </script>
        <script type="text/javascript" src="/rcestore/js/echarts.js"></script>
        <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));

        // 指定图表的配置项和数据
        var option = {
            title: {
                text: '各品牌销售量对比'
            },
            tooltip: {
                trigger: 'axis'
            },
            legend: {
                // title数据
                data:['oppo','vivo','一加','努比亚','华为','小米','荣耀','魅族']
            },
            grid: {
                left: '3%',
                right: '4%',
                bottom: '3%',
                containLabel: true
            },
            toolbox: {
                feature: {
                    magicType: {//动态类型切换
                        type: ['bar', 'line']
                    },
                    dataView: { //数据视图
                        show: true
                    },
                    restore: { //重置
                        show: true
                    },
                    saveAsImage: {//保存图片
                        show: true
                    }
                }
            },
            xAxis: {
                type: 'category',
                boundaryGap: false,
                // 横坐标数据
                data: ['第一周','第二周','第三周','第四周','第五周','第六周','第七周']
            },
            yAxis: {
                type: 'value'
            },
            series: [
                {
                    name:'oppo',
                    type:'line',
                    data:[${allSettleList.get(6).get(0).get("sum(settleNum)")}, ${allSettleList.get(5).get(0).get("sum(settleNum)")}, ${allSettleList.get(4).get(0).get("sum(settleNum)")}, ${allSettleList.get(3).get(0).get("sum(settleNum)")}, ${allSettleList.get(2).get(0).get("sum(settleNum)")}, ${allSettleList.get(1).get(0).get("sum(settleNum)")}, ${allSettleList.get(0).get(0).get("sum(settleNum)")}]
                },
                {
                    name:'vivo',
                    type:'line',
                    data:[${allSettleList.get(6).get(1).get("sum(settleNum)")}, ${allSettleList.get(5).get(1).get("sum(settleNum)")}, ${allSettleList.get(4).get(1).get("sum(settleNum)")}, ${allSettleList.get(3).get(1).get("sum(settleNum)")}, ${allSettleList.get(2).get(1).get("sum(settleNum)")}, ${allSettleList.get(1).get(1).get("sum(settleNum)")}, ${allSettleList.get(0).get(1).get("sum(settleNum)")}]
                },
                {
                    name:'一加',
                    type:'line',
                    data:[${allSettleList.get(6).get(2).get("sum(settleNum)")}, ${allSettleList.get(5).get(2).get("sum(settleNum)")}, ${allSettleList.get(4).get(2).get("sum(settleNum)")}, ${allSettleList.get(3).get(2).get("sum(settleNum)")}, ${allSettleList.get(2).get(2).get("sum(settleNum)")}, ${allSettleList.get(1).get(2).get("sum(settleNum)")}, ${allSettleList.get(0).get(2).get("sum(settleNum)")}]
                },
                {
                    name:'努比亚',
                    type:'line',
                    data:[${allSettleList.get(6).get(3).get("sum(settleNum)")}, ${allSettleList.get(5).get(3).get("sum(settleNum)")}, ${allSettleList.get(4).get(3).get("sum(settleNum)")}, ${allSettleList.get(3).get(3).get("sum(settleNum)")}, ${allSettleList.get(2).get(3).get("sum(settleNum)")}, ${allSettleList.get(1).get(3).get("sum(settleNum)")}, ${allSettleList.get(0).get(3).get("sum(settleNum)")}]
                },
                {
                    name:'华为',
                    type:'line',
                    data:[${allSettleList.get(6).get(4).get("sum(settleNum)")}, ${allSettleList.get(5).get(4).get("sum(settleNum)")}, ${allSettleList.get(4).get(4).get("sum(settleNum)")}, ${allSettleList.get(3).get(4).get("sum(settleNum)")}, ${allSettleList.get(2).get(4).get("sum(settleNum)")}, ${allSettleList.get(1).get(4).get("sum(settleNum)")}, ${allSettleList.get(0).get(4).get("sum(settleNum)")}]
                },
                {
                    name:'小米',
                    type:'line',
                    data:[${allSettleList.get(6).get(5).get("sum(settleNum)")}, ${allSettleList.get(5).get(5).get("sum(settleNum)")}, ${allSettleList.get(4).get(5).get("sum(settleNum)")}, ${allSettleList.get(3).get(5).get("sum(settleNum)")}, ${allSettleList.get(2).get(5).get("sum(settleNum)")}, ${allSettleList.get(1).get(5).get("sum(settleNum)")}, ${allSettleList.get(0).get(5).get("sum(settleNum)")}]
                },
                {
                    name:'荣耀',
                    type:'line',
                    data:[${allSettleList.get(6).get(6).get("sum(settleNum)")}, ${allSettleList.get(5).get(6).get("sum(settleNum)")}, ${allSettleList.get(4).get(6).get("sum(settleNum)")}, ${allSettleList.get(3).get(6).get("sum(settleNum)")}, ${allSettleList.get(2).get(6).get("sum(settleNum)")}, ${allSettleList.get(1).get(6).get("sum(settleNum)")}, ${allSettleList.get(0).get(6).get("sum(settleNum)")}]
                },
                {
                    name:'魅族',
                    type:'line',
                    data:[${allSettleList.get(6).get(7).get("sum(settleNum)")}, ${allSettleList.get(5).get(7).get("sum(settleNum)")}, ${allSettleList.get(4).get(7).get("sum(settleNum)")}, ${allSettleList.get(3).get(7).get("sum(settleNum)")}, ${allSettleList.get(2).get(7).get("sum(settleNum)")}, ${allSettleList.get(1).get(7).get("sum(settleNum)")}, ${allSettleList.get(0).get(7).get("sum(settleNum)")}]
                }
            ]
        };

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>
    </body>
</html>