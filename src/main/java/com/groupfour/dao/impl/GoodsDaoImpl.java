package com.groupfour.dao.impl;

import com.groupfour.dao.GoodsDao;
import com.groupfour.entity.Classify;
import com.groupfour.entity.Goods;
import com.groupfour.entity.User;
import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

@Repository("goodsDao")
@Scope("prototype")
public class GoodsDaoImpl extends HibernateDaoSupport implements GoodsDao{

    //注入sessionFactory
    @Resource
    public void setMySessionFactory(SessionFactory sessionFactory){
        super.setSessionFactory(sessionFactory);
    }
    public void insertGoods(Goods goods) {
        getHibernateTemplate().save(goods);
    }

    public void deleteUser(Goods goods) {
        getHibernateTemplate().delete(goods);
    }

    public void updateGoods(Goods goods) {
       getHibernateTemplate().update(goods);
    }

    public List<Goods> selectGoodsListByClassify(Classify classify) {
        List<Goods> list= (List<Goods>) getHibernateTemplate().find("from Goods where classify.cid=?",new Object[]{classify.getCid()});
        return list;
    }

    public List<Goods> selectGoodsListByName(String gname) {
        List<Goods> list= (List<Goods>) getHibernateTemplate().find("from Goods where gname like '%?%'",new Object[]{gname});
        return list;
    }

    public List<Goods> selectGoodsListByUser(User user) {
        List<Goods> list= (List<Goods>) getHibernateTemplate().find("from Goods where user.uid=?",new Object[]{user.getUid()});
        return list;
    }

    public Goods selectGoodsById(int id) {
        return getHibernateTemplate().load(Goods.class,id);
    }
}
