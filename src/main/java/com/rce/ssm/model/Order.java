package com.rce.ssm.model;

import java.math.BigDecimal;
import java.util.Date;

public class Order {
    private Integer orderid;

    private String orderno;

    private Integer userid;

    private Integer addressid;

    private Integer orderstatus;

    private BigDecimal totalmoney;

    private BigDecimal delivermoney;

    private Integer paytype;

    private Integer ispay;

    private Integer delivertype;

    private Integer deliverytime;

    private String invoiceclient;

    private String orderremarks;

    private Integer isappraises;

    private Date creattime;

    private Integer isrefund;

    private String refundremark;

    private BigDecimal backmoney;

    private BigDecimal needpay;

    private String tradeno;

    private Integer settlementid;

    private BigDecimal realtotalmoney;

    private Date receivetime;

    private String expresscompany;

    private String expresscode;

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
        this.orderno = orderno == null ? null : orderno.trim();
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getAddressid() {
        return addressid;
    }

    public void setAddressid(Integer addressid) {
        this.addressid = addressid;
    }

    public Integer getOrderstatus() {
        return orderstatus;
    }

    public void setOrderstatus(Integer orderstatus) {
        this.orderstatus = orderstatus;
    }

    public BigDecimal getTotalmoney() {
        return totalmoney;
    }

    public void setTotalmoney(BigDecimal totalmoney) {
        this.totalmoney = totalmoney;
    }

    public BigDecimal getDelivermoney() {
        return delivermoney;
    }

    public void setDelivermoney(BigDecimal delivermoney) {
        this.delivermoney = delivermoney;
    }

    public Integer getPaytype() {
        return paytype;
    }

    public void setPaytype(Integer paytype) {
        this.paytype = paytype;
    }

    public Integer getIspay() {
        return ispay;
    }

    public void setIspay(Integer ispay) {
        this.ispay = ispay;
    }

    public Integer getDelivertype() {
        return delivertype;
    }

    public void setDelivertype(Integer delivertype) {
        this.delivertype = delivertype;
    }

    public Integer getDeliverytime() {
        return deliverytime;
    }

    public void setDeliverytime(Integer deliverytime) {
        this.deliverytime = deliverytime;
    }

    public String getInvoiceclient() {
        return invoiceclient;
    }

    public void setInvoiceclient(String invoiceclient) {
        this.invoiceclient = invoiceclient == null ? null : invoiceclient.trim();
    }

    public String getOrderremarks() {
        return orderremarks;
    }

    public void setOrderremarks(String orderremarks) {
        this.orderremarks = orderremarks == null ? null : orderremarks.trim();
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

    public Integer getIsrefund() {
        return isrefund;
    }

    public void setIsrefund(Integer isrefund) {
        this.isrefund = isrefund;
    }

    public String getRefundremark() {
        return refundremark;
    }

    public void setRefundremark(String refundremark) {
        this.refundremark = refundremark == null ? null : refundremark.trim();
    }

    public BigDecimal getBackmoney() {
        return backmoney;
    }

    public void setBackmoney(BigDecimal backmoney) {
        this.backmoney = backmoney;
    }

    public BigDecimal getNeedpay() {
        return needpay;
    }

    public void setNeedpay(BigDecimal needpay) {
        this.needpay = needpay;
    }

    public String getTradeno() {
        return tradeno;
    }

    public void setTradeno(String tradeno) {
        this.tradeno = tradeno == null ? null : tradeno.trim();
    }

    public Integer getSettlementid() {
        return settlementid;
    }

    public void setSettlementid(Integer settlementid) {
        this.settlementid = settlementid;
    }

    public BigDecimal getRealtotalmoney() {
        return realtotalmoney;
    }

    public void setRealtotalmoney(BigDecimal realtotalmoney) {
        this.realtotalmoney = realtotalmoney;
    }

    public Date getReceivetime() {
        return receivetime;
    }

    public void setReceivetime(Date receivetime) {
        this.receivetime = receivetime;
    }

    public String getExpresscompany() {
        return expresscompany;
    }

    public void setExpresscompany(String expresscompany) {
        this.expresscompany = expresscompany == null ? null : expresscompany.trim();
    }

    public String getExpresscode() {
        return expresscode;
    }

    public void setExpresscode(String expresscode) {
        this.expresscode = expresscode == null ? null : expresscode.trim();
    }
}