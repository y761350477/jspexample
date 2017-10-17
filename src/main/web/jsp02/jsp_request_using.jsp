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
    <title>request对象的使用</title>
</head>
<body>
<form action="jsp_request_using_do.jsp" method="post">
    用户名：<input type="text" name="userName"/><br/>
    技能：
    <input type="checkbox" name="skills" value="java"/>java
    <input type="checkbox" name="skills" value="python"/>python
    <input type="checkbox" name="skills" value="ruby"/>ruby
    <input type="checkbox" name="skills" value="golang"/>golang
    <br/>
    <input type="submit" value="提交">
    <input type="reset" value="重置">
</form>
</body>
</html>
