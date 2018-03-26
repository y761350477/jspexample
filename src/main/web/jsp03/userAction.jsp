<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>userAction</title>
</head>
<body>
<%--if标签的使用:--%>
<%--test为参数为表达式, 返回值为boolean类型, 决定是否显示内容--%>
<%--var作用是保存test结果--%>

<%--应用情景: 根据条件结果来决定显示登录还是注册信息--%>
<c:if test="${name == null}" var="value">
    if为true的情况
</c:if>
${value}
<br>
<c:if test="${name == 'YangChen'}" var="value">
    if为false的情况
</c:if>
<br>
<%
    String test_name = "YangChen";
    session.setAttribute("test_name", test_name);
%>
<%--choose标签的使用--%>
<%--when相当于case--%>
<%--otherwise相当于default--%>
<%--如果两个when条件一样的情况下只显示第一个when的信息--%>
<c:choose>
    <c:when test="${test_name == 'YangChen'}">
        when条件满足的情况1
    </c:when>
    <c:when test="${test_name == 'YangChen'}">
        when条件满足的情况2
    </c:when>
    <c:otherwise>
        otherwise满足的情况
    </c:otherwise>
</c:choose>
<br>
<%--out--%>
<c:out value="out标签的使用"></c:out>
<%--set用法--%>
<%--set的标签体内赋值, 省略value--%>
<c:set var="nihs">
    set的使用
</c:set>
<%--不省略value的用法--%>
<c:set value="set的使用1" var="nihs1"/>
${nihs}
${nihs1}
<%--remove的用法--%>
<c:remove var="nihs1"/>
${nihs1}

<%
    List list = new ArrayList<>();
    list.add("zhongfucheng");
    list.add("ouzicheng");
    list.add("xiaoming");

    session.setAttribute("list", list);
%>
<br>
<%--step指定每隔几个数量循环一次, 例如设置为2, 则1、3、5...--%>
<%--begin信息指定起始位置, 从0开始--%>
<%--end信息指定起始位置, <=到指定位置的数据--%>
<%--varStatus储存被遍历对象的信息, 包含属性为first、last、count、index、current--%>
<c:forEach var="list" items="${list}" varStatus="varStatus">
    ${list}<br>
    遍历过多少对象: ${varStatus.count}<br>
    是否为第一个: ${varStatus.first}<br>
    当前被迭代的对象: ${varStatus.current}<br>
    是否为最后一个: ${varStatus.last}<br>
    下标: ${varStatus.index}<br>
    ${varStatus.step}<br>
</c:forEach>
<br>
<%
    Map map = new HashMap();
    map.put("1", "zhongfucheng");
    map.put("2", "xiaohong");
    map.put("3", "xiaoming");

    session.setAttribute("map", map);
%>

<c:forEach var="me" items="${map}" step="2" varStatus="varStatus">

    ${me.key}  ${me.value}<br>

</c:forEach>
<br>
<%--类似splite, 处理分割后和forEach标签用法一样--%>
<c:forTokens items="zhongfucheng,ouzicheng,xiaoming,xiaohong" var="name" delims=",">
    ${name}<br>
</c:forTokens>
<br>
<h4><c:out value="import实例"/></h4>
<hr/>
<h4><c:out value="绝对路径引用的实例"/></h4>
<%--使用绝对路径导入百度首页，
    导入时使用<c:catch></c:catch>捕获异常。
 --%>
<c:catch var="error1">
    <c:import url="http://wwww.baidu.com" charEncoding="utf-8"/>
</c:catch>
${error1}
<hr/>
</body>
</html>
