package com.qst.crm.Service;
import com.qst.crm.po.User;
import org.springframework.stereotype.Service;
public interface UserService {
    User login(String userLogname, String userPwd);

    int register(User u);

    int update_pwd(String ul, String newpwd);
}
