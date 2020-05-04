<%--
  Created by IntelliJ IDEA.
  User: Young
  Date: 2020-04-19
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="utf-8" language="java" import="java.util.*" %>
<%
   request.setCharacterEncoding("utf-8");
   String eAddr=(String)session.getAttribute("eAddr");
   String message=(String)session.getAttribute("message");
%>
<html>
    <head>
        <title>用户登录</title>
    </head>
    <center>
    <body>
        <%if(eAddr!=""&&eAddr!=null){%>
        欢迎光临，<%=eAddr%><br><br>
        <a href="LoginServlet?action=logout">退出登录</a>

        <%}else{%>
        <%if (message!=null&&message!=""){%>
        <script type="text/javascript" title="提示">
            alert("<%=message%>");
        </script>
        <%session.setAttribute("message", "");
            }%>
        <h1>用户登录</h1><br/>
        <form action="LoginServlet" method="post">
            <table width="200" border="0">
                <tr>
                    <td>邮箱地址:</td>
                    <td><input name="emailAddr" type="text" size="12"></td>
                </tr>
                <tr>
                    <td>密码:</td>
                    <td><input name="password" type="text" size="12"></td>
                </tr>
                <tr>
                    <td><input type="submit" name="button" id="login" value="登录"/></td>
                    <td><a href="signup.jsp">注册</a></td>
                </tr>
            </table>
        </form>
      <%} %>
    </body>
    </center>

</html>

