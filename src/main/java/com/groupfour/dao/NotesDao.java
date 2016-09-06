package com.groupfour.dao;

import com.groupfour.entity.Goods;
import com.groupfour.entity.Notes;
import com.groupfour.entity.User;

import java.util.List;

/**
 *留言数据操作接口
 */
public interface NotesDao {

    /**
     * 插入一个新的留言
     *
     * @param notes
     * @return
     */
    boolean insertNotes(Notes notes);

    /**
     * 删除一个已有的用户
     *
     * @param notes
     * @return
     */
    boolean deleteNotes(Notes notes);

//不允许用户更新留言
//    /**
//     * 更新用户信息
//     *
//     * @param user
//     * @return
//     */
//    boolean updateUser(User user);

    /**
     * 根据商品来获得留言列表
     *
     * @return
     */
    List<Notes> selectNotesList(Goods goods);
}
