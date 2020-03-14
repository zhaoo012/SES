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
	<div class="layui-row " >
			<div class="layui-col-md12 ">
					<ul class="layui-nav ">
						<li class="layui-nav-item ">
					     	<i class="layui-icon layui-icon-face-smile "></i><!--笑脸图标-->
					     	欢迎访问奖学金评定系统
					    </li>
					    
						<li class="layui-nav-item ">
								<a href="${pageContext.request.contextPath}/teacher/tea_index">首页</a>
						</li>
						<li class="layui-nav-item ">
								<a href="${pageContext.request.contextPath}/teacher/tea_manage_stu">审核奖学金</a>
						</li>
						<li class="layui-nav-item layui-col-md-offset5 ">
						    <a href=" ">test<span class="layui-badge ">9</span></a>
						</li>
						<li class="layui-nav-item ">
						    <a href="${pageContext.request.contextPath}/teacher/tea_selfinfo"><i class="layui-icon layui-icon-username "></i> 个人中心<span class="layui-badge-dot "></span></a>
						</li>
						<li class="layui-nav-item ">
						  	  <img src="${pageContext.request.contextPath}/images/touxiang.jpg " class="layui-nav-img ">
	     <!--username--> 	   ${realname}老师您好<span class="layui-badge-dot "></span>
						</li>
						<li class="layui-nav-item ">
						     <a href="${pageContext.request.contextPath}/logout">退出登录</a>
						</li>
					</ul>
			</div><!--导航栏の列 layui-row end-->
	</div><!--导航栏 layui-row end-->
  	
  	<hr class="layui-bg-blue" />
  
  
    <!-- 主体部分 -->
	<div class=" margin-logo layui-row  kh-bg-white  layui-col-space20"  ><br>
			<div class="layui-col-md">
				 <!--表格-->
				<table id="app_table" lay-filter="app_table_on"></table>
			</div><!--layui-col end-->
	</div><!--layui-row end-->
		


	
			<br/>
		<!--  描述：底部 -->
		<div class="layui-row layui-bg-black height300 " >
			<div class="layui-col-md3 layui-col-md-offset3 margin-top30 ">
					<img src="${pageContext.request.contextPath}/images/WeChat.png " class="wechat-img "/>
			</div>
			<div class="layui-col-md3 margin-top30 ">
					<table>
						<tr>
							  <th><h2>版权所有</h2></th>	
								<th><h2>:赵凯航毕业设计作品</h2></th>
						</tr>
						<tr>
							  <th><h2>联系方式 </h2></th>
								<th><h2>:horyes012(WeChat)</h2></th>
						</tr>
					</table>
			</div>
		</div><!--bottom layui-row end-->
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
  <input type="checkbox" name="app_status" value="{{d.app_Status}}" lay-skin="switch" lay-text="通过|不通过" lay-filter="status_filter" {{ d.app_Status == 0 ?  '': 'checked' }}>
</script>

	
	
	<script>
		layui.use('table', function(){
		  var table = layui.table;
		  var form=layui.form;
		  var downDatas=[];//用来存储导出的全部学生信息
		  //执行渲染
					table.render({
					   elem: '#app_table' //指定原始表格元素选择器（推荐id选择器）
					  ,title:'学生名单'
					  ,method:'post'
					  ,url:'${pageContext.request.contextPath}/teacher/do_tea_manage_stu'
					  ,page: true
					  ,toolbar:'#SearchBar'
					  ,height:  'full-100' //容器高度
					  ,cols: [[ 
									{field: 'app_name', title: '姓名', width: 80}, //rowspan即纵向跨越的单元格数
						    		{field: 'app_id', title: '学号', width: 110,sort:true},
						    		{field: 'app_institution', title: '学院',width:125,sort:true},
						    		{field: 'app_grade',title:'年级',width: 90,sort:true},
						    		{field: 'app_class',title:'班级',width:80,sort:true},
						    		{field: 'app_major',title:'专业',width:160,sort:true},
						    		{field: 'app_sex',title:'性别',width:70,sort:true},
						    		{field: 'app_nation',title:'民族',width:70,sort:true},
						    		{field: 'app_category',title:'类别',width:70,sort:true},
						    		{field: 'app_annual_results',title:'年度成绩',width:100,sort:true},
						    		{field: 'app_ranking',title:'排名',width:70,sort:true},
						    		{field: 'app_class_size',title:'班级人数',width:100,sort:true},
						    		{field: 'app_bank_card_num',title:'农行卡号',hide:true},
						    		{field: 'app_ID_number',title:'身份证号',hide:true},
						    		{field: 'app_tel_num',title:'手机号',hide:true},
						    		{title:'操作',width:130,toolbar:'#toolBar'},
						    		{field:'app_status',width:100,fixed:'right',title:'审核',templet: '#switchTpl', unresize: true}
									  ]] //设置表头
					  ,done: function(res, curr, count){//表格渲染结束才调用done
						  if (downDatas.length<1){//临时变量里面没有值的话,向服务器发起查询请求
				                $.get("${pageContext.request.contextPath}/teacher/figure", function (res) {
				                    if (res.code==0){
				                            downDatas=res.data;
				                    }
				                 });
				            }
					  }//done end
					});//table.render end
		  		
		  	  //监听工具条--右
			  table.on('tool(app_table_on)', function(obj){
			    var data = obj.data;
			    if(obj.event === 'select'){//查询
			    	 
			       window.location.href="${pageContext.request.contextPath}/teacher/do_tea_check_stu_info?app_id="+data.app_id;
			    } else if(obj.event === 'delete'){//删除
			      layer.confirm('真的删除行么', function(index){
			        obj.del();
			        layer.close(index);
			        window.location.href="${pageContext.request.contextPath}/teacher/do_tea_delete_stu_info?app_id="+data.app_id;
			        layer.msg("删除成功！");
			      });
			    }  
			  });//table.on end
			  
			  //table的导出功能
			  $("#exportAll").click(function(){
					table.exportFile(['姓名','学号','学院', '年级','班级',
					                  '奖学金等级','专业','性别','民族','类别',
					                  '年度成绩','排名','班级人数','农行卡号','身份证号','手机号'],
					                  downDatas, 'xls');		  
			  });
			  
			  
			  //监听工具条--上
			  table.on('toolbar(app_table_on)', function(obj){
			    var data = obj.data;
			    if(obj.event === 'search'){//模糊查询
			    	 layer.msg("模糊search");
			    	//表单重载
			    
			    } else if(obj.event === 'show_passed'){//显示通过名单
			    	 //layer.msg("show passed");
			    	 //表格重载
			    	 table.reload('app_table',{
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
			  			var id=$(this).closest("tr").find("td:eq(1)").text();//得到的学号
			  			var status=obj.value;
			  			 $.ajax({//阿贾克斯
							  url:"${pageContext.request.contextPath}/teacher/do_success_tea_verify_stu_info?app_id="+id+"&app_status=1",//提交接口
							  type:"POST",   //提交方式
							  success:function (result){ //成功回调函数
							  		  layer.tips("更改成功!");
							  }//success end
					 	 });//ajax end
			  		}//if end
			  		else{
			  			//通过->不通过
			  			var id=$(this).closest("tr").find("td:eq(1)").text();//得到的学号
			  			//var status=obj.value;
			  			layer.alert("执行不通过操作"+obj.value);
			  			//执行不通过操作
			  			$.ajax({//阿贾克斯
							  url:"${pageContext.request.contextPath}/teacher/do_success_tea_verify_stu_info?app_id="+id+"&app_status=0",//提交接口
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
