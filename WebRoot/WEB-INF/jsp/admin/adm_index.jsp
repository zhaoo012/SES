<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

 
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
	  <title>超级管理员页面</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/public.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/xadmin.css" />
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/xadmin.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.js"></script>
</head>
<body>
  <div class="container">
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
						<li class="layui-nav-item layui-col-md-offset5 ">
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
  </div><!-- container end -->
  
    <!-- 左侧菜单开始 -->
    <div class="left-nav">
      <div id="side-nav">
        <ul id="nav">
            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe726;</i>
                    <cite>人员管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                
                <ul class="sub-menu">
                    <li>
                    	<!-- 学生页面 -->
          <!-- done --> <a _href="${pageContext.request.contextPath}/admin/adm_manage_stu"> 
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>学生管理</cite> 
                        </a> 
                    </li>
                    
                    <li>
                        <a  _href="${pageContext.request.contextPath}/admin/adm_manage_tea">
                            <i  class="iconfont">&#xe6a7;</i>
                            <cite>教师管理</cite>
                        </a>
                    </li >
                    
                    <!-- 我的成绩 -->
                    <li>
                        <a _href="${pageContext.request.contextPath}/admin/adm_manage_adm">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>管理员管理</cite>
                        </a>
                    </li>
                    
                     <!-- <li>
                        <a _href="admin-rule.html">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>权限管理</cite>
                        </a>
                    </li> -->
                    
                </ul>
            </li>
        </ul>
      </div>
      
      <!-- 第二标题 -->
       <div id="side-nav">
        <ul id="nav">
            <li>
                <a href="http://info.xawl.edu.cn/"  target="_blank">
                      <i class="layui-icon">&#xe66c;</i>
                    	信息工程学院
                </a>
            </li>
         </ul>   
      </div>
      
       <!-- 第n标题  待扩充-->
       <div id="nav-item">
        <ul id="nav">
            <li>
                <a href="">
                    <i class="layui-icon">&#xe609;</i>
                    	敬请关注!!!
                </a>
            </li>
         </ul>   
      </div>
      
    </div>
    <!-- 左侧菜单结束 -->
    
    <!-- 右侧主体开始 -->
    <div class="page-content">
        <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
          <ul class="layui-tab-title">
            <li class="home"><i class="layui-icon">&#xe68e;</i>我的桌面</li>
          </ul>
          <div class="layui-tab-content">
            <div class="layui-tab-item layui-show">
                <iframe src='${pageContext.request.contextPath}/admin/charts' frameborder="0" scrolling="yes" class="x-iframe"></iframe>
            </div>
          </div>
        </div>
    </div>
    <div class="page-content-bg"></div>
    <!-- 右侧主体结束 -->
    <!-- 中部结束 -->
    <!-- 底部开始 -->
    <div class="footer">
        <div class="copyright">Copyright ©2018 ZKH All Rights Reserved</div>  
    </div>
    <!-- 底部结束 -->
<script>
//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element;
  
});
</script>
 
</body>
</html>