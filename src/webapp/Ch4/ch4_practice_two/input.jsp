<%--
  Created by IntelliJ IDEA.
  User: lindand
  Date: 2023/3/21
  Time: 18:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<HTML>
<body bgcolor=#ffccff>
<form action="computer.jsp" method=post name=form>
    <p style="font-family:宋体;font-size:18px;color:blue">
        输入运算数、选择运算符号:<br>
        <input type=text name="numberOne" size=6/>
        <select name="operator">
            <option selected="selected" value="+">加
            <option value="-">减
            <option value="*">乘
            <option value="/">除
        </select>
        <input type=text name="numberTwo" size=6/>
        <br><input type="submit" name="submit" value="提交"/>
</form>
<h3>2200249068 林丹丹</h3>
</p>
</body>
</HTML>
