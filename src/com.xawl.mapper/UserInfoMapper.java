/**
 * 
 */
package com.xawl.mapper;

import com.xawl.pojo.UserInfo;


/**
 * <p>Title:UserInfoMapper
 * <p>Description:<p>
 * @author Twenty-seven
 * @date 2020年1月11日 下午10:17:43
 */
public interface UserInfoMapper {
	
	/**
	 * @功能  查询用户所有信息 姓名-账号-密码-权限
	 * @param username-即学号
	 * @return UserInfo实例
	 * @throws Exception
	 */
	public UserInfo findUserInfoALL(String username)throws Exception;
	
	/**
	 * @功能  查询用户真实性别
	 * @param username-即学号
	 * @return
	 * @throws Exception
	 */
	public String findUserRealName(String username) throws Exception;
	
	/**
	 * @功能  查询用户权限
	 * @param username-即学号
	 * @return
	 * @throws Exception
	 */
	public UserInfo findUserRight(String username)throws Exception;
	
	
	/**
	 * @功能 查询用户密码
	 * @param username-即学号
	 * @return 密码
	 * @throws Exception
	 */
	public UserInfo findPwdbyName(String username) throws Exception;

	/**
	 * @功能 修改用户密码
	 * @param use_info
	 */
	public void Update_Pwd(UserInfo user_info)throws Exception;
	
}
