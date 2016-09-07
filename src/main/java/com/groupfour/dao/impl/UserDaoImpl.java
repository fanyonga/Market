package com.groupfour.dao.impl;

import com.groupfour.dao.UserDao;
import com.groupfour.entity.User;
import com.groupfour.util.HibernateHelper;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;


@Repository("userDao")
@Scope("prototype")
public class UserDaoImpl extends HibernateDaoSupport implements UserDao{

    //注入sessionFactory
    @Resource
    public void setMySessionFactory(SessionFactory sessionFactory){
        super.setSessionFactory(sessionFactory);
    }

    public void insertUser(User user) {
       getHibernateTemplate().save(user);
    }

    public void deleteUser(User user) {
        getHibernateTemplate().delete(user);
    }

    public void updateUser(User user) {
        getHibernateTemplate().update(user);
    }

    public List<User> selectUserList() {
        List<User> list= (List<User>) getHibernateTemplate().find("from User ");
        return list;
    }

    public User selectUserByAccount(String account) {
        return (User) getHibernateTemplate().find("from User where account=?",new Object[]{account}).get(0);
    }
}
