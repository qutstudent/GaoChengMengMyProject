package com.gcm.work.controller;

import com.gcm.work.pojoExt.JobInfoExt;
import com.gcm.work.service.IJobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/job")
public class JobController {
	@Resource
	private IJobService iJobService;
	/**
	 * 查询出所有的职位
	 * @author slj
	 * @param *jobInfoExt 职位详细信息对象
	 * @return
	 * */
	@RequestMapping("findAllJob")
	public String findAllJob(String jobName, String jobAddress, String companyName, Model model){
		List<JobInfoExt> jobInfoList = iJobService.findAll(jobName,jobAddress,companyName);
		model.addAttribute("jobInfoList", jobInfoList);
		return "/job/listAllJob";
	}
}
