package com.groupfour.dao.impl;

import com.groupfour.dao.OrdersDao;
import com.groupfour.entity.Goods;
import com.groupfour.entity.Orders;
import com.groupfour.entity.User;
import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
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

    public List<Orders> getOrdersListByGoods(Goods goods) {
        List<Orders> list= (List<Orders>) getHibernateTemplate().find("from Orders where goods.gid=?",new Object[]{goods.getGid()});
        return list;
    }

    public Orders selectOrdersById(int id) {
        return  getHibernateTemplate().get(Orders.class,id);
    }

    public List<Orders> getOrdersListByBuyer(User user) {
        List<Orders> list= (List<Orders>) getHibernateTemplate().find("from Orders where user.uid=?",new Object[]{user.getUid()});
        return list;
    }

    public List<Orders> getOrdersListBySeller(User user) {
        List<Orders> list= (List<Orders>) getHibernateTemplate().find("from Orders o where exists (select gid from Goods  g where g.user.uid=? and o.goods.gid=gid) order by  time",new Object[]{user.getUid()});
        return list;
    }
}
