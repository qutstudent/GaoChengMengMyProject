package com.gcm.work.service.impl;

import com.gcm.work.service.IAdminService;
import com.gcm.work.dao.mapper.AdminMapper;
import com.gcm.work.model.Admin;
import com.gcm.work.model.AdminExample;
import com.gcm.work.model.AdminExample.Criteria;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
//@Transactional
public class AdminServiceImpl implements IAdminService {
	@Resource
	private AdminMapper adminMapper;
	/**
	 * 根据名字和密码查询管理员用户
	 * @author slj
	 * */
	public Admin getAdminByNameAndPwd(String adminName, String adminPwd) {
		AdminExample example=new AdminExample();
		Criteria criteria = example.createCriteria();
//		if (StringUtils.isNotBlank(adminName)) {
//			criteria.andAdminNameEqualTo(adminName);
//		}
//		if (StringUtils.isNotBlank(adminPwd)) {
//			criteria.andAdminPwdEqualTo(adminPwd);
//		}
		List<Admin> adminList = adminMapper.selectByExample(example);
		if (adminList != null && !adminList.isEmpty()) {
			return adminList.get(0);
		}
		return null;
	}

}
