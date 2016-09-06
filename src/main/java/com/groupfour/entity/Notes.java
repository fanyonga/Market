package com.groupfour.entity;

import java.sql.Time;

/**
 * 留言表
 */
public class Notes {

    private int nid;//留言id
    public  User user;//用户
    public Goods goods;//商品
    private String title;//标题
    private String content;//内容
    private Integer readperson;//查看人
    private Integer state;//状态，0-未查看，1-已查看
    private Time time;//留言时间

    public int getNid() {
        return nid;
    }

    public void setNid(int nid) {
        this.nid = nid;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Goods getGoods() {
        return goods;
    }

    public void setGoods(Goods goods) {
        this.goods = goods;
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

    public Integer getReadperson() {
        return readperson;
    }

    public void setReadperson(Integer readperson) {
        this.readperson = readperson;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Time getTime() {
        return time;
    }

    public void setTime(Time time) {
        this.time = time;
    }

}
