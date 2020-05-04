<%--
  Created by IntelliJ IDEA.
  User: Young
  Date: 2020-04-19
  Time: 17:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="GB2312" language="java" %>
<html>
<head>
    <title>用户注册</title>
</head>
<body>
<center>
    <div>
        <h1>用户注册</h1>
        <form id="form1" name="form1"method="post">
            <table width="199",border="0">
                <tr>
                    <td>邮箱地址:</td>
                    <td><input name="emailAddr" type="text" size="12"></td>
                </tr>
                <tr>
                    <td>用户名：</td>
                    <td><input name="userName" type="text" size="12"></td>
                </tr>
                <tr>
                    <td>密码：</td>
                    <td><input name="password" type="password" size="12"></td>
                </tr>
                <tr>
                    <td>确认密码:</td>
                    <td><input name="AgainPassword" type="password" size="12"></td>
                </tr>
                <tr>
                    <td><input type="submit" name="button" id="button" value="注册"/></td>
                </tr>
            </table>
        </form>
    </div>

</center>

</body>
</html>
