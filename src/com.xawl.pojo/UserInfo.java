/**
 * 
 */
package com.xawl.pojo;

/**
 * <p>Title:UserInfo
 * <p>Description:用户账号实体类<p>
 * @author Twenty-seven
 * @date 2020年1月11日 下午7:20:22
 */
public class UserInfo {
		
		private String realname;//真实姓名
		private String username;//账号--即学号 
		private String password;//密码
		private String role;//权限
		/**
		 * @return the realname
		 */
		public String getRealname() {
			return realname;
		}
		/**
		 * @return the username
		 */
		public String getUsername() {
			return username;
		}
		/**
		 * @return the password
		 */
		public String getPassword() {
			return password;
		}
		/**
		 * @return the role
		 */
		public String getRole() {
			return role;
		}
		/**
		 * @param realname the realname to set
		 */
		public void setRealname(String realname) {
			this.realname = realname;
		}
		/**
		 * @param username the username to set
		 */
		public void setUsername(String username) {
			this.username = username;
		}
		/**
		 * @param password the password to set
		 */
		public void setPassword(String password) {
			this.password = password;
		}
		/**
		 * @param role the role to set
		 */
		public void setRole(String role) {
			this.role = role;
		}
		/* (non-Javadoc)
		 * @see java.lang.Object#toString()
		 */
		@Override
		public String toString() {
			return "UserInfo [realname=" + realname + ", username=" + username
					+ ", password=" + password + ", role=" + role + "]";
		}
		
		
		
}
