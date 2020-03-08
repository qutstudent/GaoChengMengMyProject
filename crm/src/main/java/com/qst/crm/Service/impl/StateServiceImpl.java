package com.qst.crm.Service.impl;
import com.qst.crm.Dao.StateDao;
import com.qst.crm.Service.StateService;
import com.qst.crm.po.State;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StateServiceImpl implements StateService {
    @Autowired
    StateDao sd;
    @Override
    public List<State> search() {
        return sd.search();
    }
}
