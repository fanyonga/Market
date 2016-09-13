package com.groupfour.entity;

import java.util.Date;

/**
 * 商品订单类
 */
public class Orders {

    private int oid;//订单id
    private Goods goods;//商品
    private User user;//购买用户
    private Integer number;//数量
    private Integer ostate;//订单状态：0-新建，1-发货，2-收货，3-完成，4-取消
    private Date time;//最后修改时间
    private String note;//备注

    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public Goods getGoods() {
        return goods;
    }

    public void setGoods(Goods goods) {
        this.goods = goods;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public Integer getOstate() {
        return ostate;
    }

    public void setOstate(Integer ostate) {
        this.ostate = ostate;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }
}
