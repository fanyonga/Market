package com.groupfour.service;

import com.groupfour.entity.Evaluates;
import com.groupfour.entity.Goods;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface GoodsService {

    /**
     * 获取一个用户所售卖的所有的商品列表
     *
     * @param account 用户账号
     * @return
     */
     List<Goods> getSailedGoodsList(String account);

    /**
     * 获取未审核的商品列表（仅供管理员使用）
     *
     * @return
     */
    List<Goods> selectUncheckGoodsList();

    /**
     * 获得商品的所有评价列表
     *
     * @param gid 商品id
     * @return
     */
    List<Evaluates> getGoodsEvalatesList(int gid);

    /**
     * 对商品执行一定的操作：普通用户提交、修改商品信息，管理员审核商品。
     *
     * @param account 操作用户账号
     * @param goods  商品
     */
    void updateGoodsState(String account,Goods goods);

    /**
     * 添加一个新的商品
     *
     * @param goods 商品
     */
    void insertGoods(Goods goods);

    /**
     * 根据id获取一个商品的具体信息
     *
     * @param id
     * @return
     */
    Goods selectGoodsById(int id);

    /**
     * 返回销量最高的16种新商品列表
     *
     * @return
     */
    List<Goods> selectHotGoodList();

    /**
     * 根据分类id来获取已发布的商品列表
     *
     * @param id 分类id
     * @return
     */
    List<Goods> selectGoodListByClassify(int id);
}
