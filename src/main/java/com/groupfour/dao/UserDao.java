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
     * @return
     */
    boolean insertUser(User user);

    /**
     * 删除一个已有的用户
     * @param user
     * @return
     */
    boolean deleteUser(User user);

    /**
     * 更新用户信息
     *
     * @param user
     * @return
     */
    boolean updateUser(User user);

    /**
     * 获得用户列表
     *
     * @return
     */
    List<User> selectUserList();

    /**
     * 验证用户的登陆信息（账号和密码）并获取一个用户
     * @param user 非空登陆成功
     * @return
     */
    User selectUserByAccount(User user);
}
