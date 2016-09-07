package com.groupfour.dao;

import com.groupfour.entity.Classify;

/**
 *分类数据操作接口
 */
public interface ClassifyDao {

    /**
     * 插入一个新的分类
     *
     * @param classify
     * @return
     */
    boolean insertClassify(Classify classify);

    /**
     * 删除一个已有的分类
     * @param classify
     * @return
     */
    boolean deleteClassify(Classify classify);

    /**
     * 修改一个分类的名称
     */
    boolean updateClassifyOfCategory(Classify classify);

    /**
     * 根据分类id来获取分类信息
     *
     * @param id
     * @return
     */
    Classify selectClassifyById(int id);
}
