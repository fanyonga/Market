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
     */
    void insertGoods(Goods goods);

    /**
     * 将商品置于过期
     *
     * @param goods
     */
    void deleteUser(Goods goods);

    /**
     * 更新商品信息
     *
     * @param goods
     */
    void updateGoods(Goods goods);

    /**
     * 根据商品类别来获取所有该类发布中商品的列表
     *
     * @param classify
     * @return 商品列表
     */
    List<Goods> selectGoodsListByClassify(Classify classify);

    /**
     * 模糊查询根据商品名来获取所有发布中商品的列表
     *
     * @param gname
     * @return 商品列表
     */
    List<Goods> selectGoodsListByName(String gname);

    /**
     * 根据用户来获取所有售卖的商品信息
     *
     * @param user
     * @return 商品列表
     */
    List<Goods> selectGoodsListByUser(User user);

    /**
     * 获取未审核商品信息列表
     *
     * @return
     */
    List<Goods> selectUncheckGoodList();
    /**
     * 根据商品id来获取商品信息
     *
     * @param id
     * @return
     */
    Goods selectGoodsById(int id);
}
