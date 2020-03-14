<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>奖学金申请提交成功</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/public.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/layui/css/layui.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/font.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/xadmin.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/xadmin.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/layui/layui.js"></script>
</head>
<body class="layui-bg-gray">
	<!--背景变成灰色还挺好看的-->

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

 

	<div class="margin-logo kh-bg-white">
		<fieldset class="layui-elem-field layui-field-title">
			<legend>历年奖学金获得者</legend>
		</fieldset>

		<ul class="layui-timeline">
			<li class="layui-timeline-item"><i
				class="layui-icon layui-timeline-axis"></i>
				<div class="layui-timeline-content layui-text">
					<div class="layui-timeline-title">
						2020年:一等奖学金:李易峰,韩松,黄晓明,孙杨,周杰伦,罗志祥,蔡一鸣,汪涵,张杰,谢娜 <br /> &nbsp;
						&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
						二等奖学金:蔡徐坤,刘昊然,吴昕,刘爱玲,张潇潇,杨颖 <br /> &nbsp; &nbsp; &nbsp; &nbsp;
						&nbsp; &nbsp; &nbsp; 三等奖学金:孙埠,刘德华,成龙,郭富城,孙燕姿
					</div>
				</div></li>
			<li class="layui-timeline-item">
			<i class="layui-icon layui-timeline-axis"></i>
				<div class="layui-timeline-content layui-text">
					<div class="layui-timeline-title">
						2019年:一等奖学金:李易峰,韩松,黄晓明,孙杨,周杰伦,罗志祥,蔡一鸣,汪涵,张杰,谢娜 <br /> &nbsp;
						&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
						二等奖学金:蔡徐坤,刘昊然,吴昕,刘爱玲,张潇潇,杨颖 <br /> &nbsp; &nbsp; &nbsp; &nbsp;
						&nbsp; &nbsp; &nbsp; 三等奖学金:孙埠,刘德华,成龙,郭富城,孙燕姿
					</div>
				</div></li>
			<li class="layui-timeline-item">
			<i class="layui-icon layui-timeline-axis"></i>
				<div class="layui-timeline-content layui-text">
					<div class="layui-timeline-title">
						2018年:一等奖学金:李易峰,韩松,黄晓明,孙杨,周杰伦,罗志祥,蔡一鸣,汪涵,张杰,谢娜 <br /> &nbsp;
						&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
						二等奖学金:蔡徐坤,刘昊然,吴昕,刘爱玲,张潇潇,杨颖 <br /> &nbsp; &nbsp; &nbsp; &nbsp;
						&nbsp; &nbsp; &nbsp; 三等奖学金:孙埠,刘德华,成龙,郭富城,孙燕姿
					</div>
				</div></li>
			<li class="layui-timeline-item">
			<i	class="layui-icon layui-timeline-axis"></i>
				<div class="layui-timeline-content layui-text">
					<div class="layui-timeline-title">
						2017年:一等奖学金:李易峰,韩松,黄晓明,孙杨,周杰伦,罗志祥,蔡一鸣,汪涵,张杰,谢娜 <br /> &nbsp;
						&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
						二等奖学金:蔡徐坤,刘昊然,吴昕,刘爱玲,张潇潇,杨颖 <br /> &nbsp; &nbsp; &nbsp; &nbsp;
						&nbsp; &nbsp; &nbsp; 三等奖学金:孙埠,刘德华,成龙,郭富城,孙燕姿
					</div>
				</div></li>
			<li class="layui-timeline-item">
			<i	class="layui-icon layui-anim layui-anim-rotate layui-anim-loop layui-timeline-axis"></i>
				<div class="layui-timeline-content layui-text">
					<div class="layui-timeline-title">
						2016年:一等奖学金:李易峰,韩松,黄晓明,孙杨,周杰伦,罗志祥,蔡一鸣,汪涵,张杰,谢娜 <br /> &nbsp;
						&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
						二等奖学金:蔡徐坤,刘昊然,吴昕,刘爱玲,张潇潇,杨颖 <br /> &nbsp; &nbsp; &nbsp; &nbsp;
						&nbsp; &nbsp; &nbsp; 三等奖学金:孙埠,刘德华,成龙,郭富城,孙燕姿
					</div>
				</div></li>
		</ul>
	</div>
	<!--marin-logo end-->

	<br />


	<!--
	    	作者：1027788634@qq.com
	    	时间：2019-12-29
	    	描述：底部
	    -->
	<div class="layui-row layui-bg-black height300 ">
		<div class="layui-col-md3 layui-col-md-offset3 margin-top30 ">
			<img src="${pageContext.request.contextPath}/images/WeChat.png "
				class="wechat-img " />
		</div>
		<div class="layui-col-md3 margin-top30 ">
			<table>
				<tr>
					<th><h2>版权所有</h2></th>
					<th><h2>:赵凯航毕业设计作品</h2></th>
				</tr>
				<tr>
					<th><h2>联系方式</h2></th>
					<th><h2>:horyes012(WeChat)</h2></th>
				</tr>
			</table>
		</div>
	</div>
	<!--bottom layui-row end-->
	<!--My Html Code End -->

	 

</body>
</html>