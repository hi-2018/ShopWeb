<%--
  Created by IntelliJ IDEA.
  User: Young
  Date: 2020-04-19
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" language="java" import="java.util.*" %>
<%
    session.invalidate();
    response.sendRedirect("index.jsp");
%>