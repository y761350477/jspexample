<%--
  Created by IntelliJ IDEA.
  User: YC
  Date: 2017/10/7
  Time: 19:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>request对象简介</title>
</head>
<body>
<form action="" method="post">
    <input type="text" name="userName"/>
    <input type="submit" value="提交">
</form>
    请求的方法名：<%= request.getMethod()%><br/>
    请求的资源：<%= request.getRequestURI()%><br/>
    请求使用的协议：<%= request.getProtocol()%><br/>
    请求的服务器IP：<%= request.getServerName()%><br/>
    请求的服务器端口：<%= request.getServerPort()%><br/>
    客户端的IP地址：<%= request.getRemoteAddr()%><br/>
    客户端的主机名：<%= request.getRemoteHost()%><br/>
    表单提交的值：<%= request.getParameter("userName")%>
</body>
</html>
