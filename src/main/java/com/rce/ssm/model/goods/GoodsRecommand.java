package com.rce.ssm.model.goods;


public class GoodsRecommand {

  private long goodsRecId;
  private long userId;
  private String goodsIdStr;


  public long getGoodsRecId() {
    return goodsRecId;
  }

  public void setGoodsRecId(long goodsRecId) {
    this.goodsRecId = goodsRecId;
  }


  public long getUserId() {
    return userId;
  }

  public void setUserId(long userId) {
    this.userId = userId;
  }


  public String getGoodsIdStr() {
    return goodsIdStr;
  }

  public void setGoodsIdStr(String goodsIdStr) {
    this.goodsIdStr = goodsIdStr;
  }

}
