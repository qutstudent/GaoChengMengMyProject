package com.qst.crm.Dao;
import com.qst.crm.po.Order;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import java.util.List;
@Repository
@Mapper
public interface OrderDao {
     List<Order> search();
     int update_setC_id_null(int cid);
     int addOrder(Order o);
     Order searchById(int oid);
     int updateById(Order o);
     int deleteById(int oid);

    int getcount();
    List<Order> getPageList(@Param("pageNo") int pageNo, @Param("pageSize")int pageSize);
}
