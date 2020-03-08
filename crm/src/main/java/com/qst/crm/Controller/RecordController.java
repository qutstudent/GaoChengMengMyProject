package com.qst.crm.Controller;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.qst.crm.Service.*;
import com.qst.crm.po.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
@Controller
@RequestMapping("/record")
public class RecordController{
    @Autowired
    private RecordService rdS;
    @Autowired
    private ClientService cs;
    @Autowired
    private EmployeeService es;
    @Autowired
    private VehicleService vs;
    @Autowired
    private StateService ss;
    @RequestMapping("/show_record")
    public ModelAndView show_record(ModelAndView mv){
        List<Record> records=rdS.show_record();
        List<Client> clients=cs.search();
        List<Employee> employees=es.search();
        List<Vehicle> vehicles=vs.show_vehicle();
        List<State> states=ss.search();
        mv.addObject("recordlist",records);
        mv.addObject("clientlist",clients);
        mv.addObject("emplist",employees);
        mv.addObject("vehiclelist",vehicles);
        mv.addObject("statelist",states);
        mv.setViewName("show_record");
        return mv;
    }
    @RequestMapping("/add")
//    <!--<tr><th>Id</th><th>客户编号</th><th>员工编号</th><th>时间</th><th>-->
//                    <!--    访问方式</th><th>状态</th><th>理想车型</th><th>操作</th></tr>-->
    public String addrecord
            (HttpServletRequest request, HttpServletResponse response){
        Client c=new Client();
        c.setCid(Integer.parseInt(request.getParameter("cid")));
        Employee employee=new Employee();
        employee.setEid(Integer.parseInt(request.getParameter("eid")));
        SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
        Date date = new Date();
        try {
            date = sdf1.parse(request.getParameter("time"));
        } catch (ParseException e) {
            e.printStackTrace();
        }

        String visit_type=request.getParameter("visit_type");
        State state=new State();
        state.setSid(Integer.parseInt(request.getParameter("state")));
        Vehicle vehicle=new Vehicle();
        vehicle.setModel(request.getParameter("about_car"));
        //Client client, Employee emp, String visit_type, Date time, State state, Vehicle vehicle
        Record record=new Record(c,employee,visit_type,date,state,vehicle);
        Boolean B=add(record);
        if(B)
        return "forward:/record/show_record";
        else return "404";
    }
    private Boolean add(Record record) {
        int c=rdS.add(record);
        return c>0;
    }
    @RequestMapping("/update")
    public String update(Model model,HttpServletRequest request, HttpServletResponse response) throws IOException {
        int rid=Integer.parseInt(request.getParameter("updaterid"));
        Client c=new Client();
        c.setCid(Integer.parseInt(request.getParameter("updatecid")));
        Employee employee=new Employee();
        employee.setEid(Integer.parseInt(request.getParameter("updateeid")));
        SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
        Date date = new Date();
        try {
            date = sdf1.parse(request.getParameter("updatetime"));
        } catch (ParseException e) {
            e.printStackTrace();
        }

        String visit_type=request.getParameter("updatevisit_type");
        State state=new State();
        state.setSid(Integer.parseInt(request.getParameter("updatestate")));
        Vehicle vehicle=new Vehicle();
        vehicle.setModel(request.getParameter("updateabout_car"));
        //Client client, Employee emp, String visit_type, Date time, State state, Vehicle vehicle
        Record record=new Record(rid,c,employee,visit_type,date,state,vehicle);
        Boolean B=updateById(record);
        if(B)
            return "forward:/record/show_record";
        else return "404";

    }
    private Boolean updateById(Record record) {
         int a=rdS.updateById(record);
         return a>0;
    }
    @RequestMapping("/delete")
    public void deleteById(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int rid=Integer.parseInt(request.getParameter("rid"));
        Boolean B=deleteById(rid);
        System.out.println("删除成功！");
    }

    private Boolean deleteById(int rid) {
        int a=rdS.deleteById(rid);
        return a>0;
    }
}
