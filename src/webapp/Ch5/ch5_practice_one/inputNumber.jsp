<%--
  Created by IntelliJ IDEA.
  User: lindand
  Date: 2023/4/3
  Time: 15:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    #tomStyle {
        font-family: 宋体;
        font-size: 36px;
        color: #1B5E20
    }
</style>
<head>
    <title>输入一个纯小数</title>
</head>
<body bgcolor=#ffccff>
<form action="getFraction.jsp" id=tomStyle method=post>
    输入一个纯小数:<br>
    <input type=text name="number" id=tomStyle size=16px value=0.618 />
    <br><input type="submit" id=tomStyle value="提交"/><br>
    看小数的分数表示。
</form>
<h4>2200249068 林丹丹</h4>
</body>
</html>
