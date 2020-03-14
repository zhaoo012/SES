/**
 * 
 */
package com.xawl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * <p>Title:PublicController
 * <p>Description:<p>
 * @author Twenty-seven
 * @date 2020年2月12日 下午6:17:20
 */
@RequestMapping("/public")
@Controller
public class PublicController {
	
	
	/*******************************
	 * @return  教育部致全国大学生的一封信页面
	 */
	@RequestMapping("/public_new1")
	public String public_new1(){
		return "public/public_new1";
	}
	
	
	/*******************************
	 * @return  齐心协力 攻克时艰 ─外国语学院疫情防控在行动页面
	 */
	@RequestMapping("/public_new2")
	public String public_new2(){
		return "public/public_new2";
	}
	
	
	/*******************************
	 * @return  西安文理学院关于招募疫情防控工作志愿者的倡议页面
	 */
	@RequestMapping("/public_new3")
	public String public_new3(){
		return "public/public_new3";
	}
	
	
	/*******************************
	 * @return  奖学金获得者采访页面
	 */
	@RequestMapping("/schoolarship_owner")
	public String stu_schoolarship_owner(){
		return "public/schoolarship_owner";
	}
	
	
}
