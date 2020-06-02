package com.gcm.work.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/main")
public class MainController {
	/**
	 * 跳转到主页
	 * 
	 * @author gcm
	 */
	@RequestMapping("index")
	public String toIndex() {
		return "/main/index";
	}

	/**
	 * 跳转到top.jsp
	 * 
	 * @author gcm
	 */
	@RequestMapping("top")
	public String toTop() {
		return "/main/top";
	}

	/**
	 * 跳转到left.jsp
	 * 
	 * @author gcm
	 */
	@RequestMapping("left")
	public String toLeft() {
		return "/main/left";
	}
	/**
	 * 跳转到body.jsp
	 * 
	 * @author gcm
	 */
	@RequestMapping("body")
	public String toBody() {
		return "/main/body";
	}

	/**
	 * 跳转到用户注册页面
	 * 
	 * @author gcm
	 */
	@RequestMapping("registUser")
	public String toRegistUser() {
		return "/regist/registUser";
	}

	/**
	 * 跳转到企业注册页面
	 * 
	 * @author gcm
	 */
	@RequestMapping("registCom")
	public String toRegistCom() {
		return "/regist/registCom";
	}
}
