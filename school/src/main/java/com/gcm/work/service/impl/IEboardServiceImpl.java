package com.gcm.work.service.impl;

import com.gcm.work.model.Eboard;
import com.gcm.work.service.IEboardService;
import com.gcm.work.dao.mapper.EboardMapper;
import com.gcm.work.model.EboardExample;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional
public class IEboardServiceImpl implements IEboardService {
	
	@Resource
	public EboardMapper eboardMapper;
	
	/**
	 * 查询所有新闻和公告
	 * */
	public List<Eboard> findAllJournalism() {
		EboardExample example=new EboardExample();
		List<Eboard> eboardList = eboardMapper.selectByExample(example);
		if (eboardList != null && !eboardList.isEmpty()) {
			return eboardList;
		}
		return null;
	}

}
