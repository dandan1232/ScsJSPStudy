<%--
  Created by IntelliJ IDEA.
  User: lindand
  Date: 2023/4/11
  Time: 22:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="idioms" class="ch5.com.tom.jiafei.ContinueIdioms" scope="application"/>
<style>
    #tomStyle {
        font-family: 宋体;
        font-size: 26px;
        color: #004D40
    }
</style>
<% request.setCharacterEncoding("utf-8");
%>
<jsp:setProperty name="idioms" property="nowIdioms" param="nowIdioms"/>
<HTML>
<body bgcolor=#BBDEFB>
<p id=tomStyle>
    目前的接龙情景：<br>
    <textArea id=tomStyle rows=5 cols=38>
<%= idioms.getAllIdioms() %>
</textArea><br>
<form action="" id=tomStyle method=post>
    继续接龙,输入成语:
    <text name="nowIdioms" value=10/>
        <br><input type="text" name="nowIdioms" id=tomStyle/>
        <input type="submit" id=tomStyle value="提交"/>
</form>
</p>

<h4>2200249068 林丹丹</h4>
</body>
</html>
