<%--
  Created by IntelliJ IDEA.
  User: lindand
  Date: 2023/5/15
  Time: 22:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html" %>
<%@ page pageEncoding="utf-8" %>
<style>
    #tom {
        font-family: 宋体;
        font-size: 28px;
        color: #263238
    }
</style>
<HTML>
<body bgcolor=#BBDEFB>
<form action="queryShow.jsp" id=tom method=post>
    输入学号或姓名查询成绩：<br>
    <input type="text" id=tom name="mess"/><br>
    <input type="submit" id=tom name="submit" value="按姓名查询"/>
    <input type="submit" id=tom name="submit" value="按学号查询"/>
</form>
<h3>2200249068 林丹丹</h3>
</body>
</HTML>
