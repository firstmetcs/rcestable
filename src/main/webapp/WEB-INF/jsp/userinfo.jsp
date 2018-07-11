<%--
  Created by IntelliJ IDEA.
  User: Firstmetcs
  Date: 2018/6/12/0012
  Time: 11:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>userinfo</title>
</head>
<body>
Cookieid:${sessionScope.indexuser.getCookieid()}
<a href="/rcestore/user/logout">退出</a>
<a href="/rcestore/index.jsp">主页</a>
<form action="${path}/user/update" method="post" >
    <table cellspacing="0" cellpadding="0" id="profilelist">
        <tbody>
        <tr>
            <th>用户名</th>
            <td>${sessionScope.indexuser.loginname}</td>
            <td>&nbsp;</td>
        </tr>
        <tr id="tr_realname">
            <th id="th_realname">真实姓名</th>
            <td id="td_realname">
                <input type="text" name="username" id="username" value="${sessionScope.indexuser.username}"  />
                <div class="rq mtn" id="showerror_realname"></div><p class="d"></p></td>
        </tr>
        <%--<!-- <tr id="tr_realname">--%>
          <%--<th id="th_realname">头像</th>--%>
          <%--<td id="td_realname">--%>
          <%--<input type="hidden" name="img" id="img" value="${sessionScope.indexuser.img}"  />--%>
          <%--<img src="<%=request.getContextPath()%>/file/${sessionScope.indexuser.img}" width="80px;" id="img1" />--%>
           <%--<input type="file"  id="file" name="file" onchange="ajaxFileUpload('file')"/>--%>
		  <%--</td>--%>
         <%--</tr>  -->--%>
        <tr id="tr_gender">
            <th id="th_gender">性别</th>
            <td id="td_gender">
                <select name="usersex" id="usersex" tabindex="1">
                    <option value="0"  <c:if test="${sessionScope.indexuser.usersex==0}">selected="selected"</c:if> >保密</option>
                    <option value="1" <c:if test="${sessionScope.indexuser.usersex==1}">selected="selected"</c:if>>男</option>
                    <option value="2" <c:if test="${sessionScope.indexuser.usersex==2}">selected="selected"</c:if>>女</option></select>
                <div id="showerror_gender"></div><p class="d"></p></td>
        </tr>
        <tr id="tr_email">
            <th id="th_email">邮箱</th>
            <td id="td_email">
                <input name="useremail" id="useremail" value="${sessionScope.indexuser.useremail}"  readonly="readonly"/>
                <div class="rq mtn" id="showerror_email"></div><p class="d"></p></td>
        </tr>
        <tr id="tr_mobile">
            <th id="th_mobile">手机号</th>
            <td id="td_mobile">
                <input name="userphone" id="userphone" value="${sessionScope.indexuser.userphone}" />
                <div class="rq mtn" id="showerror_mobile"></div></td>
        </tr>
        <tr>
            <th>&nbsp;</th>
            <td colspan="2">
                <button type="submit" name="profilesubmitbtn" id="profilesubmitbtn" value="true" class="pn pnc"><strong>保存</strong></button>
                <span id="submit_result" class="rq" style="display: none;">提示信息</span>
            </td>
        </tr>
        </tbody>
    </table>
</form>
</body>
</html>
