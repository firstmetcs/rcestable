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

    private String invoiceclient;//发票抬头

    private String orderremarks;//订单备注

    private Integer isdeliver;//是否发送快递

    private Integer isappraises;//是否评价

    private Integer realtotalmoney;//真实付款

    private String expresscompany;//快递公司

    private String expresscode;//快递单号

    private Date receivetime;//收货时间

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

    public String getInvoiceclient() {
        return invoiceclient;
    }

    public void setInvoiceclient(String invoiceclient) {
        this.invoiceclient = invoiceclient;
    }

    public Date getReceivetime() {
        return receivetime;
    }

    public void setReceivetime(Date receivetime) {
        this.receivetime = receivetime;
    }

    public String getInvoicelient() {
        return invoiceclient;
    }

    public void setInvoicelient(String invoiceclient) {
        this.invoiceclient = invoiceclient;
    }

    public String getOrderremarks() {
        return orderremarks;
    }

    public void setOrderremarks(String orderremarks) {
        this.orderremarks = orderremarks;
    }

    public Integer getRealtotalmoney() {
        return realtotalmoney;
    }

    public void setRealtotalmoney(Integer realtotalmoney) {
        this.realtotalmoney = realtotalmoney;
    }

    public String getExpresscompany() {
        return expresscompany;
    }

    public void setExpresscompany(String expresscompany) {
        this.expresscompany = expresscompany;
    }

    public String getExpresscode() {
        return expresscode;
    }

    public void setExpresscode(String expresscode) {
        this.expresscode = expresscode;
    }
}