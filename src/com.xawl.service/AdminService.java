/**
 * 
 */
package com.xawl.service;

import java.util.List;

import com.xawl.pojo.Admin;

/**
 * <p>Title:AdminService
 * <p>Description:<p>
 * @author Twenty-seven
 * @date 2020年2月16日 下午3:14:38
 */
public interface AdminService {
	
	 
	public List<Admin> getAdminInfoAll(Integer offset,Integer limit);
	

}
