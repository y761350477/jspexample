<%@ page import="java.util.Locale" %>
<%@ page import="java.util.ResourceBundle" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>国际化</title>
</head>
<body>
<%--步骤:--%>
<%--1. 新建配置国际化信息的资源文件--%>
<%--注意: 一个资源包中的每个资源文件都必须拥有共同的基名。除了基名，每个资源文件的名称中还必须有标识其本地信息的附加部分。--%>
<%--还需要配置一个不含有地区信息标识的名称, 在找不到对应地区信息时默认加载--%>
<%--2. 通过locale对象的getLanguage()和getCountry()方法获取地区信息--%>
<%--3. 通过ResourceBundle.getBundle的方法, 传入两个参数, 1. 语言资源文件、2. locale对象--%>
<%--4. 通过ResourceBundle对象的getString()方法获取需要的参数对应的语言信息--%>

<%
//    // 获取地区信息 - Created by YC.
//    Locale locale = request.getLocale();
//
//    // 指定地区信息 - Created by YC.
//    locale = new Locale("en", "US");
//
//    String language = locale.getLanguage();
//    String country = locale.getCountry();
//    out.print(language);
//    out.print("<br>");
//    out.print(country);
//
//    ResourceBundle rb = ResourceBundle.getBundle("myproperties.properties", locale);

    // 上面代码的精简效果 - Created by YC.
    // getBundle()方法的第一个参数指定默认的语言文件, 作用是在找不到合适的语言文件的情况下加载 - Created by YC.
    ResourceBundle resourceBundle = ResourceBundle.getBundle("myproperties", request.getLocale());
    String username = resourceBundle.getString("username");
    String password = resourceBundle.getString("password");
    out.print("<br>");
    out.print("用户名: " + username);
    out.print("<br>");
    out.print("密码: " + password);
%>
</body>
</html>
