package com.rce.ssm.model.goods;


public class GoodsEvaluate {

  private long goodsEvaluateId;
  private long orderId;
  private long goodId;
  private long userId;
  private long goodsScore;
  private long serviceScore;
  private long logisticsScore;
  private String content;
  private java.sql.Timestamp createTime;


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


  public long getGoodId() {
    return goodId;
  }

  public void setGoodId(long goodId) {
    this.goodId = goodId;
  }


  public long getUserId() {
    return userId;
  }

  public void setUserId(long userId) {
    this.userId = userId;
  }


  public long getGoodsScore() {
    return goodsScore;
  }

  public void setGoodsScore(long goodsScore) {
    this.goodsScore = goodsScore;
  }


  public long getServiceScore() {
    return serviceScore;
  }

  public void setServiceScore(long serviceScore) {
    this.serviceScore = serviceScore;
  }


  public long getLogisticsScore() {
    return logisticsScore;
  }

  public void setLogisticsScore(long logisticsScore) {
    this.logisticsScore = logisticsScore;
  }


  public String getContent() {
    return content;
  }

  public void setContent(String content) {
    this.content = content;
  }


  public java.sql.Timestamp getCreateTime() {
    return createTime;
  }

  public void setCreateTime(java.sql.Timestamp createTime) {
    this.createTime = createTime;
  }

}
