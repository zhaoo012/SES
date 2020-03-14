/**
 * 
 */
package com.xawl.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xawl.pojo.SchoolarshipApplicationForm;
import com.xawl.service.SchoolarshipApplicationFormService;
import com.xawl.util.JsonMsg;

/**
 * 
 *  /student
 *     1.学生主页---stu_index
 *	   2.奖学金申请1---stu_apply1-视图转发
 *	   3.奖学金申请2---stu_apply2-视图转发
 *     4.奖学金申请3---stu_apply3-视图转发
 *     5.学生个人信息---stu_selfinfo-视图转发
 *     6.接收奖学金申请2的表单---do_stu_apply2-业务处理
 *     
 * <p>Title:StudentController
 * <p>Description:学生控制器<p>
 * @detail
 * 		  视图转发器:(1)学生主页
 * @author Twenty-seven
 * @date 2020年1月12日 下午3:57:58
 */
@Controller
@RequestMapping(value="/student")
public class StudentController {
	
	@Autowired
	SchoolarshipApplicationFormService  schoolarshipApplicationFormService;
	
	
	
	/*******************************
	 * @return 学生主页
	 */
	@RequestMapping("/stu_index")
	public String Stu_Index(){
		return "student/stu_index";
	}
	
	
	/*******************************
	 * @return 奖学金申请Step-1
	 */
	@RequestMapping("/stu_apply1")
	public String Stu_Apply(){
		return "student/stu_apply1";
	}	
	
	
	/*******************************
	 * @return 奖学金申请Step-2
	 */
	@RequestMapping("/stu_apply2")
	public String Stu_Apply2(){
		return "student/stu_apply2";
	}
	
	
	/*******************************
	 * @return 奖学金申请Step-3
	 */
	@RequestMapping("/stu_apply3")
	public String Stu_Apply3(){
		return "student/stu_apply3";
	}	
	
	
	/*******************************
	 * @return  学生个人信息页面
	 */
	@RequestMapping("/stu_selfinfo")
	public String stu_selfinfo(){
		return "student/stu_selfinfo";
	}
	
	
	/*******************************
	 * @return 接受存储奖学金申请表-stu_apply2提交过来的
	 */
	@RequestMapping("/do_stu_apply2")
	@ResponseBody
	public JsonMsg do_stu_apply2(@RequestBody SchoolarshipApplicationForm applyfrom){
		System.out.println(applyfrom.toString());
		schoolarshipApplicationFormService.saveApplicationForm(applyfrom);
		return JsonMsg.success();
	}
	
	
	/**
	 * @return 查询奖学金进度页面
	 */
	@RequestMapping("/stu_apply_result")
	public String stu_result(){
		return "student/stu_apply_result";
	}
	
	
	
	@RequestMapping("/stu_check_apply_process")
	@ResponseBody
	public JsonMsg stu_check_apply_process(String app_id){
		
		JsonMsg jsonMsg=new JsonMsg();
		jsonMsg.addInfo("app_status", schoolarshipApplicationFormService.getApplyProcess(app_id));	
		return jsonMsg;
	}
	

	/**
	 * @return 往届奖学金获得者展示页面
	 */
	@RequestMapping("/stu_getAward_show")
	public String stu_getAward_show(){
		return "student/stu_getAward_show";
	}
	
	
}