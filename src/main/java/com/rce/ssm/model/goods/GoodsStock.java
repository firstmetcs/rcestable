package com.rce.ssm.model.goods;


import java.sql.Time;
import java.util.Date;

public class GoodsStock {

  private long goodsStockId;
  private String goodsType;
  private String goodsName;
  private String goodsRom;
  private String goodsRam;
  private String goodsColor;
  private String goodsSize;
  private long stockNum;
  private Date stockTime;

  public Date getStockTime() {
    return stockTime;
  }

  public void setStockTime(Date stockTime) {
    this.stockTime = stockTime;
  }

  public long getGoodsStockId() {
    return goodsStockId;
  }

  public void setGoodsStockId(long goodsStockId) {
    this.goodsStockId = goodsStockId;
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


  public String getGoodsColor() {
    return goodsColor;
  }

  public void setGoodsColor(String goodsColor) {
    this.goodsColor = goodsColor;
  }


  public String getGoodsSize() {
    return goodsSize;
  }

  public void setGoodsSize(String goodsSize) {
    this.goodsSize = goodsSize;
  }


  public long getStockNum() {
    return stockNum;
  }

  public void setStockNum(long stockNum) {
    this.stockNum = stockNum;
  }

}
