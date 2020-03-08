package com.qst.crm.Service.impl;
import com.qst.crm.Dao.RecordDao;
import com.qst.crm.Service.RecordService;
import com.qst.crm.po.Record;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class RecordServiceImpl implements RecordService {
    @Autowired
    private RecordDao rd;
    @Override
    public List<Record> show_record() {
        return rd.search();
    }

    @Override
    public int update_setC_id_null(int cid) {
        return rd.update_setC_id_null(cid);
    }

    @Override
    public int add(Record record) {
        return rd.add(record);
    }

    @Override
    public Record selectById(int rid) {
        return rd.searchById(rid);
    }

    @Override
    public int updateById(Record record) {
        return rd.updateById(record);
    }

    @Override
    public int deleteById(int rid) {
        return rd.delete(rid);
    }
}
