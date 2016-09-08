package com.groupfour.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 * Hibernate功能工具类
 */
public class HibernateUtil {

    private static SessionFactory sessionFactory=null;

    /**
     * 获得会话工厂
     *
     * @return sessionFactory
     */
    public static SessionFactory getSessionFactory()
    {
        if(sessionFactory==null){
            Configuration conf=new Configuration().configure();
            sessionFactory=conf.buildSessionFactory();
        }
        return  sessionFactory;
    }

    /**
     * 获得一次新的会话
     *
     * @return session
     */
    public  static Session getSession()
    {
        if(sessionFactory==null)
        {
            getSessionFactory();
        }
        return sessionFactory.openSession();
    }
}
