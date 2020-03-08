package com.qst.crm.Service;
import com.qst.crm.po.Record;
import org.springframework.stereotype.Service;
import java.util.List;
public interface RecordService {
public List<Record> show_record();

    int update_setC_id_null(int cid);

    int add(Record record);

    Record selectById(int rid);

    int updateById(Record record);

    int deleteById(int rid);
}
