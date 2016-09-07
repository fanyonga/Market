package com.groupfour.dao.impl;

import com.groupfour.dao.EvaluatesDao;
import com.groupfour.entity.Evaluates;
import com.groupfour.entity.Goods;
import com.groupfour.util.HibernateHelper;
import org.hibernate.HibernateException;
import org.hibernate.Session;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by fanyong on 16-9-7.
 */
public class EvaluatesDaoImpl implements EvaluatesDao{
    public boolean insertEvaluates(Evaluates evaluates) {
        Session session=null;
        try {
            session= HibernateHelper.getSession();
            session.beginTransaction();
            session.save(evaluates);
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

    public boolean deleteEvaluates(Evaluates evaluates) {
        Session session=null;
        try {
            session= HibernateHelper.getSession();
            session.beginTransaction();
            session.delete(evaluates);
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

    public List<Evaluates> selectEvaluatesListByGoods(Goods goods) {
        Session session=null;
        List<Evaluates> list=new ArrayList<Evaluates>();
        try {
            session= HibernateHelper.getSession();
            list=session.createQuery("from Evaluates where goods.id="+goods.getGid()+"").list();
            return list;
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

    public Evaluates selectEvaluatesById(int id) {
        Session session=null;
        try{
            session= HibernateHelper.getSession();
            return session.load(Evaluates.class,id);
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
