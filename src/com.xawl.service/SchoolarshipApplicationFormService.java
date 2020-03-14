/**
 * 
 */
package com.xawl.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.xawl.pojo.SchoolarshipApplicationForm;


/**
 * <p>Title:SchoolarshipApplicationFormService
 * <p>Description:<p>
 * @author Twenty-seven
 * @date 2020年1月13日 下午3:07:39
 */
public interface SchoolarshipApplicationFormService{
	
	/**
	 * @function 存入奖学金申请表信息
	 * @param applyform申请表实例内容 
	 */
	public void saveApplicationForm (SchoolarshipApplicationForm applyform);
	
	/**
	 * @param   app_id 学号
	 * @function 根据学号查询某人奖学金申请表信息
	 * @retuen   某个同学奖学金申请信息
	 */
	public SchoolarshipApplicationForm getDetailApplicationFormById(String app_id);
	
	
	/**
	 * @function 查询部分奖学金申请表信息
	 * @return   部分奖学金申请者集合 
	 */
	public List<SchoolarshipApplicationForm> getPartApplicationForm(@Param("offset") Integer offset,
            @Param("limit") Integer limit);
	
	
	/**
	 * @function 根据学号删除某人申请信息
	 * @param app_id 学号
	 */
	public void RemoveApplicationFormById(String app_id);

	
	/**
	 * @function 根据学号删除某人申请信息
	 * @param schoolarshipApplicationForm 申请表信息
	 */
	public void changeApplicationFormById(SchoolarshipApplicationForm schoolarshipApplicationForm);

	
	/**
	 * @function 根据学号更改某人申请信息状态-------需要修改
	 * @param schoolarshipApplicationForm 申请表信息
	 */
	public void changeApplicationFormStatusById(Map app_Map);
	
	
	/*
	 * @return 统计表中人数
	 */
	public int getApplyNum();
	
	
	/**
	 * @param offset
	 * @param limit
	 * @return 查询通过的学生名单
	 */
	public List<SchoolarshipApplicationForm> getPassedApplicationForm(@Param("offset") Integer offset,
            @Param("limit") Integer limit);
	
	/**
	 * 不分页
	 * @return
	 */
	public List<SchoolarshipApplicationForm> getPassedApplicationFormForExport();
	
	
	/**
	 * @return 已通过的学生人数
	 */
	public int getPassedApplyNum();
	
	/**
	 * @return 查询所有学生申请信息
	 */
	public List<SchoolarshipApplicationForm> getAll();
	
	/*
	 * @return 男孩的数量
	 */
	public int getBoyNum();
	
	/*
	 * @return 根据学号查询某人奖学金申请进度
	 */
	public int getApplyProcess(String app_id);
	
}
