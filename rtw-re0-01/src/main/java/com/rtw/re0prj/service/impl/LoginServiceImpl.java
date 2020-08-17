package com.rtw.re0prj.service.impl;

import com.rtw.re0prj.beans.User;
import com.rtw.re0prj.dao.UserDao;
import com.rtw.re0prj.service.LoginService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
public class LoginServiceImpl implements LoginService {
    @Resource
    private UserDao userDao;
    @Override
    public User login(User user) {
        User user1 = userDao.selectUser(user);
        return user1;
    }

    @Override
    public List<User> queryUser() {
        List<User> users = new ArrayList<>();
        users = userDao.selectUsers();
        return users;
    }
}
