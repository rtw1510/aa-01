package com.rtw.re0prj.service.impl;

import com.rtw.re0prj.beans.User;
import com.rtw.re0prj.dao.UserDao;
import com.rtw.re0prj.service.LoginService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
@Service
public class LoginServiceImpl implements LoginService {
    @Resource
    private UserDao userDao;
    @Override
    public User login(User user) {
        User user1 = userDao.selectUser(user);
        return user1;
    }
}
