<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="bean.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>El表达式的使用</title>
</head>
<body>
<%--语法: ${标识符} (找不到对象返回"", 而不是NUL)--%>
<%
    List list = new ArrayList();
    list.add(1);
    list.add(2);
    session.setAttribute("list", list);

    List list1 = new ArrayList();
    list1.add("a");
    list1.add("b");
    request.setAttribute("list", list1);
    /*EL表达式语句在执行时，会调用pageContext.findAttribute方法，用标识符为关键字，
    分别从page、request、session、Application四个域中查找相应的对象，找到则返回相应的对象，找不到则返回“”（不是null）。
    对于同名的对象, 优先级page > request > session > Application*/
%>
${pageContext.findAttribute("list")}
list数组的大小: ${list.size()}<br>
list获取下标的get()方式: ${list.get(0)}<br>
list获取下标的[]方式: ${list["0"]}<br>

<%--语法：${运算表达式}--%>
<%
List list2 = null;
//List list2 = new ArrayList();
//list2.add("a");
//list2.add("b");

request.setAttribute("list1", list2);
%>
<c:if test="${!empty(list)}">
    <c:forEach var="str" items="${list}">
        ${str }
    </c:forEach>
</c:if>

<c:if test="${empty(list)}">
    对不起，没有您想看的数据
</c:if>

<%--二元表达式：${user!=null?user.name:""}--%>
<%
    session.setAttribute("user", new User("vvv"));
%>
${user==null?"对不起，您还没有登录":user.name }<br>

<%--回显数据的用法--%>
<%
    User user = new User();
    user.setSex("male");
    request.setAttribute("user", user);
%>
<input type="radio" name="gender" ${user.sex=='male'?'checked':''}>男
<input type="radio" name="gender" ${user.sex=='female'?'checked':''}>女


</body>
</html>
