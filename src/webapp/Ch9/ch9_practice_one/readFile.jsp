<%--
  Created by IntelliJ IDEA.
  User: lindand
  Date: 2023/5/30
  Time: 23:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.FileReader" %>
<%@ page import="java.io.IOException" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Read File</title>
</head>
<body>
<h1>Read File</h1>
<h2>2200249068 林丹丹</h2>
<%
    String filePath = "D:\\Study\\ScsJSPStudy\\src\\webapp\\Ch9\\ch9_practice_one\\readJSPFile.jsp"; // 源文件的路径

    try {
        BufferedReader reader = new BufferedReader(new FileReader(filePath));
        String line;
        while ((line = reader.readLine()) != null) {
            out.println(line);
            out.println("<br>");
        }
        reader.close();
    } catch (IOException e) {
        out.println("Error reading file: " + e.getMessage());
    }
%>
</body>
</html>
