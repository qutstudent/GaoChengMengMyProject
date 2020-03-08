package com.qst.crm.Controller;

import com.qst.crm.Service.StateService;
import com.qst.crm.po.State;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.List;
@Controller
@RequestMapping("/state")
public class StateController {
    @Autowired
    private StateService ss;
    @RequestMapping("/search")
    public String search(Model model){
        List<State> states=ss.search();
        model.addAttribute("statelist",states);
        return "state";
    }
}
