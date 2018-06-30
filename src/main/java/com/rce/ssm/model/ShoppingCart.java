package com.rce.ssm.model;

import java.math.BigDecimal;

public class ShoppingCart {
    private Integer shoppingcartid;

    private Integer userid;

    private Integer ischeck;

    private Integer goodsattrid;

    private Integer goodsid;

    private Integer goodscount;

    private String goodsname;

    private String goodsversion;

    private String goodscolor;

    private BigDecimal goodsprice;

    private Integer goodsstock;

    private BigDecimal termprice;

    public Integer getShoppingcartid() {
        return shoppingcartid;
    }

    public void setShoppingcartid(Integer shoppingcartid) {
        this.shoppingcartid = shoppingcartid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getIscheck() {
        return ischeck;
    }

    public void setIscheck(Integer ischeck) {
        this.ischeck = ischeck;
    }

    public Integer getGoodsattrid() {
        return goodsattrid;
    }

    public void setGoodsattrid(Integer goodsattrid) {
        this.goodsattrid = goodsattrid;
    }

    public Integer getGoodsid() {
        return goodsid;
    }

    public void setGoodsid(Integer goodsid) {
        this.goodsid = goodsid;
    }

    public Integer getGoodscount() {
        return goodscount;
    }

    public void setGoodscount(Integer goodscount) {
        this.goodscount = goodscount;
    }

    public String getGoodsname() {
        return goodsname;
    }

    public void setGoodsname(String goodsname) {
        this.goodsname = goodsname;
    }

    public String getGoodsversion() {
        return goodsversion;
    }

    public void setGoodsversion(String goodsversion) {
        this.goodsversion = goodsversion;
    }

    public String getGoodscolor() {
        return goodscolor;
    }

    public void setGoodscolor(String goodscolor) {
        this.goodscolor = goodscolor;
    }

    public BigDecimal getGoodsprice() {
        return goodsprice;
    }

    public void setGoodsprice(BigDecimal goodsprice) {
        this.goodsprice = goodsprice;
    }

    public Integer getGoodsstock() {
        return goodsstock;
    }

    public void setGoodsstock(Integer goodsstock) {
        this.goodsstock = goodsstock;
    }

    public BigDecimal getTermprice() {
        return termprice;
    }

    public void setTermprice(BigDecimal termprice) {
        this.termprice = termprice;
    }
}