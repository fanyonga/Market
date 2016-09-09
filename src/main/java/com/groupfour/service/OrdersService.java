package com.groupfour.service;

import com.groupfour.entity.Goods;
import com.groupfour.entity.Orders;

import java.util.List;

/**
 * 订单操作服务接口
 */
public interface OrdersService {

    /**
     * 增加一张订单
     *
     * @param orders
     */
    void insertOrder(Orders orders);

    /**
     * 获得买家用户所有的订单
     *
     * @param account 买家账号
     * @return
     */
    List<Orders> getOrderListByBuyer(String account);

    /**
     * 获得买家用户所有受到的订单
     *
     * @param account 卖家账号
     * @return
     */
    List<Orders> getOrderListBySeller(String account);

    /**
     * 获得用户购买过的商品列表
     *
     * @param account
     * @return
     */
    List<Goods> getGoodsListByUser(String account);

    /**
     * 修改一个订单的状态：等待接单、已发货、确认收货订单完成、废弃订单（不可在等待订单之后进行）
     *
     * @param account 买家或卖家账号
     * @param oid 订单id
     * @param state 订单的状态：0-等待接单，1-已发货、2-确认收货订单完成、3-废弃订单
     */
    void updateOrderState(String account,int oid,int state);

}
