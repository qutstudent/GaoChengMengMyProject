package com.gcm.work.pojoExt;

import com.gcm.work.model.Apply;
import com.gcm.work.model.Company;
import com.gcm.work.model.Job;

public class JobInfoExt extends Job {
	
	private Company company;
	
	
	private Apply apply;
	
	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}



	public Apply getApply() {
		return apply;
	}

	public void setApply(Apply apply) {
		this.apply = apply;
	}
	
}
