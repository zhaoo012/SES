/**
 * 
 */
package com.xawl.service;
import com.xawl.pojo.UserInfo;
/**
 * <p>Title:UserInfoService
 * <p>Description:用户登录接口<p>
 * @author Twenty-seven
 * @date 2020年1月11日 下午10:11:10
 */
public interface UserInfoService {
	
	/**
	 * @功能 查询用户姓名-账号-密码-权限
	 * @param username
	 * @return UserInfo实例
	 * @throws Exception
	 */
	public UserInfo getUserInfoAll(String username) throws Exception;
	
	
	/**
	 * @功能 查询用户真实姓名
	 * @param username
	 * @return UserInfo实例
	 * @throws Exception
	 */
	public String getUserRealName(String username) throws Exception;
		
	/**
	 * @功能 查询用户权限
	 * @param username
	 * @return UserInfo实例
	 * @throws Exception
	 */
	public UserInfo getUserRight(String username)throws Exception;
	
	/**
	 * @功能 查用户密码
	 * @param username
	 * @return UserInfo实例
	 * @throws Exception
	 */
	public UserInfo getUserPwd(String username)throws Exception;
	

	/**
	 * @功能  修改用户密码
	 * @param user_info
	 * @throws Exception
	 */
	public void getUpdate_Pwd(UserInfo userInfo)throws Exception;
	
	
	
	
	
}
