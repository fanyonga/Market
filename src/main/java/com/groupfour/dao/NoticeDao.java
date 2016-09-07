package com.groupfour.dao;

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
     */
    void insertNotice(Notice notice);

    /**
     * 更新一个已有的公告信息（可以让它过期无效）
     *
     * @param notice
     */
    void updateNotice(Notice notice);

    /**
     * 获得公告列表，并排序
     *
     * @param option 0-选择所有公告，1-选择所有有效的公告
     * @return
     */
    List<Notice> selectNoticeList(int option);

    /**
     * 获得置顶的公告信息
     *
     * @return
     */
    Notice selectTopNotice();

    /**
     * 根据留言id来获取留言信息
     *
     * @param id
     * @return
     */
    Notice selectNoticeById(int id);
}
