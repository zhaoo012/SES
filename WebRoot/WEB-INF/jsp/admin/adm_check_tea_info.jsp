<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html>
	<head>
		 <base href="<%=basePath%>">
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>奖学金申请第二步</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/public.css">
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font.css" />  
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/xadmin.css" />  
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/xadmin.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.js"></script>
</head>
<body class="layui-bg-gray"><!--背景变成灰色还挺好看的-->
	
		<hr class="layui-bg-blue" />
		
		<!--
        	作者：1027788634@qq.com
        	时间：2019-12-30
        	描述：Body
        -->
     <div class="margin-logo">
		<div class="layui-row  kh-bg-white margin-logo layui-col-space20"><br>
			<div class="layui-col-md">
				<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
				  <legend>我的奖学金申请表</legend>
				</fieldset>
			     <form class="layui-form" id="test">
				 	<div class="layui-form-item">
			 		 	<label class="layui-form-label">姓名:</label>
					    <div class="layui-input-inline">
					      <input id="tea_name" name="tea_name" type="text"  required lay-verify="required" value="${tea_detail.tea_name}"  class="layui-input">
					    </div>
					    <label class="layui-form-label">学号:</label>
					    <div class="layui-input-inline">
					      <input id="tea_id" name="tea_id" required  lay-verify="required" placeholder="请输入学号" value="${tea_detail.tea_id}" class="layui-input">
					    </div>
					</div>
					
					<div class="layui-form-item">
						<label class="layui-form-label">性别:</label>
					    <div class="layui-input-inline">
					      <input id="tea_sex" name="tea_sex" type="text"  required lay-verify="required" placeholder="请输入性别" value="${tea_detail.tea_sex}" class="layui-input">
					    </div>
					</div>
					
					<div class="layui-form-item">
			 		 	<label class="layui-form-label">学院:</label>
					    <div class="layui-input-inline">
					      <input id="tea_institution" name="tea_institution" type="text"  required lay-verify="required" placeholder="请输入学院"  value="${tea_detail.tea_institution}" class="layui-input">
					    </div>
					   <label class="layui-form-label">民族:</label>
					    <div class="layui-input-inline">
					      <input id="tea_nation" name="tea_nation" type="text" required  lay-verify="required" placeholder="请输入民族" value="${tea_detail.tea_nation}" class="layui-input">
					    </div>
					</div>
					
					<div class="layui-form-item">
			 		 	<label class="layui-form-label">手机号:</label>
					    <div class="layui-input-inline">
					      <input id="tea_tel_num" name="tea_tel_num" type="text"  required lay-verify="required" placeholder="请输入手机号" value="${tea_detail.tea_tel_num}" class="layui-input">
					    </div>
					    <label class="layui-form-label">身份证号:</label>
					    <div class="layui-input-inline">
					      <input id="app_ID_number" name="app_ID_number" type="text" required  lay-verify="identity" placeholder="输入身份证号" value="${tea_detail.tea_ID_number}" class="layui-input">
					    </div>
					</div>
					
					<div class="layui-form-item">
			 		 	<label class="layui-form-label">职称:</label>
					    <div class="layui-input-inline">
					      <input id="tea_job_title"  name="tea_job_title" type="text"  required lay-verify="required" placeholder="请输入职称" value="${tea_detail.tea_job_title}" class="layui-input">
					    </div>
					    <label class="layui-form-label">权限:</label>
					    <div class="layui-input-inline">
					      <input id="tea_role" name="tea_role" type="text" required  lay-verify="required" placeholder="请输入权限" value="${tea_detail.tea_role}" class="layui-input">
					    </div>
					</div>
					
					 
					 
					
		 
					 
				 
				    <div class="layui-form-item">
					    <div class="layui-input-block">
					      <button id="updata_stu_info_btn" class="layui-btn"  lay-submit lay-filter="update-filter">确认修改</button>
					    </div>
				    </div>
				</form><!--form end-->
			
			
			</div><!--layui-col end-->
		</div><!--layui-row end-->
		
		
	</div><!-- 主体 end -->> 	
		
		
		 
 <!--My Html Code End -->
 

 



</body>

<script>
			 layui.use('form', function(){  
			 var form = layui.form;//获取form模块
			  
			 
			 
			  //监听提交按钮--修改学生申请表信息
			  form.on('submit(update-filter)', function(data){
			    console.log(data)
		  		layer.msg(JSON.stringify(data.field));
			    
			     $.ajax({
			    	url:"${pageContext.request.contextPath}/teacher/do_tea_update_stu_info",
			    	type:"POST",
			    	dataType:"json",
			    	contentType:'application/json; charset=UTF-8',
			    	data:JSON.stringify(data.field),
			    	success:function(result){
			    		layer.msg("修改成功");
			    	}
			    });//ajax end  
			    
		  		//window.location.href="apply-success.jsp";
    			return false;
			  });//layui form end 
			 
			});//layui end
</script>
</html>