package com.gcm.work.service;

import com.gcm.work.model.Apply;

import java.util.List;

public interface IApplyJobService {
	/**
	 * 根据真实名字查询职位，保障用户只可以申请一次
	 * @author gcm
	 * */
	 Apply findApplyByAll(String realname, String jobAddress, String jobName);
	/**
	 * 插入具体职位值
	 * @author gcm
	 * */
	 int insertApply(Apply newApply);
	/**
	 * 根据ID删除职位投递记录
	 * @author gcm
	 * */
	 void deleteById(Integer sid);
	/**
	 * 根据真实姓名查询所有的申请记录
	 * @author gcm
	 * */
	 List<Apply> findApplyRecordByRealname(String realname);
	/**
	 * 根据企业名查询所有的申请者
	 * @author gcm
	 * @return
	 * */
	 List<Apply> findAllByCompanyName(String companyName);
}
