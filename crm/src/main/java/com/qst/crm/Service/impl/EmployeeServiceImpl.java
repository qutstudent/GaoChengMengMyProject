package com.qst.crm.Service.impl;
import com.qst.crm.Dao.EmployeeDao;
import com.qst.crm.Service.EmployeeService;
import com.qst.crm.po.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
@Service
public class EmployeeServiceImpl implements EmployeeService {
    @Autowired
    EmployeeDao ed;
    public List<Employee> search() {
        return ed.search();
    }
}
