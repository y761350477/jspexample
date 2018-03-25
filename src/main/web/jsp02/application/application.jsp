<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>application的使用</title>
</head>
<body>
服务器信息: <%=application.getServerInfo()%>
<%-- 取决于web.xml中<display-name>配置 --%>
应用名称: <%=application.getServletContextName()%>
主机名称: <%=application.getVirtualServerName()%>
</body>
</html>
