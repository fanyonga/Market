package com.groupfour.dao.impl;

import com.groupfour.dao.GoodsDao;
import com.groupfour.entity.Classify;
import com.groupfour.entity.Goods;
import com.groupfour.entity.User;
import com.groupfour.util.HibernateHelper;
import org.hibernate.HibernateException;
import org.hibernate.Session;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by fanyong on 16-9-7.
 */
public class GoodsDaoImpl implements GoodsDao{
    public boolean insertGoods(Goods goods) {
        Session session=null;
        try {
            session= HibernateHelper.getSession();
            session.beginTransaction();
            session.save(goods);
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

    public boolean deleteUser(Goods goods) {
        Session session=null;
        try {
            session= HibernateHelper.getSession();
            session.beginTransaction();
            session.delete(goods);
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

    public boolean updateGoods(Goods goods) {
        Session session=null;
        try {
            session= HibernateHelper.getSession();
            session.beginTransaction();
            session.update(goods);
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

    public List<Goods> selectGoodsListByClassify(Classify classify) {
        List<Goods> list=new ArrayList<Goods>();
        Session session=null;
        try{
            session=HibernateHelper.getSession();
            list=session.createQuery("from Goods where classify.id="+classify.getCid()).list();
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

    public List<Goods> selectGoodsListByName(String gname) {
        List<Goods> list=new ArrayList<Goods>();
        Session session=null;
        try{
            session=HibernateHelper.getSession();
            list=session.createQuery("from Goods where gname like '%"+gname+"%'").list();
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

    public List<Goods> selectGoodsListByUser(User user) {
        List<Goods> list=new ArrayList<Goods>();
        Session session=null;
        try{
            session=HibernateHelper.getSession();
            list=session.createQuery("from Goods where user.id="+user.getUid()).list();
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

    public Goods selectGoodsById(int id) {
        Session session=null;
        try{
            session= HibernateHelper.getSession();
            return session.load(Goods.class,id);
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
