package com.groupfour.entity;

import java.util.Date;

/**
 * 公告类
 */
public class Notice {

    private int noid;//公告id
    private User user;//用户
    private String title;//标题
    private String content;//内容
    private Integer state;//状态 0-有效，1-置顶，2-过期
    private Date time;//创建时间

    public int getNoid() {
        return noid;
    }

    public void setNoid(int noid) {
        this.noid = noid;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }
}
