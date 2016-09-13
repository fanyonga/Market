package com.groupfour.entity;

import java.util.Date;

/**
 * 商品表
 */
public class Goods {

    private int gid;//商品id
    private Classify classify;//分类
    private User user;//用户
    private String gname;//商品名称
    private Double price;//商品价格
    private String picture;//商品图片地址
    private String descript;//商品描述
    private Date rtime;//发布时间
    private Integer stock;//商品存量
    private Integer state;//状态 0-发布中，1-待审核，2-已过期
    private Date ctime;//创建时间
    private Integer saled_num;//售出数量

    public int getGid() {
        return gid;
    }

    public void setGid(int gid) {
        this.gid = gid;
    }

    public Classify getClassify() {
        return classify;
    }

    public void setClassify(Classify classify) {
        this.classify = classify;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getGname() {
        return gname;
    }

    public void setGname(String gname) {
        this.gname = gname;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public String getDescript() {
        return descript;
    }

    public void setDescript(String descript) {
        this.descript = descript;
    }

    public Date getRtime() {
        return rtime;
    }

    public void setRtime(Date rtime) {
        this.rtime = rtime;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Date getCtime() {
        return ctime;
    }

    public void setCtime(Date ctime) {
        this.ctime = ctime;
    }

    public Integer getSaled_num() {
        return saled_num;
    }

    public void setSaled_num(Integer saled_num) {
        this.saled_num = saled_num;
    }
}
