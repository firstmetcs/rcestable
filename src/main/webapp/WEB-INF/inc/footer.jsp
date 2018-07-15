<%--
  Created by IntelliJ IDEA.
  User: Firstmetcs
  Date: 2018/7/12/0012
  Time: 16:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/inc/taglibs.jsp" %>

<!--尾部-->
<div class="layui-main" style="margin-top: 30px">
    <div class="layui-row foot">
        <div class="layui-col-md3 foot">
            <i class="layui-icon layui-icon-util foot-icon"></i>
            <a href="">预约维修服务</a>
            <span class="layui-seperator">|</span>
        </div>

        <div class="layui-col-md3 foot">
            <i class="layui-icon layui-icon-rmb foot-icon"></i>
            <a href="">7天无理由退货</a>
            <span class="layui-seperator">|</span>
        </div>
        <div class="layui-col-md3 foot">
            <i class="layui-icon layui-icon-tips foot-icon"></i>
            <a href="">15天免费换货</a>
            <span class="layui-seperator">|</span>
        </div>
        <div class="layui-col-md3 foot">
            <i class="layui-icon layui-icon-diamond foot-icon"></i>
            <a href="">满200元包邮</a>
        </div>
    </div>
    <div class="foot-hr">
        <hr class="foot-hr">
    </div>
    <div class="foot-link">
        <div class="layui-row">
            <div class="layui-col-md9">
                <div class="layui-row">
                    <div class="layui-col-md2">
                        <h2>帮助中心</h2>
                        <li><a href="">账户管理</a></li>
                        <li><a href="${pageContext.request.contextPath}/index/shoppingTip">购物指南</a></li>
                    </div>
                    <div class="layui-col-md2">
                        <h2>服务支持</h2>
                        <li><a href="">售后政策</a></li>
                        <li><a href="">自助服务</a></li>
                    </div>
                    <div class="layui-col-md2">
                        <h2>线下门店</h2>
                        <li><a href="">服务网点</a></li>
                        <li><a href="">授权体验店</a></li>
                    </div>
                    <div class="layui-col-md2">
                        <h2>关于RCE</h2>
                        <li><a href="">了解RCE</a></li>
                        <li><a href="">加入RCE</a></li>
                    </div>
                    <div class="layui-col-md2">
                        <h2>关注我们</h2>
                        <li><a href="">新浪微博</a></li>
                        <li><a href="">联系我们</a></li>
                    </div>
                    <div class="layui-col-md2">
                        <h2>特色服务</h2>
                        <li><a href="">优惠券</a></li>
                        <li><a href="">防伪查询</a></li>
                    </div>
                </div>
            </div>
            <div class="layui-col-md3">
                <div class="foot-contact">
                    <h2 class="foot-tel">400-100-8754</h2>
                    <p>周一至周日8:00-18:00</p>
                    <button class="layui-btn layui-btn-primary">
                        <i class="layui-icon layui-icon-dialogue"></i>
                        <span>联系客服</span>
                    </button>
                </div>
            </div>
        </div>
    </div>
    <br>
    <div class="copyright">
        This Page <a href="http://www.firstmetcs.com/" target="_blank" title="Firstmetcs">Firstmetcs</a> - Part of <a
            href="http://www.firstmetcs.com/" title="Firstmetcs" target="_blank">Firstmetcs</a> | <a target="_blank"
                                                                                                     href="http://www.miitbeian.gov.cn/"
                                                                                                     rel="nofollow">鲁ICP备16003126号</a>
        <div style="width:300px;margin:0 auto; padding:20px 0;">
            <a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=61909002000037"
               style="display:inline-block;text-decoration:none;height:20px;line-height:20px;"><img
                    src="${path}/img/备案图标.png" style="float:left;"/>
                <p style="float:left;height:20px;line-height:20px;margin: 0px 0px 0px 5px; color:#939393;">陕公网安备
                    61909002000037号</p></a>
        </div>
    </div>
    <br>
</div>