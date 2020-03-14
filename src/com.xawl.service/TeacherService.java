/**
 * 
 */
package com.xawl.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.xawl.pojo.Teacher;

/**
 * <p>Title:TeacherService
 * <p>Description:<p>
 * @author Twenty-seven
 * @date 2020年2月14日 下午4:57:28
 */
public interface TeacherService {
	
	/*
	 * 查询所有教师信息List
	 */
	public List<Teacher> getTeacherInfoALL(@Param("offset") Integer offset,
            @Param("limit") Integer limit);

	/*
	 * 查询教师人数
	 */
	public int getTeacherNum();
	
	 /**
	  * 根据ID删除某老师
	  * @param tea_id
	  */
	public void removeTeacherById(String tea_id);
	
	/**
	 * 根基ID修改某老师状态码
	 * @param tea_id
	 */
	public void changeTeacherStatusById(Map<String,String>  map);
	
	/**
	 * 根据ID查找某老师信息
	 * @param tea_id
	 * @return
	 */
	public Teacher getTeacherInfoById(String tea_id);
}
