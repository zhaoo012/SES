/**
 * 
 */
package com.xawl.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.xawl.mapper.TeacherMapper;
import com.xawl.pojo.SchoolarshipApplicationForm;
import com.xawl.service.SchoolarshipApplicationFormService;
import com.xawl.util.JsonMsg;

/**
 * 
 * /teacher
 *     1.数据接口---do_tea_manage_stu
 *     2.教师管理奖学金申请页面---tea_manage_stu---视图转发 
 *     3.教师查看申请者具体信息 ---tea_check_stu_detail---业务处理完后视图转发
 * 
 * <p>Title:TeacherController
 * <p>Description:工作人员控制器<p>
 * @author Twenty-seven
 * @date 2020年1月12日 下午5:43:08
 */
@Controller
@RequestMapping(value="/teacher")
public class TeacherController {
	
	@Autowired
	SchoolarshipApplicationFormService  schoolarshipApplicationFormService;
	
	
	/*******************************
	 * @return 奖学金申请者页面
	 */
	@RequestMapping(value="/tea_manage_stu",method=RequestMethod.GET)
	public String tea_manage_stu(){
		return "teacher/tea_manage_stu";
	}
	
	
	/*******************************
	 * @param  pageNo页码
	 * @return 奖学金申请者页面的数据接口
	 */
	@RequestMapping(value="/do_tea_manage_stu")
	@ResponseBody
	public Map<String,Object> do_tea_manage_stu(@RequestParam(value = "page", defaultValue = "1") Integer pageNo,Integer limit){
		System.out.println("查询所有奖学金信息");
		
		// 总记录数
		int totalItems=schoolarshipApplicationFormService.getApplyNum();
		
		// 每页的起始行(offset+1)数据，如第一页(offset=0，从第1(offset+1)行数据开始)
		int offset = (pageNo - 1) * limit;
		
		//查询所有奖学金申请者集合
		List<SchoolarshipApplicationForm>  studentList=schoolarshipApplicationFormService.getPartApplicationForm(offset,limit);
		System.out.println("studentList="+studentList);
		Map<String,Object> map=new HashMap<>();
		map.put("code", 0);
		map.put("msg", "ok");
		map.put("count", totalItems);
		map.put("data",studentList);
		return map;
	}

	

	/*******************************
	 * @return 某人具体信息页面
	 */
	@RequestMapping(value="/tea_check_stu_info")
	public String tea_check_stu_info(){
		return "teacher/tea_check_stu_info";
	}
	
	/*******************************
	 * @param app_id 学号
	 * @function  根据学号查看奖学金申请者具体信息
	 * @return 某人奖学金申请者具体信息
	 */
	@RequestMapping(value="/do_tea_check_stu_info", method = RequestMethod.GET)
	public ModelAndView do_tea_check_stu_info( String app_id){
		System.err.println("app_id="+app_id);
		SchoolarshipApplicationForm stu_detail=schoolarshipApplicationFormService.getDetailApplicationFormById(app_id);
		ModelAndView mav = new ModelAndView("teacher/tea_check_stu_info");
		mav.addObject("stu_detail", stu_detail);
		return mav;
	}
	
	
	/*******************************
	 * @param  app_id 学号
	 * @function  根据学号删除奖学金申请信息
	 * @return  教师删除学生申请表  
	 */
	@RequestMapping(value="/do_tea_delete_stu_info")
	public String do_tea_delete_stu_info(String app_id){
		schoolarshipApplicationFormService.RemoveApplicationFormById(app_id);
		return "teacher/tea_manage_stu";
	}
	
	
	/*********************************
	 * @return  教师修改学生信息页面---视图  
	 */
	@RequestMapping(value="/tea_update_stu_info")
	public String  tea_update_stu_info( ){
		return "teacher/tea_update_stu_info";
	}
	

	/*********************************
	 * @function  教师修改学生信息页面---业务处理
	 */
	@RequestMapping(value="/do_tea_update_stu_info")
	@ResponseBody
	public  JsonMsg  do_tea_update_stu_info(@RequestBody SchoolarshipApplicationForm schoolarshipApplicationForm){
		System.out.println("传过来值为:"+schoolarshipApplicationForm.toString());
		//更新学生申请表
		schoolarshipApplicationFormService.changeApplicationFormById(schoolarshipApplicationForm);
		return JsonMsg.success();
	}
	
	
	/*********************************
	 * function  教师审核学生申请---业务处理
	 */
	@RequestMapping(value="/do_success_tea_verify_stu_info")
	@ResponseBody
	public JsonMsg do_success_tea_verify_stu_info(String app_id,Integer app_status){
		System.out.println("传过来值为:"+app_id+"and "+app_status);
		
		
		Map <String,Object> app_Map=new HashMap<String,Object>();
		app_Map.put("app_id", app_id);
		app_Map.put("app_status", app_status);
		//更改申请状态
		schoolarshipApplicationFormService.changeApplicationFormStatusById(app_Map);
		return JsonMsg.success();
	}
	
	/**
	 * @param pageNo
	 * @param limit
	 * @return 返回 通过审核的学生结果集合
	 */
	@RequestMapping("/do_tea_passed_stu")
	@ResponseBody
	public Map<String,Object>  do_tea_passed_stu(@RequestParam(value = "page", defaultValue = "1") Integer pageNo,Integer limit){
		
		// 总记录数
		int totalItems=schoolarshipApplicationFormService.getPassedApplyNum();
		
		// 每页的起始行(offset+1)数据，如第一页(offset=0，从第1(offset+1)行数据开始)
		int offset = (pageNo - 1) * limit;
		
		//查询通过的学生名单
		List<SchoolarshipApplicationForm>  studentList=schoolarshipApplicationFormService.getPassedApplicationForm(offset, limit);
		
		Map<String,Object> map=new HashMap<>();
		map.put("code", 0);//状态码
		map.put("msg", "ok");//消息
		map.put("count", totalItems);//总数
		map.put("data",studentList);//名单信息
		return map;
	}
	
	@RequestMapping("/figure")
	@ResponseBody
	public Map<String,Object> do_tea_select_all_stu_info(){
		
		// 总记录数
		int totalItems=schoolarshipApplicationFormService.getPassedApplyNum();
		
		//查询通过的学生名单
		List<SchoolarshipApplicationForm>  studentList=schoolarshipApplicationFormService.getPassedApplicationFormForExport();
		
		Map<String,Object> map=new HashMap<>();
		map.put("code", 0);//状态码
		map.put("msg", "ok");//消息
		map.put("count", totalItems);//总数
		map.put("data",studentList);//名单信息
		return map;
	}
	
	/*****************************
	 * @return 教师主页
	 */
	@RequestMapping("/tea_index")
	public String tea_index(){
		return "teacher/tea_index";
	}
	
	
	/*****************************
	 * @return 教师主页
	 */
	@RequestMapping("/tea_selfinfo")
	public String tea_selfinfo(){
		return "teacher/tea_selfinfo";
	}
	
	
	
	
	
	
	
	
}
