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
		<title>关于招募疫情防控工作志愿者的倡议书</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/public.css">
    	<link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/xadmin.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/xadmin.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.js"></script>
</head>
<body><!--背景变成灰色还挺好看的-->
	
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
								<a href="${pageContext.request.contextPath}/studnent/stu_index">首页</a>
						</li>
						<li class="layui-nav-item ">
								<a href="${pageContext.request.contextPath}/student/stu_apply1">申请奖学金</a>
						</li>
						<li class="layui-nav-item layui-col-md-offset5 ">
						    <a href=" ">test<span class="layui-badge ">9</span></a>
						</li>
						<li class="layui-nav-item ">
						    <a href="${pageContext.request.contextPath}/student/self_info"><i class="layui-icon layui-icon-username "></i> 个人中心<span class="layui-badge-dot "></span></a>
						</li>
						<li class="layui-nav-item ">
						  	  <img src="${pageContext.request.contextPath}/images/touxiang.jpg " class="layui-nav-img ">
	     <!--username--> 	   ${realname}您好同学你好<span class="layui-badge-dot "></span>
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
		<div class="layui-row margin-logo">
			<br />
			<div class="layui-col-md">
					<fieldset class="layui-elem-field layui-field-title">
								  <legend>关于招募疫情防控工作志愿者的倡议书</legend>
					</fieldset>
					<div style="text-align: left;font-size: 16px;line-height: 2;">
              <p   style="text-align:left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
							<p>　　志愿者采取按需分批招募。第一批采取属地招募。主要招募对象：居住在我校中校区和翠华路住宅小区的处科级干部和教职工党员。主要任务：在中校区和翠华路住宅小区开展进出人员的体温检测、信息排查、数据统计、解释劝导，协助物业管理等工作。学校将按照个人实际，就近就便安排上岗，每天工作约3小时。</p>
							<p>　　“疫情就是命令，防控就是责任”“一个支部就是一个堡垒，一名党员就是一面旗帜”，在疫情高发期和防控的关键阶段，为切实切断病毒传染源，科学有力防控疫情，校党委号召广大党员干部在做好自我防护的同时，积极参与到疫情防控工作中来，以实际行动，共同保护我们自己的家园，共同保护师生的生命安全与身体健康。望广大党员、干部结合自身实际，积极报名，勇挑重担，共同打赢这场没有硝烟的防疫阻击战。</p>
							<p>　　请有意向的党员、干部志愿者，向所在党总支（直属党支部）报名，明确个人意愿、居住地点、联系方式；由各党总支汇总，填写《疫情防控志愿者报名表》交党委组织部，由学校疫情防控办公室统一安排上岗（请身体素质差或家有病号的教职工党员做好自保即可，谢绝报名）。</p>
							<p>　　报名时间：2月1日—2日</p>
							<p>   联系人：薛娟18991866425（微信同号）</p>
							<p>   邮  箱：xuejuan2012@163.com</p>
	          </div><!-- 内容 end -->
			</div><!-- layui col end -->
		</div><!-- layui row end -->
		
			
			
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



</body>
</html>