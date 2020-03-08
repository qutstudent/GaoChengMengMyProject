package com.qst.crm.Service.impl;
import com.qst.crm.Dao.OrderDao;
import com.qst.crm.Service.OrderService;
import com.qst.crm.po.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrderDao od;
    @Override
    public List<Order> showOrder() {
        return od.search();
    }

    @Override
    public int update_setC_id_null(int cid) {
        return od.update_setC_id_null(cid);
    }

    @Override
    public int addOrder(Order o) {
        return od.addOrder(o);
    }

    @Override
    public Order searchById(int oid) {
        return od.searchById(oid);
    }

    @Override
    public int updateById(Order o) {
        return od.updateById(o);
    }

    @Override
    public int deleteById(int oid) {
        return od.deleteById(oid);
    }

    @Override
    public int getCount() {
        return od.getcount();
    }

    @Override
    public List<Order> getPageList(int pageNo,int pageSize) {
        pageNo=(pageNo-1)*pageSize;
        return od.getPageList(pageNo,pageSize);
    }
}
