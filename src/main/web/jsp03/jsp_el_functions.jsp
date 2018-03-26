<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>EL方法库的使用</title>
</head>
<body>
<%
    List list = Arrays.asList("1", "2", "3");
    request.setAttribute("list", list);
%>

<%--fn:toLowerCase--%>
fn:toLowerCase -> ${fn:toLowerCase("AAA") }<br>
fn:toUpperCase -> ${fn:toUpperCase("aaa") }<br>
fn:trim -> ${fn:trim("AAA     ")}<br>
fn:length -> ${fn:length("AAA")} OR ${fn:length(list)}<br>
fn:split -> ${fn:split("aaa.bbb.ccc", ".")[1]}<br>
fn:indexOf -> ${fn:indexOf("www.it315.org", "t3")}<br>
fn:join -> ${fn:join(fn:split("www.it315.org", "."), "-")}<br>
fn:startsWith -> ${fn:startsWith("abc", "a")}<br>
fn:endsWith -> ${fn:endsWith("abc", "c")}<br>
fn:replace -> ${fn:replace("abc", "b", "d")}<br>
fn:substring -> ${fn:substring("abcdefg", "2", "3")}<br>
fn:substringAfter -> ${fn:substringAfter("www.it315.org", ".")}<br>
fn:substringBefore -> ${fn:substringBefore("www.it315.org", ".")}<br>
fn:secapeXml -> ${fn:escapeXml("<a href='#'>链接</a>")}<br>
fn:contains -> ${fn:contains("abc", "b")}<br>
fn:containsIgnoreCase -> ${fn:containsIgnoreCase("abc", "B")}<br>



</body>
</html>
