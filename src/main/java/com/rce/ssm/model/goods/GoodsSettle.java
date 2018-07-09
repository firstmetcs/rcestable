package com.rce.ssm.model.goods;

import java.util.Date;

public class GoodsSettle {

  private long settleId;
  private long goodsId;
  private long settleNum;
  private double settleMoney;
  private Date settleTime;
  private String goodsType;
  private String goodsName;


  public long getSettleId() {
    return settleId;
  }

  public void setSettleId(long settleId) {
    this.settleId = settleId;
  }


  public long getGoodsId() {
    return goodsId;
  }

  public void setGoodsId(long goodsId) {
    this.goodsId = goodsId;
  }


  public long getSettleNum() {
    return settleNum;
  }

  public void setSettleNum(long settleNum) {
    this.settleNum = settleNum;
  }


  public double getSettleMoney() {
    return settleMoney;
  }

  public void setSettleMoney(double settleMoney) {
    this.settleMoney = settleMoney;
  }


  public Date getSettleTime() {
    return settleTime;
  }

  public void setSettleTime(Date settleTime) {
    this.settleTime = settleTime;
  }


  public String getGoodsType() {
    return goodsType;
  }

  public void setGoodsType(String goodsType) {
    this.goodsType = goodsType;
  }


  public String getGoodsName() {
    return goodsName;
  }

  public void setGoodsName(String goodsName) {
    this.goodsName = goodsName;
  }

}
