/**
 * 
 */
package com.xawl.service.imp;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;

import com.xawl.mapper.SchoolarshipApplicationFormMapper;
import com.xawl.pojo.SchoolarshipApplicationForm;
import com.xawl.service.SchoolarshipApplicationFormService;

/**
 * <p>Title:SchoolarshipApplicationFormServiceImp
 * <p>Description:<p>
 * @author Twenty-seven
 * @date 2020年1月13日 下午3:31:48
 */
public class SchoolarshipApplicationFormServiceImp implements SchoolarshipApplicationFormService{

	@Autowired
	SchoolarshipApplicationFormMapper schoolarshipApplicationFormMapper;
	
	/* (non-Javadoc)
	 * @function 存储奖学金申请表
	 * @see com.xawl.service.SchoolarshipApplicationFormService#Application(com.xawl.pojo.SchoolarshipApplicationForm)
	 */
	@Override
	public void saveApplicationForm(SchoolarshipApplicationForm applyform) {
		schoolarshipApplicationFormMapper.insertApplicationForm(applyform);
	}

	
	/*  
	 * @function 查询部分奖学金申请者集合
	 * @see com.xawl.service.SchoolarshipApplicationFormService#getPartApplicationForm()
	 */
	@Override
	public List<SchoolarshipApplicationForm> getPartApplicationForm(Integer offset,Integer limit) {
		return schoolarshipApplicationFormMapper.findPartApplicationForm(offset,limit);
	}


	/* 
	 * @param  app_id 学号
	 * @function 根据学号查询某人申请表具体信息
	 * @see com.xawl.service.SchoolarshipApplicationFormService#getDetailApplicationFormById(java.lang.String)
	 */
	@Override
	public SchoolarshipApplicationForm getDetailApplicationFormById(
			String app_id) {
		return schoolarshipApplicationFormMapper.findDetailApplicationFormById(app_id);
	}


	/*
	 * @param  app_id 学号 
	 * @function 根据学号删除申请表信息
	 * @see com.xawl.service.SchoolarshipApplicationFormService#RemoveApplicationFormById(java.lang.String)
	 */
	@Override
	public void RemoveApplicationFormById(String app_id) {
		schoolarshipApplicationFormMapper.deleteApplicationFormById(app_id);
	}


	/*  
	 * @see com.xawl.service.SchoolarshipApplicationFormService#changeApplicationFormById(com.xawl.pojo.SchoolarshipApplicationForm)
	 * @function 修改学生申请表
	 */
	
	@Override
	public void changeApplicationFormById(SchoolarshipApplicationForm schoolarshipApplicationForm) {
		schoolarshipApplicationFormMapper.updateApplicationFormById(schoolarshipApplicationForm);
	}


	/* @functino 根据学号修改申请状态
	 * @see com.xawl.service.SchoolarshipApplicationFormService#changeApplicationFormStatusById(com.xawl.pojo.SchoolarshipApplicationForm)
	 */
	@Override
	public void changeApplicationFormStatusById(Map app_Map) {
		schoolarshipApplicationFormMapper.updateApplicationFormStatusById(app_Map);
	}


	/* @function 统计表中人数
	 * @see com.xawl.service.SchoolarshipApplicationFormService#getApplyNum()
	 */
	@Override
	public int getApplyNum() {
		return schoolarshipApplicationFormMapper.findApplyNum();
	}


	/* @function 查询通过的学生名单
	 * @see com.xawl.service.SchoolarshipApplicationFormService#getPassedApplicationForm(java.lang.Integer, java.lang.Integer)
	 */
	@Override
	public List<SchoolarshipApplicationForm> getPassedApplicationForm(Integer offset, Integer limit) {
		return schoolarshipApplicationFormMapper.findPassedApplicationForm(offset, limit);
	}
	
	

	/* @function 查询全部通过的学生名单 不分页
	 * @see com.xawl.service.SchoolarshipApplicationFormService#(java.lang.Integer, java.lang.Integer)
	 */
	@Override
	public List<SchoolarshipApplicationForm> getPassedApplicationFormForExport() {
		return schoolarshipApplicationFormMapper.findPassedApplicationFormForExport();
	}


	/* @function 查询通过的学生人数
	 * @see com.xawl.service.SchoolarshipApplicationFormService#getPassedApplyNum()
	 */
	@Override
	public int getPassedApplyNum() {
		return schoolarshipApplicationFormMapper.findPassedApplyNum();
	}


	/* (non-Javadoc)
	 * @see com.xawl.service.SchoolarshipApplicationFormService#getAll()
	 */
	@Override
	public List<SchoolarshipApplicationForm> getAll() {
		return schoolarshipApplicationFormMapper.findAll();
	}


	/* (non-Javadoc)
	 * @see com.xawl.service.SchoolarshipApplicationFormService#getBoyNum()
	 */
	@Override
	public int getBoyNum() {
		return schoolarshipApplicationFormMapper.findBoyNum();
	}


	/* (non-Javadoc)
	 * @see com.xawl.service.SchoolarshipApplicationFormService#getApplyProcess(java.lang.String)
	 */
	@Override
	public int getApplyProcess(String app_id) {
		// TODO Auto-generated method stub
		return schoolarshipApplicationFormMapper.findApplyProcess(app_id);
	}


 

}
