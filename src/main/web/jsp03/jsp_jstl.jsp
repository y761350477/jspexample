<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>JSTL的学习使用</title>
</head>
<body>
<%--core标签库是JSTL的核心标签库，实现了最基本的功能：流程控制、迭代输出等操作！--%>
<%--core标签库的前缀一般是c--%>
<%
    session.setAttribute("name", "YangChen");
%>

<%--<c:out/>标签支持标签体，default属性上的数据可以写在标签体中--%>
<c:out value="${name}" escapeXml="true">您要的数据找不着</c:out>

<c:out value="${name}" default="您要的数据找不着" escapeXml="true"/>
<br>
<%--set标签--%>
set标签: <c:set var="name" value="YangChen" scope="page"/>
${name}
<br>
set标签另一种表达:
<c:set var="name" scope="page">
    YangChen
</c:set>
${name}
<br>

<%--由于下面变量需要做加法运算，所以要定义出来，不然服务器是不知道我的变量是Integer类型的--%>
<%
    Integer sessionCount = 0;
    Integer applicationCount = 0;
%>
<c:set var="sessionCount" value="${sessionCount+1}" scope="session"/>
<c:set var="applicationCount" value="${applicationCount+1}" scope="application"/>

sessionCount: ${sessionCount}<br>
applicationCount: ${applicationCount}<br>

<%--创建出JavaBean对象，设置为session范围的属性--%>
<jsp:useBean id="person" class="bean.User" scope="session"/>

<%--获取到person对象，设置age属性的值为32--%>
<c:set target="${person}" property="age" value="32"/>

${person.age}
<br>

<%--删除session属性--%>
<c:remove var="person" scope="session"></c:remove>
${person.age==null?"存在session的person对象被删除了！":"我还在呢！"}
<br>

<%--创建出JavaBean对象，设置为session范围的属性--%>
<c:catch var="message">

    <%--target属性只能是EL表达式，现在我是字符串，获取不到对象，肯定会抛出异常的！--%>
    <c:set target="person" property="age" value="32"/>

</c:catch>

${message}

<%--如果带过来的名字是zhongfucheng，那么可以登陆--%>
<c:if test="${param.name=='zhongfucheng'}">
    用户名：<input type="text" name="username"><br>
    密码：<input type="password" name="password"><br>
    <input type="submit" value="登陆">
</c:if>

<%--如果带过来的名字是ouzicheng，那么就是注册--%>
<c:if test="${param.name=='ouzicheng'}">
    用户名：<input type="text" name="username"><br>
    密码：<input type="password" name="password"><br>
    <input type="submit" value="注册">
</c:if>

<c:choose>
    <c:when test="${param.name=='zhongfucheng'}">
        你好啊，zhongfucheng
    </c:when>
    <c:when test="${param.name=='ouzicheng'}">
        你好啊，ouzicheng
    </c:when>
    <c:otherwise>
        你是谁啊？别随便过来！
    </c:otherwise>
</c:choose>

<br>
<c:url value="jsp_el.jsp" var="url">
    <c:param name="name" value="中国！">
    </c:param>
</c:url>

<a href="${url}">我经过了URL地址重写！</a>
</body>
</html>
