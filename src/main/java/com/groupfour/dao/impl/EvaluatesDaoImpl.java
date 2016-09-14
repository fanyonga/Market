package com.groupfour.dao.impl;

import com.groupfour.dao.EvaluatesDao;
import com.groupfour.entity.Evaluates;
import com.groupfour.entity.Goods;
import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

@Repository("evaluatesDao")
@Scope("prototype")
public class EvaluatesDaoImpl extends HibernateDaoSupport implements EvaluatesDao{

    //注入sessionFactory
    @Resource
    public void setMySessionFactory(SessionFactory sessionFactory){
        super.setSessionFactory(sessionFactory);
    }
    public void insertEvaluates(Evaluates evaluates) {
        getHibernateTemplate().save(evaluates);
    }

    public void deleteEvaluates(Evaluates evaluates) {
        getHibernateTemplate().update(evaluates);
    }

    public List<Evaluates> selectEvaluatesListByGoods(Goods goods) {
        List<Evaluates> list=(List<Evaluates>)getHibernateTemplate().find("from Evaluates  where goods.gid=?",new Object[]{goods.getGid()});
        return list;
    }

    public Evaluates selectEvaluatesById(int id) {
       return getHibernateTemplate().get(Evaluates.class,id);
    }
}
