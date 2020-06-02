package com.gcm.work.controller;

import com.gcm.work.model.Message;
import com.gcm.work.model.User;
import com.gcm.work.service.IUserService;
import com.gcm.work.util.EncodingTool;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

	@Resource
	public IUserService userService;

	// 查询所有用户
	@RequestMapping("findAllUser")
	public String findAllUser(Model model) {
		List<User> userList = userService.findAll();
		model.addAttribute("userList", userList);
		return "/user/listUser";
	}
	
	/**
	 * 查看个人简历
	 * @param model
	 * @return
	 */
	@RequestMapping("showResume")
	public String showResume(Model model, HttpServletRequest request) {
		//获得session中存的当前对象
		User currUser = (User) request.getSession().getAttribute("currUser");
		String realname=currUser.getRealname();
		//根据真实姓名查询用户
		User user = userService.findUserByRealname(realname);
		model.addAttribute("user", user);
		return "/user/showUserResume";
	}
	/**
	 * 修改简历
	 * */
	@RequestMapping("editResume")
	public String editResume(Model model, Integer uid) {
		User user = userService.findById(uid);
		if(user!=null){
			model.addAttribute("user", user);
		}
		return "/user/editResume";
	}
	/**
	 * 保存简历
	 * */
	@RequestMapping("saveResume")
	public String saveResume(Model model, User user) {
		userService.saveResume(user);
		model.addAttribute("user", user);
		return "forward:showResume";//转发到预览简历
	}
	
	
	// 跳转到修改页面
	@RequestMapping("editUser")
	public String editUser(Integer uid, Model model) {
		// 根据id查询
		User user = userService.findById(uid);
		// 页面回显
		model.addAttribute("user", user);
		return "/user/editUser";
	}

	// 根据ID进行删除
	@RequestMapping("deleteById")
	public String deleteById(Integer uid) {
		userService.deleteById(uid);
		// 重定向到用户列表界面
		return "redirect:findAllUser";
	}
	/**
	 * 修改提交功能
	 * @author gcm
	 * @param uid 用户id
	 * @param user 用户对象
	 * @return
	 */
	@RequestMapping("editUserSubmit")
	public String editUserSubmit(Integer uid, User user) {
		userService.updateUser(uid, user);
		return "redirect:findAllUser";
	}

	/**
	 * 用户注册
	 * @author gcm
	 * @return
	 */
	@RequestMapping("registUser")
	@ResponseBody
	public Message registUser(User user) {
		Message msg=new Message();
		//根据登录名来判断
		int result = userService.findByUserLoginName(user.getLoginName());
		if(result==1){//登录名已经有了
			msg.setStr("用户登录名已经存在");
			return msg;
		}else{
			userService.save(user);//插入具体数据
			msg.setStr("success");
			return msg;
		}
	}
	/**
	 * 企业根据用户真实名字查询其详细
	 * @author gcm
	 */
	@RequestMapping("findUserByRealname")
	public String findUserByRealname(String realname, Model model) {
		User user = userService.findUserByRealname(realname);
		if(user!=null){		
			model.addAttribute("user", user);
			return "/company/listUser";
		}else{
			throw new RuntimeException("对不起，没有该用户的具体信息");
		}
	}
	/**
	 * 用户登录
	 * @author gcm
	 * @return
	 */
	@RequestMapping("login")
	public String login(Model model) {
		return "/login/login";
	}
	/**
	 * 跳转到注册页面
	 * @author gcm
	 */
	@RequestMapping("regist")
	public String toRegist(Model model) {
		return "/regist/registUser";
	}
	/**
	 * 退出登录
	 * @author gcm
	 * @param request
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value = "/exit")
	public String exit(HttpServletRequest request) throws Exception {
		//退出时清空session
		//request.getSession().invalidate();
		request.getSession().removeAttribute("currUser");
		return "/login/login";
	}
}
