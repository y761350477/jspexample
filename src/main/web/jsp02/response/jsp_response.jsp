<%@ page import="java.util.Date" %><%--
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
//    response.setHeader("Cache-Control", "no-cache");
    // 比对发现setHeader和setIntHeader的区别在于第二参数的类型不同 - Created by YC.
//    response.setHeader("refresh", "2;URL=http://www.jikexueyuan.com");
    response.setHeader("refresh", "2");
//    response.setIntHeader("Refresh", 2);
    out.print("date is" + new Date().toString() + "<br>");
    // 重定向 - Created by YC.
//    response.sendRedirect("http://www.jikexueyuan.com");
%>
</body>
</html>
