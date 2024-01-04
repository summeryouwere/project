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
            ,url: '/rest/getLabInfo?labId=${labId}' //数据接口
            ,title: '查看实验室'
            ,page: false //开启分页
            ,totalRow: true //开启合计行
            ,cols: [[ //表头
                {field: 'employeeId', title: '员工ID', width:200, sort: true}
                ,{field: 'name', title: '姓名', width:200, sort: true}
                ,{field: 'gender', title: 'gender', width: 200, sort: true}
                ,{field: 'title', title: '职称', width: 200, sort: true}
                ,{field: 'age', title: '年龄', width: 200, sort: true}
                ,{field: 'researchArea', title: '研究方向', width: 200, sort: true}
            ]]
        });
    });
</script>
</body>
</html>
