package com.gcm.work.controller;

import com.gcm.work.model.Company;
import com.gcm.work.model.Eboard;
import com.gcm.work.service.IEboardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/eboard")
public class EBoardController {//系统公告以及职位新闻

	@Resource
	public IEboardService eboardService;

	/**
	 * 查看所有新闻和公告
	 *
	 * @author gcm
	 */
	@RequestMapping("/showNews")
	public String showJournalism(Model model) {
		List<Eboard> eboardList = eboardService.findAllJournalism();
		model.addAttribute("eboardList", eboardList);
		return "/main/listEboard";
	}


	}





