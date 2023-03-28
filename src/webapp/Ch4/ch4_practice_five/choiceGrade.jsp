<%@ page contentType="text/html" %>
<%@ page pageEncoding="utf-8" %>
<HTML>
<body bgcolor=#DCEDC8>
<style>
    #textStyle {
        font-family: 宋体;
        font-size: 26px;
        color:#1B5E20
    }
</style>
<form action="giveTest.jsp" id="textStyle" method=post name=form>
    <input type=radio name="grade" value="5"/>初级
    <input type=radio name="grade" value="7" checked="ok"/>中级
    <input type=radio name="grade" value="10"/>高级
    <br><input type="submit" name="submit" id="textStyle" value="提交"/>
    <input type="reset" id="textStyle" value="重置"/>
</form>
<h2>2200249068 林丹丹</h2>
</body>
</HTML>
