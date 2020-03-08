package com.qst.crm.Controller;
import com.qst.crm.Dao.EmployeeDao;
import com.qst.crm.Service.*;
import com.qst.crm.Service.impl.ClientServiceImpl;
import com.qst.crm.po.Client;
import com.qst.crm.po.Employee;
import com.qst.crm.po.Vehicle;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.math.BigDecimal;
import java.util.List;
@Controller
@RequestMapping("/client")
public class ClientController{
    @Autowired
    ClientService cs;
    @Autowired
    EmployeeService es;
    @Autowired
    VehicleService vs;
    @Autowired
    OrderService os;
    @Autowired
    RecordService rs;
    @RequestMapping("/showclient")
   public ModelAndView showclient(ModelAndView mv){
        List<Client> clients=cs.search();
        mv.setViewName("show_client");
        mv.addObject("clientlist",clients);
       return mv;
   }
   @RequestMapping("/showadd")
    public ModelAndView showadd(ModelAndView mv){
        List<Employee> emplist=es.search();
        List<Vehicle> vehicles=vs.show_vehicle();
        mv.addObject("emplist",emplist);
       mv.addObject("vehiclelist",vehicles);
       mv.setViewName("add_client");
       return mv;
    }
    @RequestMapping("/add")
    public String add(ModelAndView mv, HttpServletRequest request, HttpServletResponse response){
        String name=request.getParameter("name");
        String tel=request.getParameter("tel");
        BigDecimal budget=new BigDecimal(request.getParameter("budget"));
        String comments=request.getParameter("comments");
        Vehicle vehicle=new Vehicle();
        vehicle.setModel(request.getParameter("want_car"));
        Employee employee=new Employee();
        employee.setEid(Integer.parseInt(request.getParameter("empname")));
        Client c=new Client(name,tel,vehicle,employee,budget,comments);
        Boolean b=add(c);
        if(b) return "forward:/client/showclient";
        else return "forward:/client/showadd";

    }
    private Boolean add(Client c) {
        int s=cs.addClient(c);
        return s > 0;
    }
    @RequestMapping("/showupdate")
    public ModelAndView showupdate(ModelAndView mv, HttpServletRequest request, HttpServletResponse response){
        int cid=Integer.parseInt(request.getParameter("cid"));
       Client client=cs.searchById(cid);
       List<Employee> emplist=es.search();
        List<Vehicle> vehicles=vs.show_vehicle();
        mv.addObject("client",client);
        mv.addObject("emplist",emplist);
        mv.addObject("vehiclelist",vehicles);
        mv.setViewName("update_client");
        return mv;
    }
    @RequestMapping("/update")
    public String updateById(ModelAndView mv, HttpServletRequest request, HttpServletResponse response) {
        int cid=Integer.parseInt(request.getParameter("cid"));
        String name=request.getParameter("name");
        String tel=request.getParameter("tel");
        BigDecimal budget=new BigDecimal(request.getParameter("budget"));
        String comments=request.getParameter("comments");
        Vehicle vehicle=new Vehicle();
        vehicle.setModel(request.getParameter("want_car"));
        Employee employee=new Employee();
        employee.setEid(Integer.parseInt(request.getParameter("empname")));
        Client c=new Client(cid,name,tel,vehicle,employee,budget,comments);
        Boolean b=updateById(c);
        if(b) return "forward:/client/showclient";
        else return "forward:/client/showupdate";
    }
    private Boolean updateById(Client c) {
        int s=cs.updateById(c);
        return s>0;
    }
    @RequestMapping("/delete")
    public void delete(HttpServletRequest request, HttpServletResponse response){
        int cid=Integer.parseInt(request.getParameter("cid"));
        int count1=os.update_setC_id_null(cid);
        int count2=rs.update_setC_id_null(cid);
        int count3=cs.deleteById(cid);
        if(count1>0&&count2>0&&count3>0)
            System.out.println("删除成功");
    }
}
