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
            ,url: '/rest/getProject' //数据接口
            ,title: '查看实验室'
            ,page: false //开启分页
            ,totalRow: true //开启合计行
            ,cols: [[ //表头
                { field: 'projectID', title: '项目ID', width: 200, sort: true },
                { field: 'labID', title: '研究室ID', width: 200, sort: true },
                { field: 'leaderID', title: '负责人ID', width: 200, sort: true },
                { field: 'projectName', title: '项目名称', width: 200, sort: true },
                { field: 'researchContent', title: '研究内容', width: 200, sort: true },
                { field: 'totalFunding', title: '经费总额', width: 200, sort: true },
                { field: 'startDate', title: '开始时间', width: 200, sort: true , templet: function(d){return formatDate(d.startDate);}},
                { field: 'endDate', title: '结束时间', width: 200, sort: true , templet: function(d){return formatDate(d.endDate);}},
                { field: 'subProjectID', title: '子课题ID', width: 200, sort: true },
                { field: 'subProjectLeaderID', title: '子课题负责人ID', width: 200, sort: true },
                { field: 'subProjectNumber', title: '子课题序号', width: 200, sort: true },
                // { field: 'subProjectEndDateRequirement', title: '子课题完成时间要求', width: 200, sort: true , templet: function(d){return formatDate(d.subProjectEndDateRequirement);}},
                { field: 'subProjectAvailableFunds', title: '子课题可支配经费', width: 200, sort: true },
                { field: 'technicalIndicators', title: '子课题技术指标', width: 200, sort: true },
                { field: 'projectMemberID', title: '项目成员ID', width: 200, sort: true },
                // { field: 'projectMemberJoinDate', title: '项目成员加入时间', width: 200, sort: true , templet: function(d){return formatDate(projectMemberJoinDate);}},
                { field: 'projectMemberWorkload', title: '项目成员工作量', width: 200, sort: true },
                { field: 'projectMemberAvailableFunds', title: '项目成员可支配经费', width: 200, sort: true },
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
