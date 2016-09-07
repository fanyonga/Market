package com.groupfour.dao;

import com.groupfour.entity.Evaluates;
import com.groupfour.entity.Goods;
import com.groupfour.entity.User;

import java.util.List;

/**
 *评价数据操作接口
 */
public interface EvaluatesDao {

    /**
     * 插入一个新的评价
     *
     * @param evaluates
     * @return
     */
    boolean insertEvaluates(Evaluates evaluates);

    /**
     * 删除一个已有的评价
     *
     * @param evaluates
     * @return
     */
    boolean deleteEvaluates(Evaluates evaluates);

//不允许用户更新评价
//    /**
//     * 更新用户信息
//     *
//     * @param evaluates
//     * @return
//     */
//    boolean updateUser(User evaluates);

    /**
     * 根据商品信息获取它的评价列表
     * @param goods
     * @return
     */
    List<Evaluates> selectEvaluatesListByGoods(Goods goods);

    /**
     * 根据评价id来获取评价信息
     *
     * @param id
     * @return
     */
    Evaluates selectEvaluatesById(int id);
}
