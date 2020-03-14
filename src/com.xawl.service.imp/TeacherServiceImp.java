/**
 * 
 */
package com.xawl.service.imp;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;

import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.xawl.mapper.TeacherMapper;
import com.xawl.pojo.Teacher;
import com.xawl.service.TeacherService;

/**
 * <p>Title:TeacherServiceImp
 * <p>Description:<p>
 * @author Twenty-seven
 * @date 2020年2月14日 下午4:58:25
 */
public class TeacherServiceImp implements TeacherService {

	@Autowired
	TeacherMapper teacherMapper;
	
	
	@Override
	public List<Teacher> getTeacherInfoALL(@Param("offset") Integer offset,
            @Param("limit") Integer limit) {
		return teacherMapper.findTeacherInfoALL(offset,limit);
	}


	/* (non-Javadoc)
	 * @see com.xawl.service.TeacherService#getTeacherNum()
	 */
	@Override
	public int getTeacherNum() {
		return teacherMapper.findTeacherNum();
	}


	/* (non-Javadoc)
	 * @see com.xawl.service.TeacherService#removeTeacherById(java.lang.String)
	 */
	@Override
	public void removeTeacherById(String tea_id) {
		// TODO Auto-generated method stub
		teacherMapper.deteleTeacherById(tea_id);
	}


	/* (non-Javadoc)
	 * @see com.xawl.service.TeacherService#changeTeacherStatusById(java.lang.String)
	 */
	@Override
	public void changeTeacherStatusById(Map<String,String> map) {
		// TODO Auto-generated method stub
		teacherMapper.updateTeacherStatusById(map);
	}


	/* (non-Javadoc)
	 * @see com.xawl.service.TeacherService#getTeacherInfoById(java.lang.String)
	 */
	@Override
	public Teacher getTeacherInfoById(String tea_id) {
		// TODO Auto-generated method stub
		return teacherMapper.findTeacherInfoById(tea_id);
	}

}
