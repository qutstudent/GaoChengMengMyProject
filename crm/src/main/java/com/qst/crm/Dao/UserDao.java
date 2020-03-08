package com.qst.crm.Dao;
import com.qst.crm.po.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
@Repository
@Mapper
public interface UserDao {
    User selectCheck(@Param("userLogname") String userLogname,@Param("userPwd") String userPwd);

    int register(User u);

    int update_pwd(@Param("userLogname") String ul,@Param("newpwd") String newpwd);
}
