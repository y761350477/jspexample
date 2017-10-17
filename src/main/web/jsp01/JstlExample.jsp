<%--
  Created by IntelliJ IDEA.
  User: YC
  Date: 2017/10/3
  Time: 9:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Jstl的使用</title>
</head>
<body>
    <c:forEach var="result" items="${userList}">
        ${result.name}
        ${result.age}
    </c:forEach>

    <c:forEach var="pro" items="${stringList}">
        ${pro}
    </c:forEach>
    <c:out value="User.name" escapeXml="true" default="不知道其作用是干什么用的"></c:out><br/>
    <c:out value="${user2.name}"></c:out>
    ${user2.name}

    <c:set var="salary" scope="session" value="${2000*2}"/>
    <c:out value="${salary}"/>

    <c:remove var="salary"/>
    <p>删除 salary 变量后的值: <c:out value="${salary}"/></p>

    <c:catch var="catchException">
        <% int x = 5 / 0;%>
    </c:catch>

    <c:if test="${catchException != null}">
        <p>异常为 : ${catchException} <br/>
            发生了异常: ${catchException.message}</p>
    </c:if>

    <c:set var="salary" scope="session" value="${2000*2}"/>
    <p>你的工资为 : <c:out value="${salary}"/></p>
    <c:choose>
        <c:when test="${salary <= 0}">
            太惨了。
        </c:when>
        <c:when test="${salary > 1000}">
            不错的薪水，还能生活。
        </c:when>
        <c:otherwise>
            什么都没有。
        </c:otherwise>
    </c:choose>

    <c:import var="data" url="http://www.runoob.com"/>
    <c:out value="${data}"/>

    <h1>&lt;c:url&gt实例 Demo</h1>
    <a href="<c:url value="http://www.runoob.com"/>">
        这个链接通过 &lt;c:url&gt; 标签生成。
    </a>
</body>
</html>
