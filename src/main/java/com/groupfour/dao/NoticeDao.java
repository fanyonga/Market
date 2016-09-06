package com.groupfour.dao;

import com.groupfour.entity.Notes;
import com.groupfour.entity.Notice;

import java.util.List;

/**
 * 公告数据操作接口
 */
public interface NoticeDao {

    /**
     * 插入一个新的公告
     *
     * @param notice
     * @return
     */
    boolean insertNotice(Notice notice);

    /**
     * 更新一个已有的公告信息（可以让它过期无效）
     *
     * @param notes
     * @return
     */
    boolean updateNotice(Notes notes);

    /**
     * 获得公告列表，并排序
     *
     * @param option 0-选择所有公告，1-选择所有有效的公告
     * @return
     */
    List<Notes> selectNotesList(int option);

    /**
     * 获得置顶的公告信息
     *
     * @return
     */
    Notes getTopNotice();
}
