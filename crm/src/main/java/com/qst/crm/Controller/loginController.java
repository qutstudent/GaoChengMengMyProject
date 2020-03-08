package com.qst.crm.Controller;
import com.qst.crm.po.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/login")
public class loginController {
    @RequestMapping("/showlogin")
    public ModelAndView login(ModelAndView modelAndView){
        modelAndView.setViewName("login");
        return modelAndView;
    }
    @RequestMapping("/showmain")
    public ModelAndView main1(ModelAndView modelAndView,
                              HttpServletResponse response, HttpServletRequest request){
        User u=(User)request.getSession().getAttribute("SESSION_USER");
        modelAndView.addObject("SESSION_USER",u);
        modelAndView.setViewName("main");
        return modelAndView;
    }
}
