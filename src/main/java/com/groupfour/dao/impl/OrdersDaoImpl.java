package com.groupfour.dao.impl;

import com.groupfour.dao.OrdersDao;
import com.groupfour.entity.Goods;
import com.groupfour.entity.Orders;
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

@Repository("ordersDao")
@Scope("prototype")
public class OrdersDaoImpl extends HibernateDaoSupport implements OrdersDao{

    //注入sessionFactory
    @Resource
    public void setMySessionFactory(SessionFactory sessionFactory){
        super.setSessionFactory(sessionFactory);
    }

    public void inserOrders(Orders orders) {
        getHibernateTemplate().save(orders);
    }

    public void updateOrders(Orders orders) {
        getHibernateTemplate().update(orders);
    }

    public List<Orders> getOrdersListByUser(User user) {
        List<Orders> list= (List<Orders>) getHibernateTemplate().find("from Orders where user.uid=?",new Object[]{user.getUid()});
        return list;
    }

    public List<Orders> getOrdersListByGoods(Goods goods) {
        List<Orders> list= (List<Orders>) getHibernateTemplate().find("from Orders where goods.gid=?",new Object[]{goods.getGid()});
        return list;
    }

    public Orders selectOrdersById(int id) {
        return  getHibernateTemplate().load(Orders.class,id);
    }
}
