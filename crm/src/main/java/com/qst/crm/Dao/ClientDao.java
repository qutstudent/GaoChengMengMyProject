package com.qst.crm.Dao;

import com.qst.crm.po.Client;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import java.util.List;
@Repository
@Mapper
public interface ClientDao {
    public List<Client> search();

    public int add(Client c);
    Client searchById(Integer cid);

    int updateById(Client c);

    int deleteById(int cid);
}
