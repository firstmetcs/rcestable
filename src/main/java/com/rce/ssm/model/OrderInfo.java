package com.rce.ssm.model;

import java.util.Date;
import java.util.List;

public class OrderInfo {

    private Integer orderid;//订单id

    private String orderno;//订单编号

    private Integer orderstatus;//订单状态

    private Long totalmoney;//总金额

    private Long delivermoney;//快递费用

    private Integer paytype;//支付方式

    private Integer isdeliver;//是否发送快递

    private Integer isappraises;//是否评价

    private Date creattime;//创建时间

    private List<OrderGoodsList> orderGoodsList;//订单商品关系列表
}
