package com.gcm.work.controller;

import com.gcm.work.model.Message;
import com.gcm.work.model.User;
import com.gcm.work.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("/login")
public class LoginController {
	@Resource
	private IUserService userService;
	/**
	 * 跳转至登录页面
	 * @author gcm
	 * @return
	 */
	@RequestMapping("login")
	public String login(Model model) {
		return "/login/login";
	}	
	/**
	 * 进入用户登录
	 * @author gcm
	 * @return
	 * */
	@RequestMapping("/accessLogin")
	@ResponseBody
	public Message accessLogin(HttpServletRequest request, String loginName, String loginPwd, Model model) {
		User currUser = userService.getUserByNameAndPwd(loginName,loginPwd);//根据登录名向数据库中查询用户
		Message msg=new Message();
		if(currUser==null){
			msg.setStr("fail");
			return msg;
		}else{
			HttpSession session = request.getSession();
			session.setAttribute("currUser", currUser);
			msg.setStr("success");
			return msg;
		}
	}
}
