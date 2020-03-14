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
  <title>欢迎访问大学生奖学金评定系统</title>
  
  	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/public.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font.css" />  
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/xadmin.css" />  
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/xadmin.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.js"></script>
  </head>
    
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
		<div class="layui-row  kh-bg-white  layui-col-space20"><br>
			<div class="layui-tab">
				<ul class="layui-tab-title">
					<li class="layui-this layui-col-md2 layui-bg-red">个人信息</li>				
					<li class="layui-this layui-col-md2 layui-bg-red">我的成绩</li>				
					<li class="layui-this layui-col-md2 layui-bg-red">账号安全</li>				
				</ul>
				<div class="layui-tab-content">
	<!--1个人信息--><div class="layui-tab-item">
						<div class="layui-row" style="height: 800px;">
						 	<div class="layui-col-md">
								<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
								  <legend>个人信息</legend>
								</fieldset>
								 
								<form class="layui-form" >
								 	<div class="layui-form-item">
									    <div class="layui-inline">
									      <label class="layui-form-label">姓名:</label>
									      <div class="layui-input-inline">
									        <input type="text" id="username" lay-verify="required" autocomplete="off" placeholder="请输入姓名" class="layui-input">
									      </div>
									    </div>
									    <div class="layui-inline">
									      <label class="layui-form-label">学号:</label>
									      <div class="layui-input-inline">
									        <input type="text" id="stuid" lay-verify="required" autocomplete="off" class="layui-input">
									      </div>
									    </div>
								  	</div>
								  
								 	<div class="layui-form-item">
									    <div class="layui-inline">
									      <label class="layui-form-label">学院:</label>
									      <div class="layui-input-inline">
									        <input type="text" id="institude" lay-verify="required" autocomplete="off" placeholder="请输入学院" class="layui-input">
									      </div>
									    </div>
									    <div class="layui-inline">
									      <label class="layui-form-label">系别:</label>
									      <div class="layui-input-inline">
									        <input type="text" id="department" lay-verify="required" autocomplete="off" placeholder="请输入系别" class="layui-input">
									      </div>
									    </div>
								  	</div>
								  	
								  	<div class="layui-form-item">
								  		<div class="layui-inline">
									      <label class="layui-form-label">班级:</label>
									      <div class="layui-input-inline">
									        <input type="text" id="class" lay-verify="required" autocomplete="off" placeholder="请输入班级" class="layui-input">
									      </div>
									    </div>
									    <div class="layui-inline">
									      <label class="layui-form-label">毕业年份:</label>
									      <div class="layui-input-inline">
									        <input type="text" id="graduate_year" lay-verify="required" autocomplete="off" placeholder="请输入毕业年份" class="layui-input">
									      </div>
									    </div>
									    <div class="layui-inline">
									      <label class="layui-form-label">性别:</label>
									      <div class="layui-input-inline">
									        <input type="radio" name="sex" value="男" title="男" checked>
									      	<input type="radio" name="sex" value="女" title="女">
									      </div>
									    </div>
								  	</div>
								  	
								 	<div class="layui-form-item layui-form-text">
									    <label class="layui-form-label">获奖信息:</label>
									    <div class="layui-input-block">
									      <textarea id="award" placeholder="请输入获奖内容" class="layui-textarea">
									      
									      </textarea>
									    </div>
									</div>
									<div class="layui-form-item">
									    <div class="layui-input-block">
									      <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
									    </div>
								    </div>
								</form><!--form end-->
							</div><!--layui-col-md end-->
						</div><!--layui-row end-->
				    </div><!--个人信息 end-->
				    
	 <!--我的成绩--><div class="layui-tab-item">
			    		<div class="layui-row" style="height: 800px;">
							<div class="layui-col-md">
								<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
								  <legend>历年排名</legend>
								</fieldset>
