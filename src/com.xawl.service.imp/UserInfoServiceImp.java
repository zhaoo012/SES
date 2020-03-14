/**
 * 
 */
package com.xawl.service.imp;

import org.springframework.beans.factory.annotation.Autowired;

import com.xawl.mapper.UserInfoMapper;
import com.xawl.pojo.UserInfo;
import com.xawl.service.UserInfoService;

/**
 * <p>Title:UserInfoServiceImp
 * <p>Description:用户登录实现类<p>
 * @author Twenty-seven
 * @date 2020年1月11日 下午10:13:52
 */
public class UserInfoServiceImp implements UserInfoService {

	@Autowired
	UserInfoMapper userInfoMapper;
		
	/* @function 查询用户-姓名-账号-密码-权限
	 * @see com.xawl.service.UserInfoService#getUserInfoAll(java.lang.String)
	 */
	@Override
	public UserInfo getUserInfoAll(String username) throws Exception {
		return userInfoMapper.findUserInfoALL(username);
	}
	
	
	
	/* @function 查询用户权限服务
	 * @see com.xawl.service.UserInfoService#getUserRight(java.lang.String)
	 */
	@Override
	public UserInfo getUserRight(String username) throws Exception {
		return userInfoMapper.findUserRight(username);
	}

	/* @function 查询用户密码服务
	 * @see com.xawl.service.UserInfoService#getUserPwd(java.lang.String)
	 */
	@Override
	public UserInfo getUserPwd(String username) throws Exception {
		return userInfoMapper.findPwdbyName(username);
	}

	/* @function 修改用户密码服务
	 * @see com.xawl.service.UserInfoService#getUpdate_Pwd(com.xawl.pojo.UserInfo)
	 */
	@Override
	public void getUpdate_Pwd(UserInfo userInfo) throws Exception {
			userInfoMapper.Update_Pwd(userInfo);
	}

	/* @function 查询用户真实姓名
	 * @see com.xawl.service.UserInfoService#getUserRealName(java.lang.String)
	 */
	@Override
	public String getUserRealName(String username) throws Exception {
		// TODO Auto-generated method stub
		return userInfoMapper.findUserRealName(username);
	}

	

}
