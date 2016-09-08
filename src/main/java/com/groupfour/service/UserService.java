package com.groupfour.service;

import com.groupfour.entity.User;

/**
 * Created by fanyong on 16-9-7.
 */
public interface UserService {
    User userLogin(User user);

    boolean userRegister(User user);

    boolean userIsExist(User user);

    User selectUserByAccount(String account);
}
