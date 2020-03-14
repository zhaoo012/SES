/**
 * 
 */
package com.xawl.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.xawl.pojo.Admin;

/**
 * <p>Title:AdminMapper
 * <p>Description:<p>
 * @author Twenty-seven
 * @date 2020年2月16日 下午3:08:50
 */
public interface AdminMapper {
	
	
	public List<Admin> findAdminInfoAll(@Param("offset")Integer offset,@Param("limit")Integer limit);
 
}
