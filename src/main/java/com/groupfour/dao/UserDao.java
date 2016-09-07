package com.groupfour.dao;

import com.groupfour.entity.User;

import java.util.List;

/**
 *用户数据操作接口
 */
public interface UserDao {

    /**
     * 插入一个新的用户
     *
     * @param user
     */
    void insertUser(User user);

    /**
     * 删除一个已有的用户
     *
     * @param user
     */
    void deleteUser(User user);

    /**
     * 更新用户信息
     *
     * @param user
     */
    void updateUser(User user);

    /**
     * 获得用户列表
     *
     * @return
     */
    List<User> selectUserList();

    /**
     * 获取指定账号名的用户
     * @param account
     * @return
     */
    User selectUserByAccount(String account);
}
