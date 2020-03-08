package com.qst.crm.Service.impl;
import com.qst.crm.Dao.VehicleDao;
import com.qst.crm.Service.VehicleService;
import com.qst.crm.po.Vehicle;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
@Service
public class VehicleServiceImpl implements VehicleService {
    @Autowired
    private VehicleDao vD;
    @Override
    public List<Vehicle> show_vehicle() {
        return vD.search();
    }
}
