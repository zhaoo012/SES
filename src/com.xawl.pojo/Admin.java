/**
 * 
 */
package com.xawl.pojo;

/**
 * <p>Title:Admin
 * <p>Description:<p>
 * @author Twenty-seven
 * @date 2020年2月16日 下午3:04:58
 */
public class Admin {
	
	
	private String adm_name;
	private String adm_id;
	private String adm_status;
	private String adm_tel_num;
	private String adm_role;
	/**
	 * @return the adm_name
	 */
	public String getAdm_name() {
		return adm_name;
	}
	/**
	 * @return the adm_id
	 */
	public String getAdm_id() {
		return adm_id;
	}
	/**
	 * @return the adm_status
	 */
	public String getAdm_status() {
		return adm_status;
	}
	/**
	 * @return the adm_tel_num
	 */
	public String getAdm_tel_num() {
		return adm_tel_num;
	}
	/**
	 * @return the role
	 */
	public String getAdm_role() {
		return adm_role;
	}
	/**
	 * @param adm_name the adm_name to set
	 */
	public void setAdm_name(String adm_name) {
		this.adm_name = adm_name;
	}
	/**
	 * @param adm_id the adm_id to set
	 */
	public void setAdm_id(String adm_id) {
		this.adm_id = adm_id;
	}
	/**
	 * @param adm_status the adm_status to set
	 */
	public void setAdm_status(String adm_status) {
		this.adm_status = adm_status;
	}
	/**
	 * @param adm_tel_num the adm_tel_num to set
	 */
	public void setAdm_tel_num(String adm_tel_num) {
		this.adm_tel_num = adm_tel_num;
	}
	/**
	 * @param role the role to set
	 */
	public void setAdm_role(String adm_role) {
		this.adm_role = adm_role;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Admin [adm_name=" + adm_name + ", adm_id=" + adm_id
				+ ", adm_status=" + adm_status + ", adm_tel_num=" + adm_tel_num
				+ ", adm_role=" + adm_role + "]";
	}
}
