<%@ page contentType="text/html" %>
<%@ page pageEncoding="utf-8" %>
<HTML>
<body bgcolor=#DCEDC8>
<style>
    #textStyle {
        font-family: 宋体;
        font-size: 26px;
        color: #1B5E20
    }
</style>
<form action="judgeAnswer.jsp" id=textStyle method=post>
    <%
        int n = Integer.parseInt((String) session.getAttribute("grade"));
        session.setAttribute("yesORNo", "no");
        for (int i = 1; i <= n; i++) {
            out.print("<br>第" + i + "个字符:");
            out.print("<input type=radio name=R" + i + " value='☆'/>☆" +
                    "<input type=radio name=R" + i + " value='○' />○" +
                    "<input type=radio name=R" + i + " value='△' />△" +
                    "<input type=radio name=R" + i + " value='□' />□" +
                    "<input type=radio name=R" + i + " value='◇' />◇");
        }
    %>
    <br><input type="submit" name="submit" id="textStyle" value="提交"/>
    <input type="reset" id="textStyle" value="重置"/>
</form>
<h2>2200249068 林丹丹</h2>
</body>
</HTML>
