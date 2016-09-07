package com.groupfour.dao.impl;

import com.groupfour.dao.ClassifyDao;
import com.groupfour.entity.Classify;
import com.groupfour.util.HibernateHelper;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.stereotype.Component;

/**
 * Created by fanyong on 16-9-7.
 */
public class ClassifyDaoImpl implements ClassifyDao {
    public boolean insertClassify(Classify classify) {
        Session session=null;
        try{
            session= HibernateHelper.getSession();
            session.beginTransaction();
            session.save(classify);
            session.getTransaction().commit();
            return true;
        }catch (Exception e){
            session.getTransaction().rollback();
            e.printStackTrace();
            return false;
        }finally {
            if(session!=null){
                try {
                    session.close();
                }catch (HibernateException e){
                    e.printStackTrace();
                }
            }
        }
    }

    public boolean deleteClassify(Classify classify) {
        Session session=null;
        try{
            session= HibernateHelper.getSession();
            session.beginTransaction();
            session.delete(classify);
            session.getTransaction().commit();
            return true;
        }catch (Exception e){
            session.getTransaction().rollback();
            e.printStackTrace();
            return false;
        }finally {
            if(session!=null){
                try {
                    session.close();
                }catch (HibernateException e){
                    e.printStackTrace();
                }
            }
        }
    }

    public boolean updateClassifyOfCategory(Classify classify) {
        Session session=null;
        try{
            session= HibernateHelper.getSession();
            session.beginTransaction();
            session.update(classify);
            session.getTransaction().commit();
            return true;
        }catch (Exception e){
            session.getTransaction().rollback();
            e.printStackTrace();
            return false;
        }finally {
            if(session!=null){
                try {
                    session.close();
                }catch (HibernateException e){
                    e.printStackTrace();
                }
            }
        }
    }

    public Classify selectClassifyById(int id) {
        Session session=null;
        try{
            session= HibernateHelper.getSession();
            return session.load(Classify.class,id);
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }finally {
            if(session!=null){
                try {
                    session.close();
                }catch (HibernateException e){
                    e.printStackTrace();
                }
            }
        }
    }
}
