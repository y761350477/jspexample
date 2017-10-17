<%--
  Created by IntelliJ IDEA.
  User: YC
  Date: 2017/10/5
  Time: 14:58
  To change this template use File | Settings | File Templates.
--%>
<%--
  编译指令include.
  静态包含指令:文件可以是html/jsp/txt文件
  注意：
  同一类型的参数不能定义两次!
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>include编译指令的使用</title>
</head>
<body>
    <%@ include file="jsp_include_hander.txt"%>
    <br/>
    <%@ include file="jsp_include_footer.jsp"%>
</body>
</html>
