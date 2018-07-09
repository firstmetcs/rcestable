package com.rce.ssm.model.goods;


public class GoodsRepair {

  private long goodsRepairId;
  private long orderId;
  private long userId;
  private long goodsAttrId;
  private String postscript;
  private long status;


  public long getGoodsRepairId() {
    return goodsRepairId;
  }

  public void setGoodsRepairId(long goodsRepairId) {
    this.goodsRepairId = goodsRepairId;
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
