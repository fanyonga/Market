package com.groupfour.dao.impl;

import com.groupfour.dao.NoticeDao;
import com.groupfour.entity.Notice;
import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

@Repository("noticeDao")
@Scope("prototype")
public class NoticeDaoImpl extends HibernateDaoSupport implements NoticeDao{

    //注入sessionFactory
    @Resource
    public void setMySessionFactory(SessionFactory sessionFactory){
        super.setSessionFactory(sessionFactory);
    }

    public void insertNotice(Notice notice) {
        if(notice.getState()==1){
            Notice topNotice=selectTopNotice();
            topNotice.setState(0);
            getHibernateTemplate().update(topNotice);
        }
        getHibernateTemplate().save(notice);
    }

    public void updateNotice(Notice notice) {
        if(notice.getState()==1){
            Notice topNotice=selectTopNotice();
            topNotice.setState(0);
            getHibernateTemplate().update(topNotice);
        }
        getHibernateTemplate().update(notice);
    }

    public List<Notice> selectNoticeList(int option) {
        List<Notice> list=null;
        if(option==0){
            list= (List<Notice>) getHibernateTemplate().find("from Notice order by state,time");
        }
        else {
            list= (List<Notice>) getHibernateTemplate().find("from Notice where state !=?  order by state,time",new Object[]{2});
        }
        return list;
    }

    public Notice selectTopNotice() {
        return (Notice) getHibernateTemplate().find("from Notice where state =?",new Object[]{1}).get(0);
    }

    public Notice selectNoticeById(int id) {
        return getHibernateTemplate().load(Notice.class,id);
    }
}
