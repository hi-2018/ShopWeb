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
        function checkPw() {
            var checkPw = false;
            var password = document.getElementById("password").value;
            var pwdc = document.getElementById("pwAgain").value;
            if (password != pwdc) {
                document.getElementById("pwWarning").innerHTML = "  两次输入密码不一致";
                checkPw = false;
            } else {
                document.getElementById("pwWarining").innerHTML = "  √";
                checkPw = true;
            }
            return checkPw;
        }
        function checkE() {
            var emailA=document.getElementById("emailAddr").value;
            var reg=/^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
            var checkE=false;
            if (reg.test(emailA)) {
                document.getElementById("emailWarining").innerHTML = "  √";
                checkE = true;
            }else {
                document.getElementById("emailWarning").innerHTML = "  邮箱格式错误";
                checkE = false;
            }
            return checkE;
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
            <td><input name="emailAddr" id="emailAddr" type="text" onchange="checkE()">
                <span id="emailWarning" ></span>
            </td>
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
            <td><input id="pwAgain"name="pwAgain" type="password" onchange="checkPw()">
               <span id="pwWarning" ></span><!-- 使用onchange事件当输入框改变执行，onblur为什么？-->
            </td>
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
