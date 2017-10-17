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
  forward带参传递的方法;
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>forward携带参数的使用</title>
</head>
<body>
    <jsp:forward page="jsp_forward_page.jsp">
        <jsp:param name="user" value="name"/>
        <jsp:param name="password" value="pw"/>
    </jsp:forward>
    <span>
        forward重定向是不会执行这行代码的,需要特别注意一下!
    </span>
</body>
</html>
