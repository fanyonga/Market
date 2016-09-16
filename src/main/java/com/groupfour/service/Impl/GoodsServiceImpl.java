package com.groupfour.service.Impl;

import com.groupfour.dao.EvaluatesDao;
import com.groupfour.dao.GoodsDao;
import com.groupfour.dao.UserDao;
import com.groupfour.entity.Classify;
import com.groupfour.entity.Evaluates;
import com.groupfour.entity.Goods;
import com.groupfour.entity.User;
import com.groupfour.service.GoodsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("goodsService")
public class GoodsServiceImpl implements GoodsService {

    private GoodsDao goodsDao;

    private EvaluatesDao evaluatesDao;

    private UserDao userDao;

    @Resource
    public void setGoodsDao(GoodsDao goodsDao) {
        this.goodsDao = goodsDao;
    }

    @Resource
    public void setEvaluatesDao(EvaluatesDao evaluatesDao) {
        this.evaluatesDao = evaluatesDao;
    }

    @Resource
    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    public List<Goods> getSailedGoodsList(String account) {
        User user = userDao.selectUserByAccount(account);
        return goodsDao.selectGoodsListByUser(user);
    }

    public List<Goods> selectUncheckGoodsList() {
        return goodsDao.selectUncheckGoodList();
    }

    public List<Evaluates> getGoodsEvalatesList(int gid) {
        Goods goods = goodsDao.selectGoodsById(gid);
        if (goods != null) {
            return evaluatesDao.selectEvaluatesListByGoods(goods);
        }
        return null;
    }

    public void updateGoodsState(String account, Goods goods) {
        User user = userDao.selectUserByAccount(account);
        Goods actualGoods = goodsDao.selectGoodsById(goods.getGid());
        if (user != null) {
            if (user.getRole() == 1) {//管理员用户
                actualGoods.setState(goods.getState());
                goodsDao.updateGoods(actualGoods);
            } else if (actualGoods.getUser().getAccount().equals(user.getAccount())) {//出售人
                //不能修改商品状态（TO Do 其他属性）
                goods.setState(actualGoods.getState());
                goodsDao.updateGoods(goods);
            }
        }
    }

    public void insertGoods(Goods goods) {
        goodsDao.insertGoods(goods);
    }

    public Goods selectGoodsById(int id) {
        return goodsDao.selectGoodsById(id);
    }

    public List<Goods> selectHotGoodList() {
        return goodsDao.selectHotGoodList();
    }

    public List<Goods> selectGoodListByClassify(int id) {
        Classify classify = new Classify();
        classify.setCid(id);
        return goodsDao.selectGoodsListByClassify(classify);
    }
}
