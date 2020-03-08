package com.qst.crm.Service;

import com.qst.crm.po.Client;
import com.qst.crm.po.Order;

import java.util.List;
public interface ClientService {
    public List<Client> search();

    public int addClient(Client c);

    Client searchById(int cid);

    int updateById(Client c);

    int deleteById(int cid);
}
