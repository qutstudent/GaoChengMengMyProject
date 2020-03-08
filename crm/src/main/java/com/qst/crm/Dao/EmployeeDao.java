package com.qst.crm.Dao;


import com.qst.crm.po.Employee;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
@Mapper
public interface EmployeeDao{
    public List<Employee> search();
}
