package com.groupfour.dao.impl;

import com.groupfour.dao.OrdersDao;
import com.groupfour.entity.Goods;
import com.groupfour.entity.Orders;
import com.groupfour.entity.User;
import com.groupfour.util.HibernateHelper;
import org.hibernate.HibernateException;
import org.hibernate.Session;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by fanyong on 16-9-7.
 */
public class OrdersDaoImpl implements OrdersDao{
    public boolean inserOrders(Orders orders) {
        Session session=null;
        try {
            session= HibernateHelper.getSession();
            session.beginTransaction();
            session.save(orders);
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

    public boolean updateOrders(Orders orders) {
        Session session=null;
        try {
            session= HibernateHelper.getSession();
            session.beginTransaction();
            session.update(orders);
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

    public List<Orders> getOrdersListByUser(User user) {
        List<Orders> list=new ArrayList<Orders>();
        Session session=null;
        try{
            session=HibernateHelper.getSession();
            list=session.createQuery("from Orders where user.id="+user.getUid()).list();
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

    public List<Orders> getOrdersListByGoods(Goods goods) {
        List<Orders> list=new ArrayList<Orders>();
        Session session=null;
        try{
            session=HibernateHelper.getSession();
            list=session.createQuery("from Orders where goods.id="+goods.getGid()).list();
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

    public Orders selectOrdersById(int id) {
        Session session=null;
        try{
            session=HibernateHelper.getSession();
            Orders orders=(Orders)session.load(Orders.class,id);
            return orders;
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
