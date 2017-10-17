<%--
  Created by IntelliJ IDEA.
  User: YC
  Date: 2017/10/7
  Time: 19:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%-- 修改默认的缓冲区大小（默认的缓冲区大小是8kb） --%>
<%@ page buffer="10kb" %>
<html>
<head>
    <title>out对象的使用</title>
</head>
<body>
    <%
        out.println("YC");
        out.print("YangChen");
        out.println("<br/>");
//        out.flush();
//        out.clearBuffer();
//        out.clear();
        out.println("获取当前缓冲区大小：" + out.getBufferSize());
        out.println("<br/>");
        out.println("当前缓冲区剩余字节数目：" + out.getRemaining());
    %>
</body>
</html>
