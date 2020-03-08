package com.qst.crm.Service;
import com.qst.crm.po.Order;

import java.util.List;
public interface OrderService {
    List<Order> showOrder();

    int update_setC_id_null(int cid);

    int addOrder(Order o);

    Order searchById(int oid);

    int updateById(Order o);

    int deleteById(int oid);

    int getCount();
    List<Order> getPageList(int pageNo, int pageSize);
}
