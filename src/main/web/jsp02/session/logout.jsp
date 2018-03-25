<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注销</title>
</head>
<body>
<%
    session.invalidate();
    response.setHeader("refresh", "2;URL=welcome.jsp");
%>
</body>
</html>
