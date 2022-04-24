<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2022/4/24
  Time: 14:15
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
    <title>welcome</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
</head>
<body>
<table width="100%">
    <tr>
        <td><img src="images/logo4.png"></td>
        <td><img src="images/logo2.png" height="90"></td>
    </tr>
    <tr>
        <td colspan="2">
            <hr>
        </td>
    </tr>
    <tr>
        <td>
            <table>
                <tr>
                    <td><a href="welcome.jsp">Main</a></td>
                </tr>
                <tr>
                    <td><a href="menu1.jsp">Menu1</a></td>
                </tr>
                <tr>
                    <td><a href="menu2.jsp">Menu2</a></td>
                </tr>
                <tr>
                    <td><a href="menu3.jsp">Menu3</a></td>
                </tr>
                <tr>
                    <td><a href="menu4.jsp">Menu4</a></td>
                </tr>
                <tr>
                    <td><a href="menu5.jsp">Menu5</a></td>
                </tr>
                <tr>
                    <td><a href="menu6.jsp">Menu6</a></td>
                </tr>
                <tr>
                    <td><a href="menu7.jsp">Menu7</a></td>
                </tr>
                <tr>
                    <td><a href="menu8.jsp">Menu8</a></td>
                </tr>
            </table>
        </td>
        <td>
            <form name="form1" action="UserServlet.do?method=logout" method="post">
                <table width="200" border="1">
                    <tr>
                        <td colspan="2">登录成功</td>
                    </tr>
                    <tr>
                        <td>欢迎你，</td>
                        <%--				<td>123</td>--%>
                        <td><%=(String) session.getAttribute("username")%></td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="submit" name="submit" value="退出"></td>
                    </tr>
                </table>
            </form>
        </td>
    </tr>
</table>
</body>
</html>
