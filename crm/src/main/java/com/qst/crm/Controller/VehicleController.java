package com.qst.crm.Controller;
import com.qst.crm.Service.VehicleService;
import com.qst.crm.po.Vehicle;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;
@Controller
@RequestMapping("/vehicle")
public class VehicleController {
    @Autowired
    private VehicleService vs;
    @RequestMapping("/show_vehicle")
    public ModelAndView show_vehicle(ModelAndView mv){
        List<Vehicle> vehiclelist=vs.show_vehicle();
        mv.setViewName("show_vehicle");
        mv.addObject("vehiclelist",vehiclelist);
        return mv;
    }
}
