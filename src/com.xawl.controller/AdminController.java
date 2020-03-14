/**
 * 
 */
package com.xawl.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.xawl.mapper.AdminMapper;
import com.xawl.mapper.TeacherMapper;
import com.xawl.pojo.Admin;
import com.xawl.pojo.Echart;
import com.xawl.pojo.SchoolarshipApplicationForm;
import com.xawl.pojo.Teacher;
import com.xawl.service.SchoolarshipApplicationFormService;
import com.xawl.util.JsonMsg;

/**
 * <p>Title:AdminController
 * <p>Description:管理员控制器<p>
 * @author Twenty-seven
 * @date 2020年1月12日 下午5:42:08
 */
@RequestMapping("/admin")
@Controller
public class AdminController {
	
	
	@Autowired
	SchoolarshipApplicationFormService  schoolarshipApplicationFormService;
	@Autowired
	TeacherMapper teacherMapper;
	@Autowired
	AdminMapper adminMapper;
	
	/********************
	 * @return 管理员主页
	 */
	@RequestMapping("/adm_index")
	public String adm_index(){
		return "admin/adm_index";
	}
	
	
	/********************
	 * @return Echart统计表视图
	 */
	@RequestMapping("/charts")
	public String admin(){
		return "admin/charts";
	}
	
	
	/*****************
	 * @return  性别统计图 Echart扇形统计图
	 */
	@RequestMapping("/EChartsTest")
	@ResponseBody
	public Map<String, List<Echart>> EChartsTest(){
		
		int boyNum=schoolarshipApplicationFormService.getBoyNum();
		int all=schoolarshipApplicationFormService.getApplyNum();
		int girlNum=all-boyNum;
		
		Echart echart1=new Echart();
		echart1.setValue(boyNum);
		echart1.setName("男");
		
		Echart echart2=new Echart();
		echart2.setName("女");
		echart2.setValue(girlNum);
		
		List<Echart> list=new ArrayList<Echart>();
		list.add(echart1);
		list.add(echart2);
		
		
		Map<String,List<Echart>> map=new HashMap<String,List<Echart>>();
		map.put("data_pie", list);
		return map;
	}
	
	
	/*****************
	 * @return  性别统计图 Echart柱形统计图
	 */
	@RequestMapping("/EChartsBar")
	@ResponseBody
	public Map<String, List<Integer>> EChartsBar(){
		int boyNum=schoolarshipApplicationFormService.getBoyNum();
		int all=schoolarshipApplicationFormService.getApplyNum();
		int girlNum=all-boyNum;
		
		List<Integer> list=new ArrayList<Integer>();
		list.add(boyNum);
		list.add(girlNum);
		
		Map<String,List<Integer>> map=new HashMap<String,List<Integer>>();
		map.put("x_Axis", list);
		return  map;
	}
	
		/*******************************
		 * @param  pageNo页码
		 * @return 奖学金申请者页面的数据接口
		 */
		@RequestMapping("/do_adm_manage_stu")
		@ResponseBody
		public Map<String,Object> do_admin_manage_stu(@RequestParam(value = "page", defaultValue = "1") Integer pageNo,Integer limit){
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
	
	
		/********************
		 * @return   管理申请学生页面
		 */
		@RequestMapping("/adm_manage_stu")
		public String adm_manage_stu(){
			return "admin/adm_manage_stu";
		}
		
		
		/*****************
		 * 教师信息数据接口
		 * @param pageNo
		 * @param limit
		 * @return
		 */
		@RequestMapping("/do_adm_manage_tea")
		@ResponseBody
		public Map<String,Object> do_adm_manage_tea(@RequestParam(value = "page", defaultValue = "1") Integer pageNo,Integer limit){
			System.out.println("I am working");
			// 总教师数
			int totalItems=teacherMapper.findTeacherNum();
			
			// 每页的起始行(offset+1)数据，如第一页(offset=0，从第1(offset+1)行数据开始)
			int offset = (pageNo - 1) * limit;
			
			List<Teacher> teacher_list=teacherMapper.findTeacherInfoALL(offset,limit);
			Map<String,Object> map=new HashMap<>();
			map.put("code", 0);
			map.put("count", totalItems);
			map.put("data", teacher_list);
			map.put("msg", "ok");
			
			return map;
		}
		
		
		/***********************
		 * 管理教师页面
		 * @return
		 */
		@RequestMapping("/adm_manage_tea")
		public String adm_manage_tea(){
			return "admin/adm_manage_tea";
		}
		
		
		/*******************************
		 * @return 某教师具体信息页面
		 */
		@RequestMapping(value="/adm_check_tea_info")
		public String tea_check_stu_info(){
			return "admin/adm_check_tea_info";
		}
		
		
		/*******************************
		 * @param tea_id 学号
		 * @function  根据学号查看奖学金申请者具体信息
		 * @return 某人奖学金申请者具体信息
		 */
		@RequestMapping(value="/do_adm_check_tea_info", method = RequestMethod.GET)
		public ModelAndView do_adm_check_tea_info( String tea_id){
			System.err.println("tea_id="+tea_id);
			Teacher tea_detail=teacherMapper.findTeacherInfoById(tea_id);
			System.out.println(tea_detail.toString());
			ModelAndView mav = new ModelAndView("admin/adm_check_tea_info");
			mav.addObject("tea_detail", tea_detail);
			return mav;
		}
		
		
		/*
		 * 根据ID删除某教师
		 */
		@RequestMapping("/do_adm_delete_tea_info")
		public JsonMsg do_adm_delete_tea_info(String tea_id){
			teacherMapper.deteleTeacherById(tea_id);
			return JsonMsg.success();
		}
		 
		
		/*
		 * 根据ID修改教师状态码
		 */
		@RequestMapping("/do_success_adm_verify_tea_info")
		public JsonMsg do_success_adm_verify_tea_info(String tea_id,String tea_status){
			System.out.println(tea_id+" 11 "+tea_status);
			
			Map<String,String> map=new HashMap<String,String>();
			map.put("tea_id", tea_id);
			map.put("tea_status", tea_status);
			
			
			teacherMapper.updateTeacherStatusById(map);
			return JsonMsg.success();
		}
		
		
		
		/*****************
		 * 教师信息数据接口
		 * @param pageNo
		 * @param limit
		 * @return
		 */
		@RequestMapping("/do_adm_manage_adm")
		@ResponseBody
		public Map<String,Object> do_adm_manage_adm(@RequestParam(value = "page", defaultValue = "1") Integer pageNo,Integer limit){
			System.out.println("I am working");
			// 总教师数
			int totalItems=teacherMapper.findTeacherNum();
			
			// 每页的起始行(offset+1)数据，如第一页(offset=0，从第1(offset+1)行数据开始)
			int offset = (pageNo - 1) * limit;
			
			List<Admin> admin_list=adminMapper.findAdminInfoAll(offset,limit);
			Map<String,Object> map=new HashMap<>();
			map.put("code", 0);
			map.put("count", totalItems);
			map.put("data", admin_list);
			map.put("msg", "ok");
			
			return map;
		}
		
		@RequestMapping("/adm_manage_adm")
		public String adm_manage_adm(){
			return "admin/adm_manage_adm";
		}
}
