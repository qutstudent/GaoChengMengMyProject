package com.qst.crm.Dao;
import com.qst.crm.po.State;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface StateDao {

    List<State> search();
}
