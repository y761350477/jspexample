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
    <title>request传递数组的使用</title>
</head>
<body>
<%
    String userName = request.getParameter("userName");
    String skills = "";
    // 获取属性值为数组的信息 - Created by YC.
    String[] skillArr = request.getParameterValues("skills");
    if (skillArr != null && skillArr.length > 0) {
        for (String skill : skillArr) {
            skills = skills + skill + " ";
        }
    }

    request.setAttribute("userName", userName);
    request.setAttribute("skills", skills);
%>
<jsp:forward page="jsp_request_using_welcome.jsp"></jsp:forward>
</body>
</html>
