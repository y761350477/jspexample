<%--
  Created by IntelliJ IDEA.
  User: YC
  Date: 2017/10/5
  Time: 15:12
  To change this template use File | Settings | File Templates.
--%>
<%--
  动作指令forward.
  动作指令和编译指令区别:
    编译指令是通知Servlet引擎的处理消息，它只在JSP程序被转化为Servlet的过程中起作用;
    动作指令是客户端在请求时期动态被执行的。也就是说，每次客户端请求时，都可能重新被执行一次;
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
</head>
<body>
    首页
    <br/>
    <%
      String name = request.getParameter("user");
      String pw = request.getParameter("password");
      out.print(name);
      out.print("<br/>");
      out.print(pw);
    %>
</body>
</html>
