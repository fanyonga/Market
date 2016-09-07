package com.groupfour.dao.impl;

import com.groupfour.dao.NotesDao;
import com.groupfour.entity.Goods;
import com.groupfour.entity.Notes;
import com.groupfour.util.HibernateHelper;
import org.hibernate.HibernateException;
import org.hibernate.Session;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by fanyong on 16-9-7.
 */
public class NotesDaoImpl implements NotesDao{
    public boolean insertNotes(Notes notes) {
        Session session=null;
        try {
            session= HibernateHelper.getSession();
            session.beginTransaction();
            session.save(notes);
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

    public boolean deleteNotes(Notes notes) {
        Session session=null;
        try {
            session= HibernateHelper.getSession();
            session.beginTransaction();
            session.delete(notes);
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

    public List<Notes> selectNotesList(Goods goods) {
        List<Notes> list=new ArrayList<Notes>();
        Session session=null;
        try{
            session=HibernateHelper.getSession();
            list=session.createQuery("from Notes where goods.id="+goods.getGid()).list();
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

    public Notes selectNotesById(int id) {
        Session session=null;
        try{
            session= HibernateHelper.getSession();
            return session.load(Notes.class,id);
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
