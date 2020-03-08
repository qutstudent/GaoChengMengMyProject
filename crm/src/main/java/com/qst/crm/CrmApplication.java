package com.qst.crm;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.servlet.ModelAndView;

@SpringBootApplication
public class CrmApplication {
    public ModelAndView toMain(){
        ModelAndView mv=new ModelAndView();
        mv.setViewName("main");
        return mv;
    }
    public static void main(String[] args) {
        SpringApplication.run(CrmApplication.class, args);
    }

}
