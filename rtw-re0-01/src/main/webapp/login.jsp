<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/28
  Time: 20:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String basePath = request.getScheme() + "://" + request.getServerName() + ":" +
        request.getServerPort() + request.getContextPath() + "/";%>
<html>
<head>
    <title>xxx系统</title>
    <base href="<%=basePath%>">
    <link rel="shortcut icon" href="#" />
    <link href="css/login.css" rel="stylesheet" rev="stylesheet" type="text/css" media="all" />
</head>
<body>
<div class="login-aside">
    <div id="o-box-up"></div>
    <div id="o-box-down"  style="table-layout:fixed;">
        <form class="registerform"action="rtw/login.do">
            <div class="fm-item">
                <label class="form-label">MISS系统登陆：</label>
                <input type="text" maxlength="100" name="username" id="username" class="i-text" ajaxurl="demo/valid.jsp"  datatype="s6-18" errormsg="用户名至少6个字符,最多18个字符！"  >
                <div class="ui-form-explain"></div>
            </div>

            <div class="fm-item">
                <label class="form-label">登陆密码：</label>
                <input type="password" maxlength="100"name="password" id="password" class="i-text" datatype="*6-16" nullmsg="请设置密码！" errormsg="密码范围在6~16位之间！">
                <div class="ui-form-explain"></div>
            </div>
            <div class="fm-item">
                <label class="form-label"></label>
                <input type="submit" tabindex="4" id="send-btn" class="btn-login">
                <div class="ui-form-explain"></div>
            </div>
        </form>
    </div>
</div>
</body>
</html>
