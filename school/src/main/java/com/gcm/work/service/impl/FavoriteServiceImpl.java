package com.gcm.work.service.impl;

import com.gcm.work.dao.mapper.FavoritesMapper;
import com.gcm.work.model.Favorites;
import com.gcm.work.model.FavoritesExample;
import com.gcm.work.model.FavoritesExample.Criteria;
import com.gcm.work.service.IFavoriteService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional
public class FavoriteServiceImpl implements IFavoriteService {
	@Resource
	public FavoritesMapper favoritesMapper;
	/**
	 * 判断是否是第一次收藏
	 * @author gcm
	 * */
	public Favorites findFavoriteByAll_(String realname, String jobAddress, String jobName, String companyName) {
		FavoritesExample example=new FavoritesExample();
		Criteria criteria = example.createCriteria();
		if (StringUtils.isNotBlank(realname)) {
			criteria.andRealnameEqualTo(realname);
		}
		if (StringUtils.isNotBlank(jobAddress)) {
			criteria.andJobAddressEqualTo(jobAddress);
		}
		if (StringUtils.isNotBlank(jobName)) {
			criteria.andJobNameEqualTo(jobName);
		}
		if (StringUtils.isNotBlank(companyName)) {
			criteria.andCompanyNameEqualTo(companyName);
		}
		List<Favorites> favoritesList = favoritesMapper.selectByExample(example);
		if (favoritesList != null && !favoritesList.isEmpty()) {
			return favoritesList.get(0);
		}
		return null;
	}
	/**
	 * 插入收藏
	 * @author gcm
	 * */
	public int insertFavorite(Favorites favorites_) {
		int result = favoritesMapper.insert(favorites_);
		return result;
	}
	/**
	 * 查询职位收藏记录
	 * @author gcm
	 * */
	public List<Favorites> findFavoriteByRealName(String realname) {
		FavoritesExample example=new FavoritesExample();
		Criteria criteria = example.createCriteria();
		if (StringUtils.isNotBlank(realname)) {
			criteria.andRealnameEqualTo(realname);
		}
		//根据真实名字查询
		List<Favorites> favoritesList = favoritesMapper.selectByExample(example);
		if (favoritesList != null && !favoritesList.isEmpty()) {
			return favoritesList;
		}
		return null;
	}

}
