<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/6/27 0027
  Time: 下午 1:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        request.setAttribute("a", "test_a");
        request.getSession().setAttribute("b", "test_b");
        request.getServletContext().setAttribute("c", "test_c");
    %>

    requestAttr: <%=request.getAttribute("a")%><br/>
    elRequestAttr: ${a}<br/>
    elSessionAttr: ${b}<br/>
    elContextAttr: ${applicationScope.c}<br/>
    Hello World！
</body>
</html>
