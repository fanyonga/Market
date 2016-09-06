package com.groupfour.dao.impl;

import com.groupfour.dao.UserDao;
import com.groupfour.entity.User;
import com.groupfour.until.HibernateHelper;
import org.hibernate.HibernateException;
import org.hibernate.Session;

import java.util.ArrayList;
import java.util.List;

/**
 * 用户数据操作实现类
 */
public class UserDaoImpl implements UserDao{

    public boolean insertUser(User user) {
        Session session=null;
        try{
            session= HibernateHelper.getSession();
            session.beginTransaction();
            session.save(user);
            return true;
        }catch (HibernateException e){
            session.getTransaction().rollback();
            e.printStackTrace();
            return false;
        }finally {
            if(session!=null){
                session.close();
            }
        }
    }

    public boolean deleteUser(User user) {
        Session session=null;
        try{
            session= HibernateHelper.getSession();
            session.beginTransaction();
            session.delete(user);
            return true;
        }catch (HibernateException e){
            session.getTransaction().rollback();
            e.printStackTrace();
            return false;
        }finally {
            if(session!=null){
                session.close();
            }
        }
    }

    public boolean updateUser(User user) {
        Session session=null;
        try{
            session= HibernateHelper.getSession();
            session.beginTransaction();
            session.update(user);
            session.getTransaction().commit();
            return true;
        }catch (HibernateException e){
            session.getTransaction().rollback();
            e.printStackTrace();
            return false;
        }finally {
            if(session!=null){
                session.close();
            }
        }
    }

    public List<User> selectUserList() {
        List<User> users=new ArrayList<User>();
        Session session=null;
        try{
            session= HibernateHelper.getSession();
            users=session.createQuery("from User").list();
            return users;
        }catch (HibernateException e){
            e.printStackTrace();
            return null;
        }finally {
            if(session!=null){
                session.close();
            }
        }
    }

    public User selectUserByAccount(User user) {
        Session session=null;
        User user1=null;
        try{
            session= HibernateHelper.getSession();
            user1=(User) session.createQuery("from User where username='"+user.getUsername()+"'and password='"
                    +user.getPassword()+"'").uniqueResult();
            return user1;
        }catch (HibernateException e){
            e.printStackTrace();
            return null;
        }finally {
            if(session!=null){
                session.close();
            }
        }
    }
}
