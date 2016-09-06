package com.groupfour.dao;

import com.groupfour.entity.Goods;
import com.groupfour.entity.Orders;
import com.groupfour.entity.User;

import java.util.List;

/**
 * 订单数据操作接口
 */
public interface OrdersDao {
    /**
     * 插入一个新的订单
     *
     * @param orders
     * @return
     */
    boolean inserOrders(Orders orders);

    /**
     * 更新一个订单的状态
     *
     * @param orders
     * @return
     */
    boolean updateOrders(Orders orders);

    /**
     * 根据购买人来获得其所有的订单
     *
     * @param user
     * @return
     */
    List<Orders> getOrdersListByUser(User user);

    /**
     * 根据商品来获得其所有的订单
     *
     * @param goods
     * @return
     */
    List<Orders> getOrdersListByGoods(Goods goods);

    /**
     * 根据商品id来获取商品信息
     *
     * @param id
     * @return
     */
    Orders getOrdersById(int id);
}
