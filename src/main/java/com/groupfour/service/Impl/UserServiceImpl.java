package com.groupfour.service.Impl;

import com.groupfour.dao.UserDao;
import com.groupfour.entity.User;
import com.groupfour.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("UserSevice")
public class UserServiceImpl implements UserService
{

    private UserDao userDao;

    public UserDao getUserDao() {
        return userDao;
    }

    @Resource
    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    public User userLogin(User user) {
       User actualUser=userDao.selectUserByAccount(user.getAccount());
        if(actualUser!=null && actualUser.getPassword().equals(user.getPassword())){
            return actualUser;
        }
        return null;
    }

    public boolean userRegister(User user) {
        userDao.insertUser(user);
        return true;
    }

    public boolean userIsExist(User user) {
        return userLogin(user)!=null;
    }

    public User selectUserByAccount(String account) {
        return userDao.selectUserByAccount(account);
    }


}
