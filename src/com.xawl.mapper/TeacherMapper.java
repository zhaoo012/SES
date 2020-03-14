/**
 * 
 */
package com.xawl.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.xawl.pojo.Teacher;

/**
 * <p>Title:TeacherMapper
 * <p>Description:<p>
 * @author Twenty-seven
 * @date 2020年2月14日 下午4:51:42
 */
public interface TeacherMapper {
	
	
	/*******************************
	 * @function 查找所有教师信息
	 * @return
	 */
	public List<Teacher> findTeacherInfoALL(@Param("offset")Integer offset,@Param("limit")Integer limit);
	
	
	/**
	 * @function 查询教师人数
	 * @return 教师人数
	 */
	public int  findTeacherNum();
	
	/**
	 * @function 根据ID查找某个老师的信息
	 * @param tea_id
	 * @return
	 */
	public	Teacher findTeacherInfoById(String tea_id);
	
	/**
	 * @function 根据ID删除某教师
	 * @param tea_id
	 */
	public void deteleTeacherById(String tea_id);
	
	/**
	 * @function 根据ID修改老师工作状态码
	 *            0:冻结
	 *            1:启用
	 * @param tea_id
	 */
	public void updateTeacherStatusById(Map<String,String> map);

}
