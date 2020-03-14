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
<body  ><!--背景变成灰色还挺好看的-->
	
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
				  	我的审核进度
				  </legend>
				</fieldset>
			</div><!--layui-col end-->
		</div><!--layui-row end-->
		
		<div class="layui-row  kh-bg-white margin-logo layui-col-space20 ">
			 
			<div class="layui-col-md2 layui-col-md-offset4  font-center">
				<fieldset class="layui-elem-field">
				  <div class="layui-field-box layui-bg-blue" id="apply_result" >
				  </div>
				</fieldset>
			</div>	
		</div>
		
		 
		
		
			<!--
	    	作者：1027788634@qq.com
	    	时间：2019-12-29
	    	描述：底部
	    -->
		<div class="layui-row layui-bg-black height300 " style="margin-top:400px">
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
 layui.use('layer', function(){
	  var element = layui.element;
	  
		  $.ajax({
				 url:"${pageContext.request.contextPath}/student/stu_check_apply_process?app_id="+${username},
				 type:"get",   //提交方式
				 success:function(result){
					 if(result.extendInfo.app_status==0){//没通过
					 	layer.msg("审核不通过!");
					 	$("#apply_result").html("审核不通过QAQ");
					 	return false;
					 }
					 else if(result.extendInfo.app_status==1){//老师审核通过
						 $("#apply_result").html("审核通过AQA");
						 layer.msg("审核通过");
					 	 return false;
					 }else if(result.extendInfo.app_status==2){//奖学金发放成功
						 $("#apply_result").html("发放成功");
						 layer.msg("发放成功");
						 return false;
					 }
				 }//success end
			 });//ajax end  
	});//layui use end
	      
	</script>

</body>
</html>