<%@ page import="java.util.Collection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>layui 调试预览</title>
    <link rel="stylesheet" href="https://layui.uimaker.com/layui/dist/css/layui.css" media="all">
    <link id="layuicss-laydate" rel="stylesheet" href="https://layui.uimaker.com/layui/dist/css/modules/laydate/default/laydate.css?v=5.3.1" media="all"><link id="layuicss-layer" rel="stylesheet" href="https://layui.uimaker.com/layui/dist/css/modules/layer/default/layer.css?v=3.5.1" media="all">
    <link id="layuicss-skincodecss" rel="stylesheet" href="https://layui.uimaker.com/layui/dist/css/modules/code.css?v=2" media="all">
    <script src="https://layui.uimaker.com//layui/dist/layui.js"></script>
</head>
<body>

<table class="layui-hide" id="demo" lay-filter="test"></table>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="info">查看详情</a>
</script>

<script>
    layui.use(['element', 'layer', 'util','jquery','form'], function(){
        var layer = layui.layer //弹层
            ,form = layui.form
            ,element = layui.element
            ,laypage = layui.laypage //分页
            ,table = layui.table //表格
            ,dropdown = layui.dropdown //下拉菜单
            ,code = layui.code()
            ,util = layui.util
            ,$ = layui.$;
        //执行一个 table 实例
        table.render({
            elem: '#demo'
            ,height: 800
            ,url: '/rest/getResearchAchievement' //数据接口
            ,title: ''
            ,page: false //开启分页
            ,totalRow: true //开启合计行
            ,cols: [[ //表头
                { field: 'achievementID', title: '研究成果ID', width: 200, sort: true },
                { field: 'achievementName', title: '成果名称', width: 200, sort: true },
                { field: 'acquisitionDate', title: '取得时间', width: 200, sort: true, templet: function(d){return formatDate(d.acquisitionDate);}},
                { field: 'rank', title: '排名', width: 200, sort: true },
                { field: 'projectName', title: '项目名称', width: 200, sort: true },
                { field: 'researchContent', title: '研究内容', width: 200, sort: true },
                { field: 'totalFunding', title: '经费总额', width: 200, sort: true },
                { field: 'projectStartDate', title: '项目开始时间', width: 200, sort: true, templet: function(d){return formatDate(d.projectStartDate);}},
                { field: 'projectEndDate', title: '项目结束时间', width: 200, sort: true, templet: function(d){return formatDate(d.projectEndDate);}},
                { field: 'contributorEmployeeID', title: '贡献人工号', width: 200, sort: true },
                { field: 'contributorName', title: '贡献人姓名', width: 200, sort: true },
                { field: 'contributorGender', title: '贡献人性别', width: 200, sort: true },
                { field: 'contributorTitle', title: '贡献人职称', width: 200, sort: true },
                { field: 'contributorAge', title: '贡献人年龄', width: 200, sort: true },
                { field: 'contributorResearchArea', title: '贡献人研究方向', width: 200, sort: true }
            ]]

        });
        table.on('tool(test)', function(obj){ //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
            var branchArray;
            var data = obj.data //获得当前行数据
                ,layEvent = obj.event; //获得 lay-event 对应的值
            if(layEvent === 'info'){
                window.location = "/labEmployee?labId="+data.labId
            }
        });
    });
    function formatDate(acquisitionDate) {
        const timestamp = parseInt(acquisitionDate);
        const date = new Date(timestamp);
        const year = date.getFullYear();
        const month = (date.getMonth() + 1).toString().padStart(2, '0'); // 月份补零
        const day = date.getDate().toString().padStart(2, '0'); // 天数补零
        return year + '-' + month+"-"+day;
    }
</script>

</body>
</html>
