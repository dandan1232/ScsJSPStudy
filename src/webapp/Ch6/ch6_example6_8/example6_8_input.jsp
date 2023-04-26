<%--
  Created by IntelliJ IDEA.
  User: lindand
  Date: 2023/4/26
  Time: 18:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    #tom {
        font-family: 宋体;
        font-size: 26px;
        color: #1B5E20
    }
</style>
<% String message = (String) session.getAttribute("message"); //获取会话中的信息
%>
<HTML>
<body bgcolor=#B3E5FC>
<table border=1>
    <form action=guess method=post>
        <tr>
            <td id=tom> 输入您的猜测（a~z之间的字母）:</td>
            <td><input type=text name=clientGuessLetter id=tom size=10/>
                <input type=submit id=tom value="提交"/></td>
        </tr>
        <td id=tom> 提示信息:</td>
        <td id=tom><%= message%>
        </td>
    </form>
    <form action="example6_8.jsp" method=post>
        <tr>
            <td id=tom>单击按钮重新开始:</td>
            <td id=tom><input type=submit id=tom value="随机得到一个字母"/></td>
        </tr>
    </form>
    <h4>2200249068 林丹丹</h4>
</body>
</HTML>
