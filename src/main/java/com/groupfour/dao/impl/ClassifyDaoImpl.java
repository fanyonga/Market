package com.groupfour.dao.impl;

import com.groupfour.dao.ClassifyDao;
import com.groupfour.entity.Classify;
import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;

@Repository("classifyDao")
@Scope("prototype")
public class ClassifyDaoImpl extends HibernateDaoSupport implements ClassifyDao  {

    //注入sessionFactory
    @Resource
    public void setMySessionFactory(SessionFactory sessionFactory){
        super.setSessionFactory(sessionFactory);
    }

    public void insertClassify(Classify classify) {
        getHibernateTemplate().save(classify);
    }

    public void deleteClassify(Classify classify) {
       getHibernateTemplate().update(classify);
    }

    public void updateClassifyOfCategory(Classify classify) {
        getHibernateTemplate().delete(classify);
    }

    public Classify selectClassifyById(int id) {
        return getHibernateTemplate().get(Classify.class,id);
    }
}
