<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>奖学金审核界面</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/public.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/xadmin.css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/xadmin.js"></script>

  </head>
  
  <body class="layui-bg-gray">
  	<!--
    	作者：1027788634@qq.com
    	时间：2019-12-29
    	描述：导航栏
    -->
 
  
    <!-- 主体部分 -->
	<div class=" margin-logo layui-row  kh-bg-white  layui-col-space20"  ><br>
			<div class="layui-col-md">
				 <!--表格-->
				<table id="tea_table" lay-filter="tea_table_on"></table>
			</div><!--layui-col end-->
	</div><!--layui-row end-->
		
		 
</body>
	<!--工具栏-->
	<script type="text/html" id="toolBar">
		<div class="layui-btn-container">
				<button class="layui-btn layui-btn-sm" lay-event="select">查看</button> 
				<button class="layui-btn layui-btn-sm" lay-event="delete">删除</button> 
		</div>
	</script>
	
	<!--查询通过按钮工具栏-->
	<script type="text/html" id="SearchBar">
		<div class="layui-row">
        	<div class="layui-form layui-col-md3 x-so">
          		<input type="text"  placeholder="请输入姓名" autocomplete="off" class="layui-input">
          		<button class="layui-btn layui-btn-sm" lay-event="search" >查询<i class="layui-icon">&#xe615;</i></button>
        	</div>
			<div class="layui-form layui-col-md3 x-so">
				<button id="exportAll"  class="layui-btn ">导出审核通过名单数据</button>
			</div>
			<div class="layui-form layui-col-md1 x-so">
          		<button class="layui-btn layui-btn-sm" lay-event="show_passed">显示已通过名单<i class="layui-icon">&#xe615;</i></button>
        	</div>
        </div>
	</script>
	
	
	
<!--审核按钮-->
<script type="text/html" id="switchTpl">
  <!-- 这里的 checked 的状态只是演示 -->
  <input type="checkbox" name="tea_status" value="{{d.tea_status}}" lay-skin="switch" lay-text="启用中|冻结中" lay-filter="status_filter" {{ d.tea_status == 0 ?  '': 'checked' }}>
</script>

	
	
	<script>
		layui.use('table', function(){
		  var table = layui.table;
		  var form=layui.form;
		 
		  //执行渲染
					table.render({
					   elem: '#tea_table' //指定原始表格元素选择器（推荐id选择器）
					  ,title:'教师名单'
					  ,method:'post'
					  ,url:'${pageContext.request.contextPath}/admin/do_adm_manage_tea'
					  ,page: true
					  ,toolbar:'#SearchBar'
					  ,height:  'full-100' //容器高度
					  ,cols: [[ 
									{field: 'tea_name', title: '姓名',width:100}, //rowspan即纵向跨越的单元格数
						    		{field: 'tea_id', title: '学号', width:110,sort:true},
						    		{field: 'tea_institution', title: '学院',width:110,sort:true},
						    		{field: 'tea_sex',title:'性别',width:70,sort:true},
						    		{field: 'tea_nation',title:'民族',width:80,sort:true},
						    		{field: 'tea_ID_number',title:'身份证号',width:120},
						    		{field: 'tea_tel_num',title:'手机号',width:100},
						    		{field: 'tea_job_title',title:'职称',width:80},
						    		{field: 'tea_role',title:'权限',width:80},
						    		{title:'操作',width:130,toolbar:'#toolBar'},
						    		{field:'tea_status',width:100,fixed:'right',title:'账号状态',templet: '#switchTpl', unresize: true}
									  ]] //设置表头
					});//table.render end
		  		
		  	  //监听工具条--右
			  table.on('tool(tea_table_on)', function(obj){
			    var data = obj.data;
			    if(obj.event === 'select'){//查询
			       	window.location.href="${pageContext.request.contextPath}/admin/do_adm_check_tea_info?tea_id="+data.tea_id;
			    } else if(obj.event === 'delete'){//删除
			      layer.confirm('真的删除行么', function(index){
			        obj.del();
			        layer.close(index);
			        var url="${pageContext.request.contextPath}/admin/do_adm_delete_tea_info?tea_id="+data.tea_id;
			        $.get(url);
			        layer.msg("删除成功！");
			      });
			    }  
			  });//table.on end
			  
			  
			  
			  //监听工具条--上
			  table.on('toolbar(tea_table_on)', function(obj){
			    var data = obj.data;
			    if(obj.event === 'search'){//模糊查询
			    	 layer.msg("模糊search");
			    	//表单重载
			    
			    } else if(obj.event === 'show_passed'){//显示通过名单
			    	 //layer.msg("show passed");
			    	 //表格重载
			    	 table.reload('tea_table',{
			    		 url:'${pageContext.request.contextPath}/teacher/do_tea_passed_stu'
			    	 });
			    }  
			  });//table.on end
			  
			  
			  
			  ///////////////////////////////////////////
			    //监听审核通过
			  form.on('switch(status_filter)',function(obj){
			  		//obj.elem.checked是switch开关的状态值为：{true|false}
			  		 if(obj.elem.checked==true){
			  			//不通过->通过
			  			var id=$(this).closest("tr").find("td").eq(1).text();
			  			 $.ajax({//阿贾克斯
						  	url:"${pageContext.request.contextPath}/admin/do_success_adm_verify_tea_info?tea_id="+id+"&tea_status=1",//提交接口
						  	type:"POST",   //提交方式
							  success:function (result){ //成功回调函数
							  		  layer.tips("更改成功!");
							  }//success end
					 	 });//ajax end
			  		}//if end
			  		else{
			  			//通过->不通过
			  			var id=$(this).closest("tr").find("td:eq(1)").text();//得到的学号
			  			//执行不通过操作
			  			$.ajax({//阿贾克斯
							  url:"${pageContext.request.contextPath}/admin/do_success_adm_verify_tea_info?tea_id="+id+"&tea_status=0",//提交接口
							  type:"POST",   //提交方式
							  success:function (result){ //成功回调函数
							  		  layer.tips("更改成功!");
							  }//success end
					 	 });//ajax end
			  		}//else end
			  });//form.on end 
			  
		});//layui.use end
	</script>
</html>
