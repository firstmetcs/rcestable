package com.rce.ssm.model.goods;


public class GoodsAfterSale {

  private long afterSaleId;
  private long orderId;
  private long userId;
  private long goodsAttrId;
  private String postscript;
  private long status;
  private long num;
  private String reason;
  private String afterSaleType;

  public long getAfterSaleId() {
    return afterSaleId;
  }

  public void setAfterSaleId(long afterSaleId) {
    this.afterSaleId = afterSaleId;
  }

  public long getNum() {
    return num;
  }

  public void setNum(long num) {
    this.num = num;
  }

  public String getReason() {
    return reason;
  }

  public void setReason(String reason) {
    this.reason = reason;
  }

  public String getAfterSaleType() {
    return afterSaleType;
  }

  public void setAfterSaleType(String afterSaleType) {
    this.afterSaleType = afterSaleType;
  }

  public long getOrderId() {
    return orderId;
  }

  public void setOrderId(long orderId) {
    this.orderId = orderId;
  }


  public long getUserId() {
    return userId;
  }

  public void setUserId(long userId) {
    this.userId = userId;
  }


  public long getGoodsAttrId() {
    return goodsAttrId;
  }

  public void setGoodsAttrId(long goodsAttrId) {
    this.goodsAttrId = goodsAttrId;
  }


  public String getPostscript() {
    return postscript;
  }

  public void setPostscript(String postscript) {
    this.postscript = postscript;
  }


  public long getStatus() {
    return status;
  }

  public void setStatus(long status) {
    this.status = status;
  }

}
