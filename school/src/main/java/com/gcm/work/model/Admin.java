package com.gcm.work.model;

public class Admin {

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column admin.id
	 * @mbggenerated  Wed Mar 22 08:54:52 CST 2017
	 */
	private Integer id;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column admin.admin_name
	 * @mbggenerated  Wed Mar 22 08:54:52 CST 2017
	 */
	private String adminName;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column admin.admin_pwd
	 * @mbggenerated  Wed Mar 22 08:54:52 CST 2017
	 */
	private String adminPwd;

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column admin.id
	 * @return  the value of admin.id
	 * @mbggenerated  Wed Mar 22 08:54:52 CST 2017
	 */
	public Integer getId() {
		return id;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column admin.id
	 * @param id  the value for admin.id
	 * @mbggenerated  Wed Mar 22 08:54:52 CST 2017
	 */
	public void setId(Integer id) {
		this.id = id;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column admin.admin_name
	 * @return  the value of admin.admin_name
	 * @mbggenerated  Wed Mar 22 08:54:52 CST 2017
	 */
	public String getAdminName() {
		return adminName;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column admin.admin_name
	 * @param adminName  the value for admin.admin_name
	 * @mbggenerated  Wed Mar 22 08:54:52 CST 2017
	 */
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column admin.admin_pwd
	 * @return  the value of admin.admin_pwd
	 * @mbggenerated  Wed Mar 22 08:54:52 CST 2017
	 */
	public String getAdminPwd() {
		return adminPwd;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column admin.admin_pwd
	 * @param adminPwd  the value for admin.admin_pwd
	 * @mbggenerated  Wed Mar 22 08:54:52 CST 2017
	 */
	public void setAdminPwd(String adminPwd) {
		this.adminPwd = adminPwd;
	}
}