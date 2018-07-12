package com.rce.ssm.model;

public class OrderGoodsList {

    private Integer godorderid;//

    private Integer userid;

    private Integer goodsid;

    private Integer goodsattrid;

    private String username;

    private String goodsimage;

    private String goodsname;

    private String goodsversion;

    private Integer goodsnums;//购买数量

    private Long  goodsprice;

    private String goodstotaldesc;

    private String goodscolor;

    public Integer getGodorderid() {
        return godorderid;
    }

    public void setGodorderid(Integer godorderid) {
        this.godorderid = godorderid;
    }
    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getGoodsid() {
        return goodsid;
    }

    public void setGoodsid(Integer goodsid) {
        this.goodsid = goodsid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getGoodsimage() {
        return goodsimage;
    }

    public void setGoodsimage(String goodsimage) {
        this.goodsimage = goodsimage;
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

    public String getGoodstotaldesc() {
        return goodstotaldesc;
    }

    public void setGoodstotaldesc(String goodstotaldesc) {
        this.goodstotaldesc = goodstotaldesc;
    }
    public String getGoodscolor() {
        return goodscolor;
    }

    public void setGoodscolor(String goodscolor) {
        this.goodscolor = goodscolor;
    }

    public Integer getGoodsattrid() {
        return goodsattrid;
    }

    public void setGoodsattrid(Integer goodsattrid) {
        this.goodsattrid = goodsattrid;
    }
}
