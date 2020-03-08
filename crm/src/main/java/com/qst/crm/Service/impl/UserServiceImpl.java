package com.qst.crm.Service.impl;

import com.qst.crm.Dao.UserDao;
import com.qst.crm.Service.UserService;
import com.qst.crm.po.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserDao ud;
    @Override
    public User login(String userLogname, String userPwd) {
        return ud.selectCheck(userLogname,userPwd);
    }
    @Override
    public int register(User u) {
        return ud.register(u);
    }

    @Override
    public int update_pwd(String ul, String newpwd) {
        return ud.update_pwd(ul,newpwd);
    }

}
