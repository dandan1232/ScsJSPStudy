<%--
  Created by IntelliJ IDEA.
  User: lindand
  Date: 2023/6/6
  Time: 22:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    #tom {
        font-family: 宋体;
        font-size: 22px;
        color:#004D40
    }
</style>
<html>
<head>
    <title>Title</title>
</head>
<body id=tom bgcolor=#80CBC4>
<form action="loadFile" method=post>
    选择要下载的文件：<br>
    <select name="filePath" id=#tom size=1>
        <Option Selected value="D:/ProfessionalLearning/Redis-x64-3.2.100.zip">Redis-x64-3.2.100.zip
        <Option value="D:/ProfessionalLearning/zookeeper-3.6.2-bin.tar.gz">zookeeper-3.6.2-bin.tar.gz
        <Option value="D:/Study/ScsJSPStudy/src/webapp/Ch9/ch9_example9_5/example9_5.jsp">example9_5.jsp
        <Option value="D:/Study/ScsJSPStudy/src/webapp/Ch9/ch9_example9_5/test.txt">test.txt
    </select>
    <br><input type="submit" id=tom value="提交"/>
</form>
<h3>2200249068 林丹丹</h3>
</body>
</html>
