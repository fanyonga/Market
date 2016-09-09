package com.groupfour.service.Impl;

import com.groupfour.dao.GoodsDao;
import com.groupfour.dao.OrdersDao;
import com.groupfour.dao.UserDao;
import com.groupfour.entity.Goods;
import com.groupfour.entity.Orders;
import com.groupfour.entity.User;
import com.groupfour.service.OrdersService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service("ordersService")
public class OrdersServiceImpl implements OrdersService{

    UserDao userDao;

    OrdersDao ordersDao;

    GoodsDao goodsDao;

    @Resource
    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    @Resource
    public void setOrdersDao(OrdersDao ordersDao) {
        this.ordersDao = ordersDao;
    }

    @Resource
    public void setGoodsDao(GoodsDao goodsDao) {
        this.goodsDao = goodsDao;
    }

    public void insertOrder(Orders orders) {
        ordersDao.inserOrders(orders);
    }

    public List<Orders> getOrderListByBuyer(String account) {
        User user=userDao.selectUserByAccount(account);
        if(user!=null){
            return ordersDao.getOrdersListByBuyer(user);
        }
        return null;
    }

    public List<Orders> getOrderListBySeller(String account) {
        User user=userDao.selectUserByAccount(account);
        if(user!=null){
           return  ordersDao.getOrdersListBySeller(user);
        }
        return null;
    }

    public List<Goods> getGoodsListByUser(String account) {
        List<Orders> ordersList=getOrderListByBuyer(account);
        if(ordersList!=null){
            List<Goods> goodslist=new ArrayList<Goods>();
            for (Orders order:ordersList
                 ) {
                if(order.getOstate()==3){
                    goodslist.add(order.getGoods());
                }
            }
            return goodslist;
        }
        return null;
    }

    public void updateOrderState(String account, int oid, int state) {
        User user = userDao.selectUserByAccount(account);
        if (user != null) {
            Orders orders = ordersDao.selectOrdersById(oid);
            if (orders != null) {
                if (state >= orders.getOstate()) {
                    if (user.getAccount().equals(orders.getUser().getAccount())) {//买家
                        if (state == 2 && orders.getOstate() == 1) {//买家确认收货，卖家已发货
                            orders.setOstate(2);//订单完成
                        } else if (state == 3 && orders.getOstate() == 0) {//买家取消订单且卖家未发货
                            orders.setOstate(3);//订单取消
                        }
                        ordersDao.updateOrders(orders);
                    } else if (orders.getGoods().getUser().getAccount().equals(user.getAccount())) {//买家
                        if (orders.getOstate() == 0) {
                            orders.setOstate(state);//卖家发货或者取消订单
                        }
                    }
                }
            }
        }
    }
}
