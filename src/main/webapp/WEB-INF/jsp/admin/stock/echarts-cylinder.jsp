<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/inc/taglibs.jsp" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>后台登录-X-admin2.0</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />

    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="./css/font.css">
    <link rel="stylesheet" href="./css/xadmin.css">
</head>
<body>
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
        <div id="main" style="width: 100%;height:600px;"></div>
    </div>
    <script type="text/javascript" src="lib/layui/layui.js"></script>
        <script type="text/javascript">
            layui.use('laydate', function(){
              var laydate = layui.laydate;
              
              //执行一个laydate实例
              laydate.render({
                elem: '#test1' //指定元素
                ,type: 'year'
              });
            });
        </script>
    <script type="text/javascript" src="js/echarts.js"></script>
    <script type="text/javascript">
        var dom = document.getElementById("main");
        var myChart = echarts.init(dom);
        var app = {};
        option = null;
        app.title = '正负条形图';

        option = {
            tooltip: {
                trigger: 'axis',
                axisPointer: { // 坐标轴指示器，坐标轴触发有效
                    type: 'shadow' // 默认为直线，可选为：'line' | 'shadow'
                }
            },
            legend: {
                data: ['利润', '支出', '收入']
            },
            grid: {
                left: '3%',
                right: '4%',
                bottom: '3%',
                containLabel: true
            },
            xAxis: [{
                type: 'value'
            }],
            yAxis: [{
                type: 'category',
                axisTick: {
                    show: false
                },
                data: ['一月','二月','三月','四月','五月','六月','七月','八月','九月','十月','十一月','十二月']
            }],
            series: [{
                name: '利润',
                type: 'bar',
                label: {
                    normal: {
                        show: true,
                        position: 'inside'
                    }
                },
                data: [200, 170, 240, 244, 200, 220, 210, 110, 342, 243, 234, 342]
            },
            {
                name: '收入',
                type: 'bar',
                stack: '总量',
                label: {
                    normal: {
                        show: true
                    }
                },
                data: [320, 302, 341, 374, 390, 450, 420,234,324,632,753,643]
            },
            {
                name: '支出',
                type: 'bar',
                stack: '总量',
                label: {
                    normal: {
                        show: true,
                        position: 'left'
                    }
                },
                data: [ - 120, -132, -101, -134, -190, -230, -210,-230,-423,-323,-532,-234]
            }]
        };;
        if (option && typeof option === "object") {
            myChart.setOption(option, true);
        }
    </script>
</body>
</html>