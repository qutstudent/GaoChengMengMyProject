package com.qst.crm.Service.impl;
import com.qst.crm.Dao.ClientDao;
import com.qst.crm.Service.ClientService;
import com.qst.crm.po.Client;
import com.qst.crm.po.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ClientServiceImpl implements ClientService {
    @Autowired
    ClientDao cd;
    @Override
    public List<Client> search() {
        return cd.search();
    }

    @Override
    public int addClient(Client c) {
        return cd.add(c);
    }

    @Override
    public Client searchById(int cid) {
        return cd.searchById(cid);
    }

    @Override
    public int updateById(Client c) {
        return cd.updateById(c);
    }

    @Override
    public int deleteById(int cid) {
        return cd.deleteById(cid);
    }
}
