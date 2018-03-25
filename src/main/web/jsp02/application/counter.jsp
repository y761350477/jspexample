<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>counter</title>
</head>
<body>
<%
    Object object = application.getAttribute("counter");
    if (object == null) {
        application.setAttribute("counter", new Integer(1));
        out.print("该页面被访问了1次<br>");
    } else {
        int counterValue = Integer.parseInt(object.toString());
        counterValue++;
        out.print("该页面被访问了" + counterValue + "次<br>");
        application.setAttribute("counter", counterValue);
    }
%>
</body>
</html>
