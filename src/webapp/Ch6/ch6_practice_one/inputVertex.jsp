<%--
  Created by IntelliJ IDEA.
  User: lindand
  Date: 2023/4/19
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    #tom {
        font-family: 宋体;
        font-size: 26px;
        color: #004D40
    }
</style>
    <%
String s ="(20,220)(220,20)(420,220)(220,420)";
%>
<HTML>
<body bgcolor=#B2DFDB>
<p id=tom>
<form action="/ScsJSPStudy/drawPolygon" id=tom method=post>
    输入多边形的顶点,格式是（m,n）<br>m,n为整数 0<=m<=800,0<=n<=600<br>
    <textArea name="polygonVertex" id=tom rows=5 cols=30>
<%= s %>
</textArea>
    <br><input type=submit id=tom value="提交"/>
</form>
</p>
<h2>2200249068 林丹丹</h2>
</body>
</HTML>
