package com.rce.ssm.model.goods;


public class GoodsAttributes {

  private long goodsId;
  private long goodsAttrId;
  private String goodsVersion;
  private String goodsNetType;
  private String goodsRom;
  private String goodsRam;
  private String goodsSize;
  private String goodsColor;
  private double goodsPrice;
  private String goodsResRatio;
  private  String goodsImage;
  private long goodsStock;

  public long getGoodsStock() {
    return goodsStock;
  }

  public void setGoodsStock(long goodsStock) {
    this.goodsStock = goodsStock;
  }

  public String getGoodsImage() {
    return goodsImage;
  }

  public void setGoodsImage(String goodsImage) {
    this.goodsImage = goodsImage;
  }

  public long getGoodsId() {
    return goodsId;
  }

  public void setGoodsId(long goodsId) {
    this.goodsId = goodsId;
  }


  public long getGoodsAttrId() {
    return goodsAttrId;
  }

  public void setGoodsAttrId(long goodsAttrId) {
    this.goodsAttrId = goodsAttrId;
  }


  public String getGoodsVersion() {
    return goodsVersion;
  }

  public void setGoodsVersion(String goodsVersion) {
    this.goodsVersion = goodsVersion;
  }


  public String getGoodsNetType() {
    return goodsNetType;
  }

  public void setGoodsNetType(String goodsNetType) {
    this.goodsNetType = goodsNetType;
  }


  public String getGoodsRom() {
    return goodsRom;
  }

  public void setGoodsRom(String goodsRom) {
    this.goodsRom = goodsRom;
  }


  public String getGoodsRam() {
    return goodsRam;
  }

  public void setGoodsRam(String goodsRam) {
    this.goodsRam = goodsRam;
  }


  public String getGoodsSize() {
    return goodsSize;
  }

  public void setGoodsSize(String goodsSize) {
    this.goodsSize = goodsSize;
  }


  public String getGoodsColor() {
    return goodsColor;
  }

  public void setGoodsColor(String goodsColor) {
    this.goodsColor = goodsColor;
  }


  public double getGoodsPrice() {
    return goodsPrice;
  }

  public void setGoodsPrice(double goodsPrice) {
    this.goodsPrice = goodsPrice;
  }


  public String getGoodsResRatio() {
    return goodsResRatio;
  }

  public void setGoodsResRatio(String goodsResRatio) {
    this.goodsResRatio = goodsResRatio;
  }

}
