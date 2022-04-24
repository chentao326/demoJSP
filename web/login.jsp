<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2022/4/24
  Time: 14:12
  To change this template use File | Settings | File Templates.
--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <base href="<%=basePath%>">
    <title>login</title>
</head>
<body>

<div id="login_frame">


<%--    <form name="form1" action="UserServlet.do?method=login" method="post">--%>

<%--        <p><label class="label_input">用户名</label><input type="text" name="username" id="username" class="text_field"/></p>--%>
<%--        <p><label class="label_input">密码</label><input type="password" name="password" id="password" class="text_field"/></p>--%>

<%--        <div id="login_control">--%>
<%--            <input type="submit" name="submit" id="btn_login" value="登录" onclick="login();"/>--%>
<%--            <a href="register.jsp">注册新用户</a>--%>
<%--        </div>--%>
<%--    </form>--%>
<%--</div>--%>

<form name="form1" action="UserServlet.do?method=login" method="post">
<%--<form name="form1" action="login" method="post">--%>
    <table width="200" border="1">
        <tr>
            <td colspan="2">登录窗口</td>
        </tr>
        <tr>
            <td>用户名</td>
            <td><input type="text" name="username" size="10"></td>
        </tr>
        <tr>
            <td>密码</td>
            <td><input type="password" name="password" size="10"></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" name="submit" value="登录"> <a
                    href="register.jsp">注册新用户</a></td>
        </tr>
    </table>
</form>
</body>
</html>
