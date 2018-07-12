package com.rce.ssm.model.goods;

import java.util.Date;

public class GoodsEvaluateList {
    private Integer goodsevaluateid;
    private Integer userid;
    private Integer goodsid;
    private String username;
    private String goodsname;
    private Float goodsscore;
    private Float servicescore;
    private Float logisticsscore;
    private String content;
    private Date createtime;

    @Override
    public String toString() {
        return "GoodsEvaluateList{" +
                "goodsevaluateid=" + goodsevaluateid +
                ", userid=" + userid +
                ", goodsid=" + goodsid +
                ", username='" + username + '\'' +
                ", goodsname='" + goodsname + '\'' +
                ", goodsscore=" + goodsscore +
                ", servicescore=" + servicescore +
                ", logisticsscore=" + logisticsscore +
                ", content='" + content + '\'' +
                ", createtime=" + createtime +
                '}';
    }

    public Integer getGoodsevaluateid() {
        return goodsevaluateid;
    }

    public void setGoodsevaluateid(Integer goodsevaluateid) {
        this.goodsevaluateid = goodsevaluateid;
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


    public String getGoodsname() {
        return goodsname;
    }

    public void setGoodsname(String goodsname) {
        this.goodsname = goodsname;
    }

    public Float getGoodsscore() {
        return goodsscore;
    }

    public void setGoodsscore(Float goodsscore) {
        this.goodsscore = goodsscore;
    }

    public Float getServicescore() {
        return servicescore;
    }

    public void setServicescore(Float servicescore) {
        this.servicescore = servicescore;
    }

    public Float getLogisticsscore() {
        return logisticsscore;
    }

    public void setLogisticsscore(Float logisticsscore) {
        this.logisticsscore = logisticsscore;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }
}
