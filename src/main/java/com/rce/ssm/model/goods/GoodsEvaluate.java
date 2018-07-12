package com.rce.ssm.model.goods;


import java.util.Date;

public class GoodsEvaluate {

  private long goodsEvaluateId;
  private long orderId;
  private long goodsId;
  private long userId;
  private int goodsScore;
  private int serviceScore;
  private int logisticsScore;
  private String content;
  private Date createTime;


  public long getGoodsEvaluateId() {
    return goodsEvaluateId;
  }

  public void setGoodsEvaluateId(long goodsEvaluateId) {
    this.goodsEvaluateId = goodsEvaluateId;
  }


  public long getOrderId() {
    return orderId;
  }

  public void setOrderId(long orderId) {
    this.orderId = orderId;
  }

  public int getGoodsScore() {
    return goodsScore;
  }

  public void setGoodsScore(int goodsScore) {
    this.goodsScore = goodsScore;
  }

  public int getServiceScore() {
    return serviceScore;
  }

  public void setServiceScore(int serviceScore) {
    this.serviceScore = serviceScore;
  }

  public int getLogisticsScore() {
    return logisticsScore;
  }

  public void setLogisticsScore(int logisticsScore) {
    this.logisticsScore = logisticsScore;
  }

  public long getGoodId() {
    return goodsId;
  }

  public void setGoodId(long goodId) {
    this.goodsId = goodId;
  }


  public long getUserId() {
    return userId;
  }

  public void setUserId(long userId) {
    this.userId = userId;
  }


  public String getContent() {
    return content;
  }

  public void setContent(String content) {
    this.content = content;
  }


  public Date getCreateTime() {
    return createTime;
  }

  public void setCreateTime(Date createTime) {
    this.createTime = createTime;
  }

}
