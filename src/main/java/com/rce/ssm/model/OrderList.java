package com.rce.ssm.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class OrderList implements Serializable {
    private Integer orderid;//订单id

    private String orderno;//订单编号

    private Integer orderstatus;//订单状态

    private Long totalmoney;//总金额

    private Long delivermoney;//快递费用

    private Integer paytype;//支付方式

    private Integer isdeliver;//是否发送快递

    private Integer isappraises;//是否评价

    private Date creattime;//创建时间

    private List<OrderGoodsList> orderGoodsList;//订单商品关系列表

    public Integer getOrderid() {
        return orderid;
    }

    public void setOrderid(Integer orderid) {
        this.orderid = orderid;
    }

    public String getOrderno() {
        return orderno;
    }

    public void setOrderno(String orderno) {
        this.orderno = orderno;
    }

    public Integer getOrderstatus() { return orderstatus; }

    public void setOrderstatus(Integer orderstatus) {
        this.orderstatus = orderstatus;
    }

    public Long getTotalmoney() {
        return totalmoney;
    }

    public void setTotalmoney(Long totalmoney) {
        this.totalmoney = totalmoney;
    }

    public Long getDelivermoney() {
        return delivermoney;
    }

    public void setDelivermoney(Long delivermoney) {
        this.delivermoney = delivermoney;
    }

    public Integer getPaytype() {
        return paytype;
    }

    public void setPaytype(Integer paytype) {
        this.paytype = paytype;
    }

    public Integer getIsdeliver() {
        return isdeliver;
    }

    public void setIsdeliver(Integer isdeliver) {
        this.isdeliver = isdeliver;
    }

    public Integer getIsappraises() {
        return isappraises;
    }

    public void setIsappraises(Integer isappraises) {
        this.isappraises = isappraises;
    }

    public Date getCreattime() {
        return creattime;
    }

    public void setCreattime(Date creattime) {
        this.creattime = creattime;
    }

    public List<OrderGoodsList> getOrderGoodsList() {
        return orderGoodsList;
    }

    public void setOrderGoodsList(List<OrderGoodsList> orderGoodsList) {
        this.orderGoodsList = orderGoodsList;
    }

    @Override
    public String toString() {
        return "OrderList{" +
                "orderid=" + orderid +
                ", orderno='" + orderno + '\'' +
                ", orderstatus=" + orderstatus +
                ", totalmoney=" + totalmoney +
                ", delivermoney=" + delivermoney +
                ", paytype=" + paytype +
                ", isdeliver=" + isdeliver +
                ", isappraises=" + isappraises +
                ", creattime=" + creattime +
                ", orderGoodsListList=" + orderGoodsList +
                '}';
    }
}