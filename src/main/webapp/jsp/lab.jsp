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
<li class="layui-nav-item layui-hide-xs">
    <button data-method="notice" class="layui-btn">添加实验室</button>
</li>
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
            ,url: '/rest/getLab' //数据接口
            ,title: '查看实验室'
            ,page: false //开启分页
            ,totalRow: true //开启合计行
            ,cols: [[ //表头
                {field: 'labId', title: '研究室ID', width:200, sort: true}
                ,{field: 'labName', title: '研究室名称', width:200, sort: true}
                ,{field: 'researchArea', title: '研究方向', width: 200, sort: true}
                ,{fixed: 'right', width: 320, align:'center', toolbar: '#barDemo'}
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
        var active = {
            notice: function(){
                //示范一个公告层
                layer.open({
                    type: 1
                    ,title: false //不显示标题栏
                    ,closeBtn: false
                    ,area: ['900px','400px']
                    ,shade: 0.8
                    ,id: 'LAY_layuipro' //设定一个id，防止重复弹出
                    ,btn: ['提交', '取消']
                    ,btnAlign: 'c'
                    ,moveType: 1 //拖拽模式，0或者1
                    ,content: '<form class="layui-form" action="" lay-filter="example">\n' +
                        '  <div style="padding: 35px; line-height: 30px; font-weight: 300;">\n' +
                        '    <div class="layui-form-item">\n' +
                        '      <label class="layui-form-label">实验室名称</label>\n' +
                        '      <div class="layui-input-block">\n' +
                        '        <input type="text" name="labName" lay-verify="required" lay-reqtext="实验室不能为空" autocomplete="off" placeholder="请输入实验室名称" class="layui-input">\n' +
                        '      </div>\n' +
                        '    </div>\n' +
                        '    <div class="layui-form-item">\n' +
                        '      <label class="layui-form-label">研究方向</label>\n' +
                        '      <div class="layui-input-block">\n' +
                        '        <input type="text" name="researchArea" lay-verify="required" lay-reqtext="研究方向不能为空" autocomplete="off" placeholder="请输入研究方向" class="layui-input">\n' +
                        '      </div>\n' +
                        '    </div>\n' +
                        '  </div>\n' +

                        '</form>'
                    ,yes: function(layero){
                        $.ajax({
                            url:"/rest/addLab",
                            headers: {'Content-Type': 'application/json'},
                            type:"post",
                            dataType:"json",
                            data:JSON.stringify(form.val('example')),
                            success: function (data) {
                                if(data.code==0) {
                                    layer.msg(data.data);
                                } else {
                                    layer.msg("异常");
                                }

                            }

                        });
                        layer.closeAll();
                    }
                });
                form.render();
            },
        };
        $('.layui-btn').on('click', function(){
            var othis = $(this), method = othis.data('method');
            active[method] ? active[method].call(this, othis) : '';
        });
    });
</script>
</body>
</html>
