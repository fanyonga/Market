package com.groupfour.entity;

import java.sql.Time;

/**
 * 商品表
 */
public class Goods {

    private int gid;//商品id
    private Classify classify;//分类
    private User user;//用户
    private String category;//商品类别
    private String gname;//商品名称
    private Integer parea;//价格区域
    private Double price;//商品价格
    private Integer con;//成色
    private Double area;//所在区域
    private Integer picture;//商品图片
    private String content;//联系人
    private String phone;//联系电话
    private String descript;//商品描述
    private Time rtime;//发布时间
    private Integer stock;//商品存量
    private String state;//状态
    private Time ctime;//创建时间

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

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getGname() {
        return gname;
    }

    public void setGname(String gname) {
        this.gname = gname;
    }

    public Integer getParea() {
        return parea;
    }

    public void setParea(Integer parea) {
        this.parea = parea;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getCon() {
        return con;
    }

    public void setCon(Integer con) {
        this.con = con;
    }

    public Double getArea() {
        return area;
    }

    public void setArea(Double area) {
        this.area = area;
    }

    public Integer getPicture() {
        return picture;
    }

    public void setPicture(Integer picture) {
        this.picture = picture;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getDescript() {
        return descript;
    }

    public void setDescript(String descript) {
        this.descript = descript;
    }

    public Time getRtime() {
        return rtime;
    }

    public void setRtime(Time rtime) {
        this.rtime = rtime;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public Time getCtime() {
        return ctime;
    }

    public void setCtime(Time ctime) {
        this.ctime = ctime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Goods goods = (Goods) o;

        if (gid != goods.gid) return false;
        if (category != null ? !category.equals(goods.category) : goods.category != null) return false;
        if (gname != null ? !gname.equals(goods.gname) : goods.gname != null) return false;
        if (parea != null ? !parea.equals(goods.parea) : goods.parea != null) return false;
        if (price != null ? !price.equals(goods.price) : goods.price != null) return false;
        if (con != null ? !con.equals(goods.con) : goods.con != null) return false;
        if (area != null ? !area.equals(goods.area) : goods.area != null) return false;
        if (picture != null ? !picture.equals(goods.picture) : goods.picture != null) return false;
        if (content != null ? !content.equals(goods.content) : goods.content != null) return false;
        if (phone != null ? !phone.equals(goods.phone) : goods.phone != null) return false;
        if (descript != null ? !descript.equals(goods.descript) : goods.descript != null) return false;
        if (rtime != null ? !rtime.equals(goods.rtime) : goods.rtime != null) return false;
        if (stock != null ? !stock.equals(goods.stock) : goods.stock != null) return false;
        if (state != null ? !state.equals(goods.state) : goods.state != null) return false;
        if (ctime != null ? !ctime.equals(goods.ctime) : goods.ctime != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = gid;
        result = 31 * result + (category != null ? category.hashCode() : 0);
        result = 31 * result + (gname != null ? gname.hashCode() : 0);
        result = 31 * result + (parea != null ? parea.hashCode() : 0);
        result = 31 * result + (price != null ? price.hashCode() : 0);
        result = 31 * result + (con != null ? con.hashCode() : 0);
        result = 31 * result + (area != null ? area.hashCode() : 0);
        result = 31 * result + (picture != null ? picture.hashCode() : 0);
        result = 31 * result + (content != null ? content.hashCode() : 0);
        result = 31 * result + (phone != null ? phone.hashCode() : 0);
        result = 31 * result + (descript != null ? descript.hashCode() : 0);
        result = 31 * result + (rtime != null ? rtime.hashCode() : 0);
        result = 31 * result + (stock != null ? stock.hashCode() : 0);
        result = 31 * result + (state != null ? state.hashCode() : 0);
        result = 31 * result + (ctime != null ? ctime.hashCode() : 0);
        return result;
    }
}
