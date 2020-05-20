package com.gcm.work.service;

import com.gcm.work.model.Admin;

public interface IAdminService {
	/**
	 * 根据名字和密码查询管理员用户
	 * @author slj
	 * */
	public Admin getAdminByNameAndPwd(String adminName, String adminPwd);

}
