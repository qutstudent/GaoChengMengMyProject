package com.qst.crm.Dao;
import com.qst.crm.po.Vehicle;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
@Mapper
public interface VehicleDao {
    public List<Vehicle> search();
}
