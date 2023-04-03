<%--
  Created by IntelliJ IDEA.
  User: lindand
  Date: 2023/4/3
  Time: 15:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>得到分数</title>
</head>
<body bgcolor=#B2DFDB>
<p style="font-family:宋体;font-size:36px;color:#1B5E20">
    <jsp:useBean id="fraction" class="ch5.com.tom.jiafei.Fraction" scope="request"/>
    <jsp:setProperty name="fraction" property="number" param="number"/>
    <jsp:getProperty name="fraction" property="number"/>
    表示成分数是：<br>
    <jsp:getProperty name="fraction" property="numerator"/>
    /
    <jsp:getProperty name="fraction" property="denominator"/>
</p>
<h4>2200249068 林丹丹</h4>
</body>
</html>


