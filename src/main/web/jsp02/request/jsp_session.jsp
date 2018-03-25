<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Session的使用</title>
</head>
<body>
session的唯一标识符: <%= session.getId()%><br>
session的创建时间: <%= new Date(session.getCreationTime()).toString()%><br>
session的最后访问时间: <%= new Date(session.getLastAccessedTime()).toString()%><br>
session的失效时间: <%= session.getMaxInactiveInterval()%><br>
</body>
</html>
