package com.qst.crm.Dao;
import com.qst.crm.po.Record;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import java.util.List;
@Repository
@Mapper
public interface RecordDao {
    public List<Record> search();

    int update_setC_id_null(int cid);

    int add(Record record);

    Record searchById(int rid);

    int updateById(Record record);

    int delete(int rid);
}
