package com.groupfour.dao;

import com.groupfour.entity.Classify;
import com.groupfour.entity.Goods;
import com.groupfour.entity.User;

import java.util.List;

/**
 *商品数据操作接口
 */
public interface GoodsDao {

    /**
     * 插入一个新的商品
     *
     * @param goods
     * @return
     */
    boolean insertGoods(Goods goods);

    /**
     * 将商品置于过期
     *
     * @param goods
     * @return
     */
    boolean deleteUser(Goods goods);

    /**
     * 更新商品信息
     *
     * @param goods
     * @return
     */
    boolean updateGoods(Goods goods);

    /**
     * 根据商品类别来获取所有该类商品列表
     *
     * @param classify
     * @return 商品列表
     */
    List<Goods> selectGoodsListByClassify(Classify classify);

    /**
     * 模糊查询根据商品名来获取所有商品的信息
     *
     * @param gname
     * @return 商品列表
     */
    List<Goods> selectUserByAccount(String gname);

    /**
     * 根据用户来获取所有售卖的商品信息
     *
     * @param user
     * @return 商品列表
     */
    List<Goods> selectUserByUser(User user);
}
