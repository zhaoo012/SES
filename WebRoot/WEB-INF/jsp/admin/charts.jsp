<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <meta charset="utf-8">
    <title>第一个 ECharts 实例</title>
    <script src="https://cdn.staticfile.org/jquery/2.2.4/jquery.min.js"></script>
    <!-- 引入 echarts.js -->
     <link rel="stylesheet" href="${pageContext.request.contextPath}/css/public.css">
	  <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
	  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font.css" />
	  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/xadmin.css" />
	  <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	  <script type="text/javascript" src="${pageContext.request.contextPath}/js/xadmin.js"></script>
	  <script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.js"></script>
	  <script src="https://cdn.staticfile.org/echarts/4.3.0/echarts.min.js"></script>
</head>
<body>
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <!-- 性别扇形统计图 -->
    <div class="layui-card" >
    	<div class="layui-card-header">奖学金申者性别扇形统计图</div>
	    <div id="sex_count" style="width:40%;height:50%; class="layui-card-body">
	    		
	    </div>
	</div>
	<!-- 学院统计图 -->
	<div class="layui-card" >
    	<div class="layui-card-header">奖学金申者性别柱形统计图</div>
	    <div id="test" style="width:40%;height:50%; class="layui-card-body">
	    		
	    </div>
	</div>
	
	
	
    <script type="text/javascript">
    //********************************性别统计
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('sex_count'));
        //想后端发送get请求,请求数据
        $.get('${pageContext.request.contextPath}/admin/EChartsTest', function (data) {
            myChart.setOption({
            	tooltip: {
            		trigger: 'item',  // item--数据项图形触发   axis--bar,line图形触发
                    formatter: "{a} <br/>{b} : {c} ({d}%)"
            	},//tooltip end
            	legend: {
                    orient: 'vertical',//垂直放置
                    left: 'right',//居左
                    data: ['男','女']
                },//legend end
                series : [
                    {
                        name: '性别',
                        type: 'pie',    // 设置图表类型为饼图
                        radius: '55%',  // 饼图的半径，外半径为可视区尺寸（容器高宽中较小一项）的 55% 长度。
                        data:data.data_pie //后端给的数据接口
                    }
                ],//series end
                itemStyle: {
                    emphasis: {
                        shadowBlur: 10,
                        shadowOffsetX: 0,
                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                    }
                }//itemStyle end
            });//setOption end
        });//get end
        
        //********************************学院统计
        var myChart1 = echarts.init(document.getElementById('test'));
			// 异步加载数据
			$.get('${pageContext.request.contextPath}/admin/EChartsBar').done(function (data) {
			    // 填入数据
			    myChart1.setOption({
		            tooltip: {},
		            legend: {},
		            xAxis: {
		                data: ["男","女"] //X轴坐标
		            },
		            yAxis: {},//Y轴坐标
		            series: [{
		                name: '数量',
		                type: 'line',  //图形类别
		                data: data.x_Axis
		            }]
		        });
			});
    </script>
</body>

</html>