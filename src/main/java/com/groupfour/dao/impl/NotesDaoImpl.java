package com.groupfour.dao.impl;

import com.groupfour.dao.NotesDao;
import com.groupfour.entity.Goods;
import com.groupfour.entity.Notes;
import com.groupfour.util.HibernateHelper;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Repository("notesDao")
@Scope("prototype")
public class NotesDaoImpl extends HibernateDaoSupport implements NotesDao{

    //注入sessionFactory
    @Resource
    public void setMySessionFactory(SessionFactory sessionFactory){
        super.setSessionFactory(sessionFactory);
    }

    public void insertNotes(Notes notes) {
        getHibernateTemplate().save(notes);
    }

    public void deleteNotes(Notes notes) {
        getHibernateTemplate().delete(notes);
    }

    public List<Notes> selectNotesList(Goods goods) {
        List<Notes> list= (List<Notes>) getHibernateTemplate().find("from Notes where goods.gid=?",new Object[]{goods.getGid()});
        return list;
    }

    public Notes selectNotesById(int id) {
        return getHibernateTemplate().load(Notes.class,id);
    }
}
