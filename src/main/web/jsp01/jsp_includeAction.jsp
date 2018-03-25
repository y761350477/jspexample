<%--
  Created by IntelliJ IDEA.
  User: YC
  Date: 2017/10/5
  Time: 19:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="jsp_includeAction_header.html"></jsp:include>
<jsp:include page="jsp_includeAction_body.jsp"></jsp:include>
<%!
    String name = "YangChen";
%>
<%
    out.print(name);
%>
</html>
