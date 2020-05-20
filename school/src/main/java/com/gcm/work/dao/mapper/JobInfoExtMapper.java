package com.gcm.work.dao.mapper;

import com.gcm.work.pojoExt.JobInfoExt;

import java.util.List;
import java.util.Map;

public interface JobInfoExtMapper {
	/*
	 * 查看所有工作职位,外加模糊查询.
	 * @author slj
	 * @return 
	 * */
	public List<JobInfoExt> findAll(Map<String, Object> map);
}
