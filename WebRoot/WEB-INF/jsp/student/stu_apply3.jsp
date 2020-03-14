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
		<title>奖学金申请提交成功</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/public.css">
    	<link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/xadmin.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/xadmin.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.js"></script>
</head>
<body class="layui-bg-gray"><!--背景变成灰色还挺好看的-->
	
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
								<a href="${pageContext.request.contextPath}/student/stu_index">首页</a>
						</li>
						<li class="layui-nav-item ">
								<a href="${pageContext.request.contextPath}/student/stu_apply1">申请奖学金</a>
						</li>
						<li class="layui-nav-item ">
								<a href="${pageContext.request.contextPath}/student/stu_apply_result">查看审核结果</a>
						</li>
						<li class="layui-nav-item ">
								<a href="${pageContext.request.contextPath}/student/stu_getAward_show">往届风采</a>
						</li>
						<li class="layui-nav-item layui-col-md-offset4 ">
						    <a href=" ">test<span class="layui-badge ">9</span></a>
						</li>
						<li class="layui-nav-item ">
						    <a href="${pageContext.request.contextPath}/student/stu_selfinfo"><i class="layui-icon layui-icon-username "></i> 个人中心<span class="layui-badge-dot "></span></a>
						</li>
						<li class="layui-nav-item ">
						  	  <img src="${pageContext.request.contextPath}/images/touxiang.jpg " class="layui-nav-img ">
	     <!--username--> 	   ${realname}同学你好<span class="layui-badge-dot "></span>
						</li>
						<li class="layui-nav-item ">
						     <a href="${pageContext.request.contextPath}/logout">退出登录</a>
						</li>
					</ul>
			</div><!--导航栏の列 layui-row end-->
	</div><!--导航栏 layui-row end-->
		
		<hr class="layui-bg-blue" />
		<!--
        	作者：1027788634@qq.com
        	时间：2019-12-30
        	描述：Body
        -->
        
		<div class="layui-row  kh-bg-white margin-logo layui-col-space20"><br>
			<div class="layui-col-md">
				<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
				  <legend>
				  	<i class="layui-icon layui-icon-face-smile" style="font-size: 30px; color: #EB7350;"></i>  
				  	你申请表已成功提交
				  </legend>
				</fieldset>
			</div><!--layui-col end-->
		</div><!--layui-row end-->
		
		<div class="layui-row  kh-bg-white margin-logo layui-col-space20 ">
			<div class="layui-col-md font-center">
					<h1>奖学金申请已提交到系统，请同学耐心等待审核结果。</h1>
			</div>	
		</div>
		
		<div class="layui-row  kh-bg-white margin-logo layui-col-space20 height500">
			<div class="layui-col-md font-center">
				<h2>
				<a  href="index.jsp" class=" layui-btn layui-btn-danger">
				 		3秒后跳转至首页,无响应请点击跳转至首页.
				</a>
				</h2>
			    <span class="layui-word-aux" id="clock">
			    	<h1>3秒</h1>
			    </span>
		 	</div>
		</div>
		<br/>
		
		
			<!--
	    	作者：1027788634@qq.com
	    	时间：2019-12-29
	    	描述：底部
	    -->
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
 <!--My Html Code End -->

<script>
	 var t=3;
	 var time=$("#clock")[0];
	 function countNum(){
	 	t--;
	 	time.innerHTML=t;
	 	if(t<=0){
	 		window.location.href="${pageContext.request.contextPath}/student/stu_index";
	 		clearInterval(inter);
	 	}
	 }
	 
	var inter=setInterval("countNum()",1000); //等用的时候再启动
	 
</script>

</body>
</html>