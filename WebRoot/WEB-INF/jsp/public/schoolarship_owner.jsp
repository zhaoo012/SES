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
								  <legend>意气风发恰同学少年—访问信工程院国获奖者马虹</legend>
					</fieldset>
					<div style="text-align: left;font-size: 16px;line-height: 2;">
           					<p style="text-align:left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;采访时间约在下午的两点，深灰色的针织衫、修身牛仔裤、黑色马丁靴，这一身的装扮加上本身就高挑的身材让马虹看起来格外的干练。当她向我走来时，正午的阳光透过窗户刚好映在她自信的面庞上，我的脑海里立即浮现出“意气风发，正值少年风华”这一句话。见其人便知其性，这用在马虹身上是再合适不过的。</p>
							<p>　　马虹出生在一个普通农村家庭，也是家族里为数不多的大学生，正因为此，她被家人寄予了厚望；也是因此，在面对困难时她远比很多同龄人更加坚韧。但马虹又是小女儿，父母兄长总会在她需要的时候站出来，在她受挫的时候他们也总是给予她最大的鼓励与支持，而这些来自家庭的鼓励，让马虹在处事方面更加的从容与坚定。</p>
							<p>　　提起国奖，她显得平静又自然。“我觉得还是平常心吧，因为这个事情它不是一蹴而就的，而是不断地付出努力，自然地就变成了一件水到渠成的事情。”马虹说。除了自己的努力，在申请国奖的过程中还有一位老师给她提供了很大的帮助——她的辅导员张思佳老师。在马虹递交国奖申请材料之后，回过头来再检查时却发现了一个不大不小的问题，她急忙给学生处的老师发信息想要修改一下，学生处的老师却告诉她材料没有问题，马虹在之后的国奖座谈会上才知道，是张思佳老师细心认真的私下帮她修改了材料，“我真的非常感谢我的辅导员。”马虹说。</p>
							<p>　　在大学二年级马虹就获得了国家励志奖学金，但她并未因此停下步伐，反而是更加努力的不断充实自我，完善自我，这才有了今天国奖的“水到渠成”。</p>
							<p>　　在马虹看来，获得国奖的这种“水到渠成”是“积小流成江河”的从容。在过去的大学三年里，马虹的努力不仅仅局限于自己的学业方面，还有作为“学生服务者”的不断付出与奉献。</p>
							<p>　　虽然今年已经大三，但是马虹仍然坚守在学生会主席的岗位上，秉持着为同学们服务的信念，认真负责的做好老师与学生这一“纽带”的工作。当与她谈及学生会工作这一话题时，她的脸上尽是藏不住的自豪。</p>
							<p>　　从大一的学生会干事到大二的生活部部长再到大三的学生会主席，每一段的时期都记录着马虹与学生会的故事。提及在学生会中最难忘的一件事时，马虹脱口而出的便是自己大一作为学生会干事时，第一次与学姐学长配合策划、组织的“2017年迎新晚会”，因为这是她初次体验到如同影视作品中所描述的多姿多彩的大学生活，虽然时常会因为舞台的布置、全场的场控布置制作而忙得焦头烂额，但是当当年的迎新晚会如期举行、圆满结束时，仿佛背后的辛酸已经烟消云散，围绕着自己的全部是满满的成就感。同时也坚定了自己以后留在学生会的决心。</p>
							<p>　　但随着时间的推移，步入大三的马虹整体时间比前两年紧张了许多。大三课业的加重，马虹只能将自己休息的时间平衡给学生会工作。“我们每周都要组织开会，安排一周的工作事项，有时候还会因为一些事工作到晚上很晚才能结束。”说这话时，马虹的眼里却没有一丝疲倦，取而代之的是眼中的光芒。在马虹任职马克思主义学院学生会主席这一职务后，真正的做到了“认真负责”这四个字，无论是在学生会实施的改革，还是将其落实于行动，这些都是对她认真负责最强有力的说服。</p>
							<p>　　在整理马虹资料的时候，发现她大学三年来做了不少志愿活动，问及对志愿者的感想的时候，她微微一笑，“志愿者，我觉得不应该在意这个词是什么，而是要观其本质，你要是你乐于奉献、有责任感，那么你就是一个真正的志愿者。”究其根本，志愿者的工作不就如同马虹说的这般。</p>
							<p>　　哲学，是马虹最喜欢的科目，哲学所说的“一切以实际出发”，这是马虹很欣赏的理念，正如她本人一样。这虽是短短的一句话，却贯穿了马虹大学三年里几乎所有的工作、学习和生活。</p>
							<p>　　每个人都有每个人的追求，也有对未来的展望。</p>
							<p>　　“唯有胸怀理想，锤炼品格，脚踏实地，才能离下一个成功越来越近，长存‘忧患意识’，把握好当下的每一条路，适当的抓住理想与机遇，立鸿鹄志，做奋斗者，平整更好地土地，在下一个八九月收货不一样的果实。”这是马虹对自己始终如一践行的一段话，对她而言，这不仅仅是自己大学四年的奋斗，更是她一生的追求。</p>
							<p>　　采访结束后，马虹向我们表达了谢意，便迈着干练的步伐离去。就连此刻的阳光也十分偏爱这个女孩，毫不吝啬的照在她坚毅的背影上。</p>
							<p style="text-align:center;"><img src="${pageContext.request.contextPath}/images/mahong.jpg"></p>
							<p>　　记者：姚瑾、李娜</p>
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