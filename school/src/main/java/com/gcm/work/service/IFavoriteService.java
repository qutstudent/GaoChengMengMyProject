package com.gcm.work.service;

import com.gcm.work.model.Favorites;

import java.util.List;

public interface IFavoriteService {
	/**
	 * 判断是否是第一次收藏
	 * @author slj
	 * */
	public Favorites findFavoriteByAll_(String realname, String jobAddress, String jobName, String companyName);
	/**
	 * 插入新的收藏
	 * @author slj
	 * */
	public int insertFavorite(Favorites favorites_);
	/**
	 * 查询职位收藏记录
	 * @author slj
	 * */
	public List<Favorites> findFavoriteByRealName(String realname);
	
}
