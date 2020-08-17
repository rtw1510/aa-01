package com.rtw.re0prj.service;

import com.rtw.re0prj.beans.User;

import java.util.List;

public interface LoginService {
    User login(User user);
    List<User> queryUser();
}
