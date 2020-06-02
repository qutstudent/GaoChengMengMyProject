package com.gcm.work.service;

import com.gcm.work.model.Eboard;

import java.util.List;

public interface IEboardService {
	/**
	 *查询所有新闻和公告
	 * */
	List<Eboard> findAllJournalism();

	
}	
