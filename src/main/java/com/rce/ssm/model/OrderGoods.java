package com.rce.ssm.model;

public class OrderGoods {
    private Integer godorderid;

    private Integer orderid;

    private Integer goodsid;

    private Integer goodsnums;

    private Long goodsprice;

    private Integer goodsattrid;

    public Integer getGodorderid() {
        return godorderid;
    }

    public void setGodorderid(Integer godorderid) {
        this.godorderid = godorderid;
    }

    public Integer getOrderid() {
        return orderid;
    }

    public void setOrderid(Integer orderid) {
        this.orderid = orderid;
    }

    public Integer getGoodsid() {
        return goodsid;
    }

    public void setGoodsid(Integer goodsid) {
        this.goodsid = goodsid;
    }

    public Integer getGoodsnums() {
        return goodsnums;
    }

    public void setGoodsnums(Integer goodsnums) {
        this.goodsnums = goodsnums;
    }

    public Long getGoodsprice() {
        return goodsprice;
    }

    public void setGoodsprice(Long goodsprice) {
        this.goodsprice = goodsprice;
    }

    public Integer getGoodsattrid() {
        return goodsattrid;
    }

    public void setGoodsattrid(Integer goodsattrid) {
        this.goodsattrid = goodsattrid;
    }
}