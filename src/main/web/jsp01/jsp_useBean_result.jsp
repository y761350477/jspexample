<%--
  Created by IntelliJ IDEA.
  User: YC
  Date: 2017/10/3
  Time: 21:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆之后的信息展示</title>
</head>
<body>
<jsp:useBean id="user" class="bean.User"/>
<jsp:setProperty name="user" property="name"/>
<jsp:setProperty name="user" property="age"/>

<jsp:getProperty name="user" property="name"/>
<jsp:getProperty name="user" property="age"/>

</body>
</html>
