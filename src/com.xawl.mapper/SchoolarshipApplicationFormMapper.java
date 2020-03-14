/**
 * 
 */
package com.xawl.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.xawl.pojo.SchoolarshipApplicationForm;

/**
 * <p>Title:SchoolarshipApplicationFormMapper
 * <p>Description:<p>
 * @author Twenty-seven
 * @date 2020年1月13日 下午2:33:24
 */
public interface SchoolarshipApplicationFormMapper {

	/* @function 存入奖学金申请信息
	 */
	public void	insertApplicationForm(SchoolarshipApplicationForm applyform);
	
	
	/* @function 根据学号查询某人奖学金申请信息
	 * @param 学号
	 */
	public SchoolarshipApplicationForm findDetailApplicationFormById(String app_id);
	
	
	/* @function 查询部分奖学金申请信息
	 */
	public  List<SchoolarshipApplicationForm> findPartApplicationForm(@Param("offset") Integer offset,
            @Param("limit") Integer limit);
	
	
	/* @function 根据学号删除某个学生的申请表----undone
	 * 还要给出为什么没有评上--take this into account--算了不加这个
	 */
	public void deleteApplicationFormById(String app_id);
	
	
	/* @function 根据学号修改某个学生的申请表
	 * @param schoolarshipApplicationForm学生信息表
	 */
	public void updateApplicationFormById(SchoolarshipApplicationForm schoolarshipApplicationForm);
	
	
	/* @function 根据学号修改某个学生的状态---通过|不通过
	 * @param schoolarshipApplicationForm学生信息表---app_id和app_status
	 */
	public void updateApplicationFormStatusById(Map<String,String> app_Map);
	
	
	/*
	 * @return 统计表中人数
	 */
	public int findApplyNum();
	
	
	/**
	 * 分页
	 * @return 查询通过评审的学生
	 */
	public List<SchoolarshipApplicationForm> findPassedApplicationForm(@Param("offset") Integer offset,
            @Param("limit") Integer limit);
	
	
	/**
	 * 不分页
	 * @return
	 */
	public List<SchoolarshipApplicationForm> findPassedApplicationFormForExport();
	
	
	/**
	 * @return 通过审核的学生人数
	 */
	public int findPassedApplyNum();
	
	
	/**
	 * @return 查询到所有申请信息
	 */
	public List<SchoolarshipApplicationForm> findAll();
	
	/*
	 * @return 男孩的数量
	 */
	public int findBoyNum();
	
	/*
	 * @return 根据学号查找奖学金申请进度
	 */
	public int findApplyProcess(String app_id);
	
}
