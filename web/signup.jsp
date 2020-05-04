<%--
  Created by IntelliJ IDEA.
  User: Young
  Date: 2020-05-03
  Time: 22:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <script type="text/javascript">

        function checkpw() {
            var check = false;
            var password = document.getElementById("password").value;
            var pwdc = document.getElementById("pwAgain").value;
            if (password != pwdc) {
                document.getElementById("warning").innerHTML = "  两次输入密码不一致";
                check = false;
            } else {
                document.getElementById("warining").innerHTML = "  √";
                check = true;
            }
            return check;
        }

    </script>
</head>
<center>
<body>


<h1>注册</h1><br>
<form action="SignUpServlet" method="post" name="myform" >
    <table>
        <tr>
            <td>邮箱地址:</td>
            <td><input name="emailAddr" type="text"></td>
        </tr>
        <tr>
            <td>用户名:</td>
            <td><input name="userName" type="text"></td>
        </tr>
        <tr>
            <td>密码:</td>
            <td><input id="password" name="password" type="password" ></td>
        </tr>
        <tr>
            <td>确认密码:</td>
            <td><input id="pwAgain"name="pwAgain" type="password" onchange="checkpw()">
               <span id="warning" ></span></td><!-- 使用onchange事件当输入框改变执行，onblur为什么？-->
        </tr>
        <tr>
            <td>男:<input name="gender" type="radio"value="M" checked="checked"></td>
            <td>女:<input name="gender" type="radio"value="F"></td>
        </tr>
        <tr>
            <td><input type="submit" name="signup" id="button" value="注册" ></td>
        </tr>
    </table>

</form>
</body>
</center>
</html>
