package com.rce.ssm.model.goods;


public class GoodsReturn {

  private long goodsReturnId;
  private long orderId;
  private long userId;
  private long goodsAttrId;
  private String postscript;
  private long status;


  public long getGoodsReturnId() {
    return goodsReturnId;
  }

  public void setGoodsReturnId(long goodsReturnId) {
    this.goodsReturnId = goodsReturnId;
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
