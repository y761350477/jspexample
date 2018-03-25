<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
<form action="do_login.jsp" method="post">
    userName: <input type="text" name="userName" id="userName">
    password: <input type="password" name="password" id="password">
    <input type="submit" value="submit">
    <input type="reset" name="reset" id="reset">
</form>
<br>
<%-- 仅在首次访问时返回true --%>
session的isNew()方法: <%=session.isNew()%>
</body>
</html>
