package com.groupfour.service;

import com.groupfour.entity.User;

/***
 * 用户操作服务接口
 */
public interface UserService {
    /**
     * 用户登陆：输入账号和密码，判断是否正确并返回用户信息
     *
     * @param user 账号和密码
     * @return 正确：实际用户信息，错误：null
     */
    User userLogin(User user);

    /**
     * 用户注册
     *
     * @param user 用户信息
     * @return 注册成功与否
     */
    boolean userRegister(User user);

    /**
     * 账号是否存在
     *
     * @param user
     * @return
     */
    boolean userIsExist(User user);

    /**
     * 根据账号名获得用户信息
     *
     * @param account
     * @return
     */
    User selectUserByAccount(String account);
}