<!---****************************************************************************************************************************-->
								<table class="layui-table">
									<tr>
										<td> </td>
										<td>学科成绩</td>
										<td>德育成绩</td>
										<td>综合成绩</td>
									</tr>
									<tr>
										<td>第一学期</td>
										<td>1</td>
										<td>1</td>
										<td>1</td>
									</tr>
									<tr>
										<td>第二学期</td>
										<td>1</td>
										<td>1</td>
										<td>1</td>
									</tr>
									<tr class="layui-bg-black">
										<td>第一学年度排名</td>
										<td colspan="3" class="font-center">1</td>
									</tr>
									<tr>
										<td>第三学期</td>
										<td>1</td>
										<td>1</td>
										<td>1</td>
									</tr>
									<tr>
										<td>第四学期</td>
										<td>1</td>
										<td>1</td>
										<td>1</td>
									</tr>
									<tr class="layui-bg-black">
										<td>第二学年度排名</td>
										<td colspan="3" class="font-center">1</td>
									</tr>
									<tr>
										<td>第五学期</td>
										<td>1</td>
										<td>1</td>
										<td>1</td>
									</tr>
									<tr>
										<td>第六学期</td>
										<td>1</td>
										<td>1</td>
										<td>1</td>
									</tr>
									<tr class="layui-bg-black">
										<td>第三学年度排名</td>
										<td colspan="3" class="font-center">1</td>
									</tr>
									<tr>
										<td>第七学期</td>
										<td>1</td>
										<td>1</td>
										<td>1</td>
									</tr>
									<tr>
										<td>第八学期</td>
										<td>1</td>
										<td>1</td>
										<td>1</td>
									</tr>
									<tr class="layui-bg-black">
										<td>第四学年度排名</td>
										<td colspan="3" class="font-center">1</td>
									</tr>
								</table><!--table end-->
								<div class="layui-form-mid layui-word-aux">如果排名不符合,请及时联系教务处解决.</div>
							</div><!--layui-col-md end-->
						</div><!--layui-row end-->
				    </div><!--我的成绩 end-->
				    
	 <!--账号安全--><div class="layui-tab-item layui-show">
					   <div class="layui-row" style="height: 800px;">
							<div class="layui-col-md">
								<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
								  <legend>账号安全</legend>
								</fieldset>
								
								<form class="layui-form" id="form1">
								 	<div class="layui-form-item">
										    <label class="layui-form-label">原密码</label>
										    <div class="layui-input-inline">
										      <input id="orgin_pwd" type="password" name="orgin_pwd"   required  lay-verify="required" placeholder="请输入原密码"  class="layui-input">
										    </div>
									</div>
									<div class="layui-form-item">
										    <label class="layui-form-label">新密码</label>
										    <div class="layui-input-inline">
										      <input id="password"  type="password" name="password"  required lay-verify="required" placeholder="请输入新密码"  class="layui-input">
										    </div>
								  	</div>
								  	<div class="layui-form-item">
										    <label class="layui-form-label">新密码</label>
										    <div class="layui-input-inline">
										      <input id="re_pwd" type="password" name="re_pwd"   required lay-verify="required" placeholder="请输入新密码"  class="layui-input">
										    </div>
										    <div class="layui-form-mid layui-word-aux">辅助文字</div>
								  	</div>
									<div class="layui-form-item">
									    <div class="layui-input-block">
									      <a id="update_btn" class="layui-btn">立即修改</a>
									    </div>
								    </div>
								</form><!--form end-->
				   			 </div><!--layui-col-md end-->
						</div><!--layui-row end-->
					</div><!--账号安全 end-->
				</div><!--layui-tab-content end-->
			</div><!--layui-tab end-->
		</div><!--layui-row end-->
	</div><!-- margin logo end -->
		
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
			 $("#update_btn").click(function(){
			 	 var orgin_pwd=$("#orgin_pwd").val();//原密码
				 var password=$("#password").val();//第一次输入的密码
				 var re_pwd=$("#re_pwd").val();//第二次输入的密码 
				 var username='${username}';
				 var message='username='+username+'&old_pwd='+orgin_pwd+'&new_pwd='+password;
			 	 if(password!=re_pwd){
					 layer.msg("两次输入不一致嘛");
					 return false;
				 }
				 if(password.length<6||password.length>16){
					 layer.msg("密码要保持在6至16位哦");
					 return false;
				 }
				 
				 //阿贾克斯
				 $.ajax({
					 url:"${pageContext.request.contextPath}/update_pwd",
					 type:"post",   //提交方式
					 data:message,
					 success:function(result){
						 if(result.code==100){
						 	layer.msg("修改成功!");
						 	return false;
						 }
						 else{
							 layer.msg("原密码输入错误");
						 	 return false;
						 }
					 }//success end
				 });//ajax end  
			 });//click end
</script>

</body>
</html>