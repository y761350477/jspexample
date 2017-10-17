<%--
  Created by IntelliJ IDEA.
  User: YC
  Date: 2017/10/1
  Time: 14:42
  To change this template use File | Settings | File Templates.
--%>

<%--
  编译指令page的属性设置.
  contentType:text/html说明发送给浏览器的是网页数据,charset指定服务器生成网页的编码格式;
  pageEncoding:设置jsp本身的编码格式;
  import:导入java类,多个类的引用之间加上","分隔(没有声明,则在使用时要使用完全限定名,即类名前面加上包名);
  errorPage:指定错误处理页面(发生异常或者错误);
  isErrorPage:指定是否为异常处理页面(在errorPage指定的页面设置isErrorPage为true或者false其结果是一样的,不知道具体有什么作用);
--%>

<%@ page
        contentType="text/html;charset=UTF-8"
        language="java"
        pageEncoding="utf-8"
        import="bean.User,java.util.ArrayList"
        errorPage="jsp_page_error.jsp"
%>
<html>
<head>
    <title>page编译指令的属性设置</title>
</head>
<body>
    <%
    int a = 10;
    int b = 0;
    int c = a / b;
    %>
    Jsp的使用：
    <%
//        String str = "Hello World";
        out.print(str);
    %>
    <br/>
    Jsp的表达式的使用：
    <%=
    "Hello World!"
    %>
    <br/>
    <%--Jsp的声明：--%>
    <%!
        String str = "Hello World";
    %>

</body>
</html>
