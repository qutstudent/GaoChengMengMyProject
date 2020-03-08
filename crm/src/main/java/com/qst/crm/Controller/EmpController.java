package com.qst.crm.Controller;
import com.qst.crm.Service.EmployeeService;
import com.qst.crm.po.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;
@Controller
@RequestMapping("/emp")
public class EmpController {
    @Autowired
    EmployeeService es;
    @RequestMapping("/showemp")
    public ModelAndView test2(ModelAndView mv){
        mv.setViewName("showemp");
        List<Employee> emplist=es.search();
        mv.addObject("emplist",emplist);
        return mv;
    }
}
