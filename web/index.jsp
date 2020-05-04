<%--
  Created by IntelliJ IDEA.
  User: Young
  Date: 2020-04-14
  Time: 15:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" language="java" import="java.util.*" %>
<!DOCTYPE html>
<html>
  <head>
    <title>index.jsp</title>
  </head>
  <body>
    <table width="673" height="301" border="1">
      <tr>
        <td height="87" colspan="2" valign="bottom">
          <!--包含menu.jsp到index.jsp-->
          <%@include file="menu.jsp"%>
        </td>
      </tr>
      <tr>
        <td width="231" valign="top">
          <!--包含login.jsp到index.jsp-->
          <%@include file="login.jsp"%>
        </td>
      </tr>
    </table>
  </body>
</html>
