/**
 * 
 */
package com.xawl.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.xawl.mapper.AdminMapper;
import com.xawl.pojo.Admin;
import com.xawl.service.AdminService;

/**
 * <p>Title:AdminServiceImp
 * <p>Description:<p>
 * @author Twenty-seven
 * @date 2020年2月16日 下午3:14:47
 */
public class AdminServiceImp implements AdminService {

	@Autowired
	AdminMapper adminMapper;
	
	/* (non-Javadoc)
	 * @see com.xawl.service.AdminService#getAdminInfoAll()
	 */
	@Override
	public List<Admin> getAdminInfoAll(Integer offset,Integer limit) {
		return adminMapper.findAdminInfoAll(offset, limit);
	}

}
