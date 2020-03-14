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
								  <legend>齐心协力 攻克时艰 ─外国语学院疫情防控在行动</legend>
					</fieldset>
			 <div style="text-align: left;font-size: 16px;line-height: 2;">
            <p>
              </p><p>　　武汉新型冠状肺炎疫情，打破了春节的平静。面对疫情，全国人民众志成城，共克时艰。在这个不一样的春节里，外国语学院上下一心，义不容辞，履职尽责，扎实做好疫情防控各项工作。</p>
					<p>　　学院领导高度重视疫情防控工作，全面落实中央、国家教育部、省教育厅、和学校的各项具体要求，学院及时成立了疫情防控领导小组，分别制定了全院和学生工作防控方案，由书记、院长统一组织部署，院领导各分管一个系部，采用各系部主任、书记分包到人的方式，第一时间响应工作，做实做细各项工作。</p>
					<p>　　学院23位教师勇于担当，积极参与疫情防控期间的学生的排查和管理工作。老师们的参与，使广大学生的思想和心理得到及时疏导，使排查工作更加细致、准确、高效。</p>
					<p>　　学院17、18、19级共49名学业指导教师全部参与学院疫情防控期间学生线上学习的指导工作。学业指导教师们组织各班开展形式多样的线上学习交流活动，指导学生制定科学的作息时间，在家实施自主学习，开展单词背诵、专四备考复习、书籍阅读、家务劳动、生活能力培养等各方面活动，做到了防控期间学生学习有计划、有安排、有指导、有督查。</p>
					<p>　　“疫情就是命令，防控就是责任”。学院20名教师积极响应学校号召参加疫情防控志愿服务工作，其中有杨红梅等5名教授，有张秀芝等4名非党员教师。书记王克盈老师等虽不在家属区居住，却不畏困难报名参加志愿者。崔建斌老师在得知翠华路家属院退休教师多，排查工作难度大，人员不足的情况后，与其爱人（学校其他部门党员职工）一起坚守岗位，协助物业及后勤部门登记进出人员状况，并且耐心向居民解释雁塔区及家属院在非常时期的相关规定。 魏青、杨晓茹老师的孩子年龄小，需人照料，但她们依然积极报名参加志愿服务。翻译系教师熊国芳老师和朋友一起，积极联系物资，组织捐助，为武汉周边的孝感市、黄冈市、荆门市、汉川等多家医院送去防护服、口罩、护目镜等急需物资。大英教学部杜蓉老师在自己生重病的情况，两次默默为武汉捐款。</p>
					<p>　　按照学校延迟开学预案的文件精神，在学院负责人韩红建的指导下，分管教学工作的副院长及英语、翻译、日语、大英教学部四位系主任，积极为延迟开学制定线上线下教学预案。各系部列出了下学期各年级开设课程课表清单，并逐一和任课教师商讨确定上课方式，有重点分步骤的推进线上教学，并把专业核心课程和必修课作为前两周开设线上课程的重点。这些举措为开学后，教学工作的顺利开展奠定了良好基础。同时各系部结合专业特点，为防疫期间学生的专业学习设计了学习方案，制定学习计划，安排布置了寒假作业。</p>
					<p>　　在目前全院685名学生，只有一名专职辅导员的情况下，辅导员田先利老师夜以继日，任劳任怨开展抗疫工作。她以班级为单位，利用微信、钉钉、QQ等平台及时发送信息，做好学生健康教育和防护知识普及，积极落实班级的学生外出情况，日提醒、日汇报，加强排查力度。同时，学工办还积极安排了学生居家学习、技能训练、第二课堂的具体内容、考核及评价方案等。</p>
					<p>　　防控疫情不出户，师生沟通心连心，责任在肩担使命，团结一心齐努力。外国语学院全体师生为抗击疫情，团结一心做贡献，我们始终坚信，没有哪个冬天不能逾越，没有哪个春天不会来临。虽然疫情还在，但绝不会击垮我们。我们终会战胜疫情，摘下口罩，拥抱健康快乐的生活。</p>
					            <p></p>
          </div>
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



</body>
</html>