package com.groupfour.dao.impl;

import com.groupfour.dao.NoticeDao;
import com.groupfour.entity.Notice;
import com.groupfour.util.HibernateHelper;
import org.hibernate.HibernateException;
import org.hibernate.Session;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by fanyong on 16-9-7.
 */
public class NoticeDaoImpl implements NoticeDao{

    public boolean insertNotice(Notice notice) {
        Session session=null;
        try {
            session= HibernateHelper.getSession();
            //如果新增的的公告是置顶的，则将当前置顶公告不再置顶
            if(notice!=null&&notice.getState()==1){
                Notice topNotice=selectTopNotice();
                topNotice.setState(0);
                session.update(topNotice);
            }
            session.beginTransaction();
            session.save(notice);
            session.getTransaction().commit();
            return true;
        }catch (Exception e){
            session.getTransaction().rollback();
            e.printStackTrace();
            return false;
        }finally {
            if(session!=null){
                try {
                    session.close();
                }catch (HibernateException e){
                    e.printStackTrace();
                }
            }
        }
    }

    public boolean updateNotice(Notice notice) {
        Session session=null;
        try {
            session= HibernateHelper.getSession();
            session.beginTransaction();
            //如果更新的公告是置顶的，则将当前置顶公告不再置顶
            if(notice!=null&&notice.getState()==1){
                Notice topNotice=selectTopNotice();
                topNotice.setState(0);
                session.update(topNotice);
            }
            session.update(notice);
            session.getTransaction().commit();
            return true;
        }catch (Exception e){
            session.getTransaction().rollback();
            e.printStackTrace();
            return false;
        }finally {
            if(session!=null){
                try {
                    session.close();
                }catch (HibernateException e){
                    e.printStackTrace();
                }
            }
        }
    }

    public List<Notice> selectNoticeList(int option) {
        List<Notice> list=new ArrayList<Notice>();
        Session session=null;
        try{
            session=HibernateHelper.getSession();
            list=session.createQuery("from Notice where state!=2 order by state,time").list();
            return list;
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }finally {
            if(session!=null){
                try {
                    session.close();
                }catch (HibernateException e){
                    e.printStackTrace();
                }
            }
        }
    }

    public Notice selectTopNotice() {
        Session session=null;
        try{
            session=HibernateHelper.getSession();
            Notice notice=(Notice)session.createQuery("from Notice where state=1").uniqueResult();
            return notice;
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }finally {
            if(session!=null){
                try {
                    session.close();
                }catch (HibernateException e){
                    e.printStackTrace();
                }
            }
        }
    }

    public Notice selectNoticeById(int id) {
        Session session=null;
        try{
            session=HibernateHelper.getSession();
            Notice notice=(Notice)session.createQuery("from Notice where state!=2 and noid="+id).uniqueResult();
            return notice;
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }finally {
            if(session!=null){
                try {
                    session.close();
                }catch (HibernateException e){
                    e.printStackTrace();
                }
            }
        }
    }
}
