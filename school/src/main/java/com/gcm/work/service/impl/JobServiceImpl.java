 package com.gcm.work.service.impl;

 import com.gcm.work.model.Job;
 import com.gcm.work.pojoExt.JobInfoExt;
 import com.gcm.work.dao.mapper.JobInfoExtMapper;
 import com.gcm.work.dao.mapper.JobMapper;
 import com.gcm.work.model.JobExample;
 import com.gcm.work.model.JobExample.Criteria;
 import com.gcm.work.service.IJobService;
 import org.apache.commons.lang3.StringUtils;
 import org.springframework.stereotype.Service;
 import org.springframework.transaction.annotation.Transactional;

 import javax.annotation.Resource;
 import java.util.HashMap;
 import java.util.List;
 import java.util.Map;

 @Service
 @Transactional
 public class JobServiceImpl implements IJobService {

     @Resource
     private JobInfoExtMapper jobInfoExtMapper;
     @Resource
     private JobMapper jobMapper;
     /**
      * 查询所有的工作
      * @author gcm
      * @return
      * */
     public List<JobInfoExt> findAll(String jobName, String jobAddress, String companyName) {
         Map<String, Object> map = new HashMap<>();
         map.put("jobName", jobName);
         map.put("companyName", companyName);
         map.put("jobAddress", jobAddress);
         List<JobInfoExt> jobInfoList = jobInfoExtMapper.findAll(map);
         return jobInfoList;
     }
     /**
      * 查询指定cid下的jobName,目的是判断新增工作是否重复
      * */
     public Job findByCidAndJobName(Integer cid, String jobName) {
         JobExample example=new JobExample();
         Criteria criteria = example.createCriteria();
         if (StringUtils.isNotBlank(jobName)) {
             criteria.andJobNameEqualTo(jobName);
         }
         criteria.andCidEqualTo(cid+"");
         List<Job> jobList = jobMapper.selectByExample(example);
         if (jobList != null && !jobList.isEmpty()) {
             return jobList.get(0);
         }
         return null;
     }
     /**
      * 插入新职位
      * */
     public int insertJob(Job job) {
         int result = jobMapper.insert(job);
         return result;
     }
 }
