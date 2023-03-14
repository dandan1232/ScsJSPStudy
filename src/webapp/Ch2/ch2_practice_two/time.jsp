<%--
  Created by IntelliJ IDEA.
  User: lindand
  Date: 2023/3/7
  Time: 12:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.LocalTime" %>
<html>
<head>
    <title>时间</title>
</head>
<body>

<%
    LocalDate date = LocalDate.now();
    LocalTime time = LocalTime.now();
%>
<h2>
    用户在<%= date.getYear()%>/<%=date.getMonthValue()%>/
    <%=date.getDayOfMonth()%><br>
    <%=time.getHour()%>:<%=time.getMinute()%>:<%=time.getSecond()%>
    访问了网页
</h2>
<h2>2200249068 林丹丹</h2>
</body>
</html>
