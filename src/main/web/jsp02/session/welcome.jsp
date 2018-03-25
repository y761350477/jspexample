<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>欢迎页面!</title>
</head>
<body>
<%
    if (session.getAttribute("userName") != null) {
%>
欢迎:<%=session.getAttribute("userName")%>
<a href="logout.jsp">注销</a><br>
<%} else {%>
请先登陆
<a href="login.jsp">登录</a>
<%} %>
<%
    if (session.isNew()) {
%>
<br>
欢迎新用户!
<%
} else {
%>
欢迎老用户!
<%}%>
</body>
</html>
