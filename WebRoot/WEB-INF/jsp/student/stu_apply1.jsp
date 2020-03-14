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
		<title>奖学金申请第一步</title>
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
<div class="margin-logo">     
		<div class=" margin-logo layui-row  kh-bg-white  layui-col-space20"  ><br>
			<div class="layui-col-md">
				<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
				  <legend>关于奖学金评定工作通知</legend>
				</fieldset>
				<fieldset class="layui-elem-field">
				  <legend>评选范围</legend>
				  <div class="layui-field-box">
				  		 本校二年级以上(包含二年级)
				  </div>
				</fieldset>
				<fieldset class="layui-elem-field">
				  <legend>评选工作时间安排</legend>
				  <div class="layui-field-box">
				  	申请开始:2020-3-10 0:00<br>
				  	申请结束:2020-3-20 0:00<br>
				  	公开开始:2020-3-30 0:00<br>
				  	公开结束:2020-4-10 0:00
				  </div>
				</fieldset>
				
				
				<fieldset class="layui-elem-field">
				  <legend>评选依据</legend>
				  <div class="layui-field-box">
				  		 参照《西安文理学院学生奖学金评定办法》2020版学生手册执行
				  </div>
				</fieldset>
				<fieldset class="layui-elem-field">
				  <legend>评选流程</legend>
				  <div class="layui-field-box">
				  		 参照《西安文理学院学生奖学金评定办法学生处发布评选通知》→学生向所在学院提出申请→班级民主评议确定候选人→学院审核候选人情况→学院公示,处理投诉→学校公示→报送财务部→学院开会表彰
				  </div>
				</fieldset>
				<fieldset class="layui-elem-field">
				  <legend>申请条件</legend>
				  <div class="layui-field-box">
				  		<p>申请奖学金的学生应当学习成绩优异，社会实践、创新能力、综合素质等方面特别突出。</p>
				  		<p>学生的综合考评成绩排名必须在评选范围内位于前10%。</p>
				  		<p>（1）热爱社会主义祖国，拥护中国共产党的领导；</p>
						<p>（2）遵守宪法和法律，遵守学校规章制度，无违纪行为，未受过任何校纪处分；</p>
						<p>（3）诚实守信，道德品质优良；</p>
						<p>（4）勤奋学习，积极上进，在校期间成绩优秀，无不及格的课程；</p>
						<p>（5）家庭经济困难，生活俭朴；</p>
						<p>（6）获得本学年校系级三好学生或优秀学生干部或优秀团员的经济困难学生可优先推荐。</p>
				  </div>
				</fieldset>	
				<fieldset class="layui-elem-field">
				  <legend>奖学金等级分类</legend>
				  <div class="layui-field-box">
				  		<p>学生年度综合排名在班级排名前4%可以申请一等奖学金</p>
				  		<p>学生年度综合排名在班级排名前6%可以申请二等奖学金</p>
				  		<p>学生年度综合排名在班级排名前8%可以申请三等奖学金</p>
				  </div>
				</fieldset>
			</div><!--layui-col end-->
		</div><!--layui-row end-->
		
		<!-- margin-logo不起作用也不知道为啥 -->
		<div class="layui-row  kh-bg-white layui-col-space20">
			<div class="layui-col-md layui-col-lg-offset5">
						<a  href="${pageContext.request.contextPath}/student/stu_apply2" id="i-know-btn" class="layui-btn layui-btn-disabled">我已知晓</a>
						<span id="countNum">7秒</span>
			</div>
		</div><!--倒计时按钮 end-->
</div><!-- 主体  end -->
			
			
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
	var time=$("#countNum")[0];//js对象
	//或者 var time =document.getElementById("countNum");
	function countDown(){
		t--;
		time.innerHTML=t+"秒";
		if(t<=0){
			$("#i-know-btn").removeClass("layui-btn-disabled");//移除disabled样式
			time.remove();//移除倒计时显示的<span>
			clearInterval(inter);
		}
	}
	var inter=setInterval("countDown()",1000);
</script>

</body>
</html>