package com.qst.crm.Controller;
import com.qst.crm.Service.ClientService;
import com.qst.crm.Service.EmployeeService;
import com.qst.crm.Service.OrderService;
import com.qst.crm.Service.VehicleService;
import com.qst.crm.po.Client;
import com.qst.crm.po.Employee;
import com.qst.crm.po.Order;
import com.qst.crm.po.Vehicle;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.math.BigDecimal;
import java.util.List;
@Controller
@RequestMapping("/order")
public class OrderController {
    @Autowired
    OrderService os;
    @Autowired
    EmployeeService es;
    @Autowired
    VehicleService vs;
    @Autowired
    ClientService cs;
    @RequestMapping("/show_order")
    public ModelAndView showOrder() {
        ModelAndView mv = new ModelAndView();
        List<Order> orderList = os.showOrder();
        mv.setViewName("show_order");
        mv.addObject("orderlist", orderList);
        return mv;
    }
    @RequestMapping("/showadd")
    public ModelAndView showadd(ModelAndView mv) {
        List<Client> clientlist = cs.search();
        List<Employee> emplist = es.search();
        List<Vehicle> vehicles = vs.show_vehicle();
        mv.addObject("clientlist", clientlist);
        mv.addObject("emplist", emplist);
        mv.addObject("vehiclelist", vehicles);
        mv.setViewName("add_order");
        return mv;
    }
    @RequestMapping("/add")
    public String add(ModelAndView mv, HttpServletRequest request, HttpServletResponse response){
        Client c=new Client();
        c.setCid(Integer.parseInt(request.getParameter("cid")));
        String tel=request.getParameter("tel");
        Vehicle v=new Vehicle();
        v.setModel(request.getParameter("buy_car"));
        String pay_type=request.getParameter("pay_type");
        Employee employee=new Employee();
        employee.setEid(Integer.parseInt(request.getParameter("empname")));
        Order order=new Order(c,tel,v,pay_type, employee);
        Boolean b = add(order);
        if (b) return "forward:/order/show_order";
        else   return "forward:/order/showadd";
    }
    private Boolean add(Order o) {
        int s = os.addOrder(o);
        return s > 0;
    }
    @RequestMapping("/showupdate")
    public ModelAndView showupdate(ModelAndView mv, HttpServletRequest request, HttpServletResponse response) {
        int oid = Integer.parseInt(request.getParameter("oid"));
        Order order = os.searchById(oid);
        List<Employee> emplist = es.search();
        List<Vehicle> vehicles = vs.show_vehicle();
        List<Client> clients=cs.search();
        mv.addObject("order", order);
        mv.addObject("clientlist",clients);
        mv.addObject("emplist", emplist);
        mv.addObject("vehiclelist", vehicles);
        mv.setViewName("update_order");
        return mv;
    }

    @RequestMapping("/update")
    public String updateById(ModelAndView mv, HttpServletRequest request, HttpServletResponse response) {
        int oid = Integer.parseInt(request.getParameter("oid"));
        Client c=new Client();
        c.setCid(Integer.parseInt(request.getParameter("cid")));
        String tel=request.getParameter("tel");
        Vehicle v=new Vehicle();
        v.setModel(request.getParameter("want_car"));
        String pay_type=request.getParameter("pay_type");
        Employee employee=new Employee();
        employee.setEid(Integer.parseInt(request.getParameter("empname")));
        Order order=new Order(oid,c,tel,v,pay_type, employee);
        Boolean b = updateById(order);
        if (b) return "forward:/order/show_order";
        else return "forward:/order/showupdate";
    }
    private Boolean updateById(Order o) {
        int s = os.updateById(o);
        return s > 0;
    }
    @RequestMapping("/delete")
    public void delete(HttpServletRequest request, HttpServletResponse response) {
        int oid = Integer.parseInt(request.getParameter("oid"));
        int count = os.deleteById(oid);
        if (count> 0)
            System.out.println("删除成功");
    }
}