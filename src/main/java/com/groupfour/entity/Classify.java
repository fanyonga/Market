package com.groupfour.entity;

/**
 * 商品分类表
 */
public class Classify {

    private int cid;//分类id

    private String category;//商品类别

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Classify classify = (Classify) o;

        if (cid != classify.cid) return false;
        if (category != null ? !category.equals(classify.category) : classify.category != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = cid;
        result = 31 * result + (category != null ? category.hashCode() : 0);
        return result;
    }
}
