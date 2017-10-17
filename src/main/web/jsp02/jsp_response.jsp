<%--
  Created by IntelliJ IDEA.
  User: YC
  Date: 2017/10/7
  Time: 20:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Response对象的使用</title>
</head>
<body>
    <%
        response.setHeader("Cache-Control", "no-cache");
//        response.setIntHeader("Refresh", 2);
        out.println("date is " + new java.util.Date().toString() + "<br/>");
    %>
</body>
</html>
