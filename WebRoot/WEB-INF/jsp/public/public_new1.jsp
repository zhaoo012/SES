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
						    <a href="selfinfo.jsp "><i class="layui-icon layui-icon-username "></i> 个人中心<span class="layui-badge-dot "></span></a>
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
								  <legend>教育部致全国大学生的一封信</legend>
					</fieldset>
					<div style="text-align: left;font-size: 16px;line-height: 2;">
							<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2020年初的这场始料未及的疫情和前所未有的庚子春节，让我们成为“宅男”“宅女”，让好友相会变成视频聊天，亲朋相聚变成隔空拜年。蔓延的疫情让我们感受的不仅仅是焦急不安，还有最美“逆行者”带给我们的温暖。</p>
							<p>疫情就是命令，防控就是责任。在以习近平同志为核心的党中央坚强领导下，各级党组织和广大党员干部、医务工作者全面落实联防联控措施，构筑起群防群治的严密防线。大学生们是与新时代共同前进的一代，相信你们在疫情防控的斗争面前，一定会肩负起时代赋予的使命与责任，与祖国同命运，与人民共患难，为夺取抗击新形冠状病毒感染肺炎疫情斗争的胜利作出应有的贡献。</p>
							<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 做“守护者”，就是担使命、保安康。当前，疫情仍在蔓延，防控正处于关键期。很多医学专业的师生已经奔赴前线，成为病患者坚强的守护者。危急之时唯有担当方显忠诚，让青春在与肆虐的病毒抗争中绽放。在你们还没有掌握相关医学知识和专业技能阻击疫情时，保护好自己，不让关爱我们的人揪心，就是对他人生命安全的负责，就是对一线医务人员的宽慰，就是在为这场“战疫”作贡献。每一位同学都牵系一个家庭，每一个青年应担当一份使命，自觉做科学的传播者、谣言的粉碎者、健康的守护者、家庭的关爱者。每一位同学的平安，每一个家庭的健康，就是平安华夏、健康中国的坚固基石。</p>
							<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 做“修行者”，就是宅其身、抱道行。“万物得其本者生，百事得其道者成。”在文学经典中陶冶情操、增加才情，做到“腹有诗书气自华”；在哲学经典中改进思维、把握规律，增强哲学思辨能力；在伦理经典中知廉耻、明是非、懂荣辱、辨善恶，培养健全的道德品格；在网络资源平台上自主专业学习和自我提升，做到“停课不停学、学习不延期”；通过师生线上切磋琢磨、教学相长。</p>
							<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 做“识途者”，就是要做到游必有方。为了同学们的健康平安，教育部已做出2020年春季学期延期开学的决定，这是抗击疫情的需要，也是党和人民对莘莘学子的关心和厚爱。疫情割断不了亲情，无论你身在何方，请记得学校的老师们时刻牵挂着你，也盼望着大家都能以健康、阳光的姿态踏上返校之路。返程之时，也许疫情还没有完全解除，大家务必按照统一部署，配合学校返校复学工作的相关安排，做好个人防护和返程规划，游必有方，尽可能缩短返程时间，做到错峰出行、平安出行，在新学期以昂扬向上的姿态展现大学生的满怀豪情和青春活力。</p>
							<p>亲爱的同学们，乌云遮不住升起的太阳，疫情挡不住春天的来临，让我们紧密团结在以习近平同志为核心的党中央周围，坚定必胜信念，万众一心，众志成城，夺取抗击疫情斗争的最终胜利。我们也将与学校的老师们一道，在全国各地的校园里期待着在庚子年的春天与大家重逢！</p>
							<p style="text-align:right;">2020年2月3日</p>
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