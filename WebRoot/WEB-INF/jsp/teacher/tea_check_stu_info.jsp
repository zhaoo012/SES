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
		<title>奖学金申请第二步</title>
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
	<div class="layui-row">
			<div class="layui-col-md12 ">
					<ul class="layui-nav ">
						<li class="layui-nav-item ">
					     	<i class="layui-icon layui-icon-face-smile "></i><!--笑脸图标-->
					     	欢迎访问奖学金评定系统
					    </li>
					    
						<li class="layui-nav-item ">
								<a href="${pageContext.request.contextPath}/stu_index">首页</a>
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
		<div class="layui-row  kh-bg-white margin-logo layui-col-space20"><br>
			<div class="layui-col-md">
				<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
				  <legend>我的奖学金申请表</legend>
				</fieldset>
			     <form class="layui-form" id="test">
				 	<div class="layui-form-item">
			 		 	<label class="layui-form-label">姓名:</label>
					    <div class="layui-input-inline">
					      <input id="app_name" name="app_name" type="text"  required lay-verify="required" value="${stu_detail.app_name}"  class="layui-input">
					    </div>
					    <label class="layui-form-label">学号:</label>
					    <div class="layui-input-inline">
					      <input id="app_id" name="app_id" required  lay-verify="required" placeholder="请输入学号" value="${stu_detail.app_id}" class="layui-input">
					    </div>
					</div>
					
					<div class="layui-form-item">
			 		 	<label class="layui-form-label">学院:</label>
					    <div class="layui-input-inline">
					      <input id="app_institution" name="app_institution" type="text"  required lay-verify="required" placeholder="请输入学院"  value="${stu_detail.app_institution}" class="layui-input">
					    </div>
					    <label class="layui-form-label">年级:</label>
					    <div class="layui-input-inline">
					      <input id="app_grade" name="app_grade" type="text" required  lay-verify="required" placeholder="请输入年级"  value="${stu_detail.app_grade}" class="layui-input">
					    </div>
					</div>
					
					<div class="layui-form-item">
			 		 	<label class="layui-form-label">班级:</label>
					    <div class="layui-input-inline">
					      <input id="app_class" name="app_class" type="text"  required lay-verify="required" placeholder="请输入班级" value="${stu_detail.app_class}"class="layui-input">
					    </div>
					    <label class="layui-form-label">专业:</label>
					    <div class="layui-input-inline">
					      <input id="app_major" name="app_major" type="text" required  lay-verify="required" placeholder="请输入专业" value="${stu_detail.app_major}" class="layui-input">
					    </div>
					</div>
					
					<div class="layui-form-item">
			 		 	<label class="layui-form-label">性别:</label>
					    <div class="layui-input-inline">
					      <input id="app_sex"  name="app_sex" type="text"  required lay-verify="required" placeholder="请输入性别" value="${stu_detail.app_sex}" class="layui-input">
					    </div>
					    <label class="layui-form-label">民族:</label>
					    <div class="layui-input-inline">
					      <input id="app_nation" name="app_nation" type="text" required  lay-verify="required" placeholder="请输入民族" value="${stu_detail.app_nation}" class="layui-input">
					    </div>
					</div>
					
					<div class="layui-form-item">
			 		 	<label class="layui-form-label">类别:</label>
					    <div class="layui-input-inline">
					      <input id="app_category" name="app_category" type="text"  required lay-verify="required" placeholder="填写文科、理工或艺术" value="${stu_detail.app_category}" class="layui-input">
					    </div>
					    <label class="layui-form-label">年度成绩:</label>
					    <div class="layui-input-inline">
					      <input id="app_annual_results" name="app_annual_results" type="text" required  lay-verify="required" placeholder="输入阿拉伯数字" value="${stu_detail.app_annual_results}" class="layui-input">
					    </div>
					</div>
					
					<div class="layui-form-item">
			 		 	<label class="layui-form-label">名次:</label>
					    <div class="layui-input-inline">
					      <input id="app_ranking" name="app_ranking" type="text"  required lay-verify="required" placeholder="请输入名次" value="${stu_detail.app_ranking}" class="layui-input">
					    </div>
					    <label class="layui-form-label">本班人数:</label>
					    <div class="layui-input-inline">
					      <input id="app_class_size" name="app_class_size" type="text" required  lay-verify="required" placeholder="输入班级人数" value="${stu_detail.app_class_size}"  class="layui-input">
					    </div>
					</div>
					
					<div class="layui-form-item">
			 		 	<label class="layui-form-label">农行卡号:</label>
					    <div class="layui-input-inline">
					      <input id="app_bank_card_num" name="app_bank_card_num" type="text"  required lay-verify="required" placeholder="请输入农行卡号" value="${stu_detail.app_bank_card_num}" class="layui-input">
					    </div>
					    <label class="layui-form-label">身份证号:</label>
					    <div class="layui-input-inline">
					      <input id="app_ID_number" name="app_ID_number" type="text" required  lay-verify="identity" placeholder="输入身份证号" value="${stu_detail.app_ID_number}" class="layui-input">
					    </div>
					</div>
					
					<div class="layui-form-item">
			 		 	<label class="layui-form-label">手机号码:</label>
					    <div class="layui-input-inline">
					      <input id="app_tel_num" name="app_tel_num" type="tel"  required lay-verify="required|phone" placeholder="请输入手机号" value="${stu_detail.app_tel_num}" class="layui-input">
					    </div>
					   <label class="layui-form-label">申请等级:</label>
					    <div class="layui-input-inline">
					      <input id="app_schoolship_level" name="app_schoolship_level" type="text" required  lay-verify="required" placeholder="输入一,二,三等奖学金" value="${stu_detail.app_schoolship_level}" class="layui-input">
					    </div>
					</div>
					
					<div class="layui-form-item layui-form-text">
					    <label class="layui-form-label">获奖情况</label>
					    <div class="layui-input-block">
					      <textarea id="app_award" name="app_award" placeholder="请输入获奖情况.如果没有填写'无'"   class="layui-textarea">
					      			${stu_detail.app_award}
					      </textarea>
					    </div>
					</div>
					<!-- 
					<div class="layui-form-item">
					    <div class="layui-input-block">
					      <button id="submit_btn" class="layui-btn"  lay-submit lay-filter="pass-filter">通过</button>
					    </div>
				    </div> -->
				    <div class="layui-form-item">
					    <div class="layui-input-block">
					      <button id="updata_stu_info_btn" class="layui-btn"  lay-submit lay-filter="update-filter">确认修改</button>
					    </div>
				    </div>
				</form><!--form end-->
			
			
			</div><!--layui-col end-->
		</div><!--layui-row end-->
		
		
	</div><!-- 主体 end -->> 	
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

<script>
			 layui.use('form', function(){  
			 var form = layui.form;//获取form模块
			  
			 
			 
			  //监听提交按钮--修改学生申请表信息
			  form.on('submit(update-filter)', function(data){
			    console.log(data)
		  		layer.msg(JSON.stringify(data.field));
			    
			     $.ajax({
			    	url:"${pageContext.request.contextPath}/teacher/do_tea_update_stu_info",
			    	type:"POST",
			    	dataType:"json",
			    	contentType:'application/json; charset=UTF-8',
			    	data:JSON.stringify(data.field),
			    	success:function(result){
			    		layer.msg("修改成功");
			    	}
			    });//ajax end  
			    
		  		//window.location.href="apply-success.jsp";
    			return false;
			  });//layui form end 
			 
			});//layui end
</script>
</html>