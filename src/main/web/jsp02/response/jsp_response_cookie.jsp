<%--
  Created by IntelliJ IDEA.
  User: YC
  Date: 2017/10/7
  Time: 20:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Response对象的Cookie使用</title>
</head>
<body>
    <%
        Cookie cookie = new Cookie("YangChen", "123456");
        cookie.setMaxAge(3600);
        response.addCookie(cookie);
    %>
</body>
</html>
