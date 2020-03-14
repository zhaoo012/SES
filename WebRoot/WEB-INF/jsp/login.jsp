<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>">
    
    
	<title>欢迎访问大学生奖学金评定系统</title>
 	<link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
	  
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font.css" />  
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/xadmin.css" />  
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/xadmin.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.js"></script>
  </head>
  
  <body class="login-bg">
    <div class="login layui-anim layui-anim-up">
        <div class="message">欢迎登录奖学金评定系统</div>
        <div id="darkbannerwrap"></div>
                                       <!--
                                       	时间：2019-12-27
                                       	描述：小三角黑色阴影
                                       -->
        <form id="login_form" class="layui-form">
            <input name="username" placeholder="用户名"  type="text" lay-verify="required" class="layui-input" >
            	<hr class="hr15">
            <input name="password" lay-verify="required" placeholder="密码"  type="password" class="layui-input">
            	<hr class="hr15">
            <input  id='login_btn' value="登录" lay-submit lay-filter="login" style="width:100%;" type="button">
            	<hr class="hr20">
            	<a href="#">忘了密码？</a>
        </form>
    </div>
 <!--My Html Code End -->

<script>

layui.use('form', function(){  
	  var form = layui.form;//获取form模块
	  
	  //监听提交按钮
	  form.on('submit(login)', function(data){
	  		console.log(data)
	  		var json_data=JSON.stringify(data.field);//表单数据json化
	  		 $.ajax({//阿贾克斯
				  url:"${pageContext.request.contextPath}/login",//提交接口
				  type:"POST",   //提交方式
				  dataType:"json",
				  contentType: 'application/json; charset=UTF-8',//指定数据类型:json
				  data:json_data,//数据是 json串
				  success:function (result){ //成功回调函数
					  console.log(result);
				  	  if(result.code==100){
					      if(result.extendInfo.status=="admin"){
					    	  layer.msg("管理员界面");
					    	  window.location.href="${pageContext.request.contextPath}/admin/adm_index";
					      }else if(result.extendInfo.status=="teacher"){
					    	  layer.msg("教师界面");
					    	  window.location.href="${pageContext.request.contextPath}/teacher/tea_index";
					      }else{
					    	  layer.msg("学生界面");
					    	  window.location.href="${pageContext.request.contextPath}/student/stu_index";
					      }
				  	  }//if result.code==100 end
				  	  else{
				  		  layer.msg(result.extendInfo.login_error);
				  	  }
				  }//success end
		 	 });//ajax end
			return false;
	  });//form.on end
});//layui.use end
</script> 
</body>
</html>