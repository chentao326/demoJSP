<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2022/4/24
  Time: 14:16
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
    <base href="<%=basePath%>">
    <title>register</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
</head>
<body>
<form name="form1" action="UserServlet.do?method=register" method="post">
    <table width="200" border="1">
        <tr>
            <td colspan="2">注册窗口</td>
        </tr>
        <tr>
            <td>用户名</td>
            <td><input type="text" name="username" size="10"></td>
        </tr>
        <tr>
            <td>密码</td>
            <td><input type="password" name="password1" size="10"></td>
        </tr>
        <tr>
            <td>确认密码</td>
            <td><input type="password" name="password2" size="10"></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><input type="text" name="email" size="10"></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" name="submit" value="登录"> <a
                    href="login.jsp">返回</a></td>
        </tr>
    </table>
</form>

</body>
</html>
