package com.rtw.re0prj.dao;

import com.rtw.re0prj.beans.User;

import java.util.List;

public interface UserDao {
    User selectUser(User user);
    List<User> selectUsers();
}
