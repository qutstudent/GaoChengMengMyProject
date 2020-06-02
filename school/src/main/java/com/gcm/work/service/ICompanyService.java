package com.gcm.work.service;

import com.gcm.work.model.Company;

import java.util.List;

public interface ICompanyService {
	// 查询所有
	public List<Company> findAll();

	// 根据id查询
	public Company findCompanyById(Integer cid);

	// 根据id删除
	public void deleteById(Integer cid);

	public Company login(Company company);

	// 修改
	public void updateCompany(Company company);

	/**
	 * 校验登录名是否存在
	 * 
	 * @author gcm
	 * @param companyLoginName  公司登录名字
	 * @return
	 */
	public int findCompanyByName(String companyLoginName);

	/**
	 * 公司注册
	 * @author gcm
	 */
	public void save(Company company);
	/**
	 * 公司注册 
	 * @author gcm
	 * @return
	 */
	public Company getCompanyByNameAndPwd(String companyLoginName, String companyPwd);
	/**
	 * 判定公司名称是否唯一
	 * @author gcm
	 * @return
	 */
	public int findByCompanyName(String companyName);
}
