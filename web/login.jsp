<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2022/4/24
  Time: 14:12
  To change this template use File | Settings | File Templates.
--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <style>
        #poster {
            background: url("WEB-INF/images/eva.jpg") no-repeat;
            background-position: center;
            height: 100%;
            width: 100%;
            background-size: cover;
            position: fixed;
        }

        body {
            margin: 0px;
        }

        .login-container {
            border-radius: 15px;
            background-clip: padding-box;
            margin: 90px auto;
            width: 350px;
            padding: 35px 35px 15px 35px;
            background: #fff;
            border: 1px solid #eaeaea;
            box-shadow: 0 0 25px #cac6c6;
        }

        .login_title {
            margin: 0px auto 30px auto;
            text-align: center;
            color: #505458;
        }

        .login-a {
            font-size: 0.7px;
            text-decoration: none;
            color: grey;
        }

        table {
            margin: 0 auto;
        }


    </style>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <base href="<%=basePath%>">
    <title>login</title>
</head>

<body id="poster">

<div>
    <form name="form1" action="UserServlet.do?method=login" method="post" class="login-container" label-position="left"
          label-width="0px">
        <h3 class="login_title">系统登录</h3>
        <table>
            <tr>
                <td>
                    <input type="text" name="username" placeholder="请输入用户名"/>
                    <br/>
                </td>
            </tr>

            <tr>
                <td>
                    <input type="password" name="password" placeholder="请输入密码"/>
                    <br/>
                </td>
            </tr>

            <tr>
                <td>
                    <input style="width: 100%;background: #505458;border: none" type="submit" name="submit" value="登录">

                </td>

            </tr>
            <tr>
                <td>
                    <a class="login-a" href="register.jsp">注册新用户</a>
                </td>
            </tr>
        </table>
    </form>
</div>


</body>
</html>
