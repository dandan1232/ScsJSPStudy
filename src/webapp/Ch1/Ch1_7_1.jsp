<%--
  Created by IntelliJ IDEA.
  User: lindand
  Date: 2023/2/27
  Time: 15:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>英文字母表</title>
</head>
<body background="http://pic-ldd-test.oss-cn-hangzhou.aliyuncs.com/avatar/head.jpg" >
<p style="font-family: 黑体;font-size:36px">
    <br>英文字母表:<br>
</p>
<p style="font-family: 宋体;font-size: 25px;color: blue">
    <% char upperCase; //存放大写字母
        char lowerCase; //存放小写字母
        for (upperCase = 'A'; upperCase <= 'Z'; upperCase++) {
            lowerCase = (char) (upperCase + 32);
            out.print(upperCase + "(" + lowerCase + ")" + " ");
            if (upperCase == 'M') {
                out.print("<br><br>");

            }
        }
    %>
</p>
<h1>2200249068+林丹丹</h1>

</body>
</html>
