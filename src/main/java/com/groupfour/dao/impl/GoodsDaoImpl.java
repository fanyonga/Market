package com.groupfour.dao.impl;

import com.groupfour.dao.GoodsDao;
import com.groupfour.entity.Classify;
import com.groupfour.entity.Goods;
import com.groupfour.entity.User;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.context.annotation.Scope;
import org.springframework.orm.hibernate5.HibernateCallback;
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
        List<Goods> list= (List<Goods>) getHibernateTemplate().find("from Goods where classify.cid=? and state=?",new Object[]{classify.getCid(),0});
        return list;
    }

    public List<Goods> selectGoodsListByName(String gname) {
        List<Goods> list= (List<Goods>) getHibernateTemplate().find("from Goods where gname like '%?%' and state=?",new Object[]{gname,0});
        return list;
    }

    public List<Goods> selectGoodsListByUser(User user) {
        List<Goods> list= (List<Goods>) getHibernateTemplate().find("from Goods where user.uid=?",new Object[]{user.getUid()});
        return list;
    }

    public Goods selectGoodsById(int id) {
        return getHibernateTemplate().load(Goods.class,id);
    }

    public List<Goods> selectUncheckGoodList() {
        List<Goods> list= (List<Goods>) getHibernateTemplate().find("from Goods where state=?",new Object[]{1});
        return list;
    }

    public List<Goods> selectHotGoodList() {
        List<Goods> list=(List<Goods>)getHibernateTemplate().execute(new HibernateCallback() {
            public Object doInHibernate(Session session) throws HibernateException {
                Query query=session.createQuery("from Goods  where state=0 order by saled_num desc");
                query.setFirstResult(0);
                query.setMaxResults(16);
                return query.list();
            }
        });
        return list;
    }
}
