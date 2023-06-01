<%--
  Created by IntelliJ IDEA.
  User: lindand
  Date: 2023/5/30
  Time: 22:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page pageEncoding="UTF-8" %>
<%@ page import="java.io.*" %>
<style>
    #tom {
        font-family: 宋体;
        font-size: 28px;
        color: #004D40;
    }
</style>
<HTML>
<body id="tom" bgcolor="#B2DFDB">
<%
    StringBuffer sourceCode = new StringBuffer(); // 存放JSP文件的源代码。
    request.setCharacterEncoding("UTF-8");
    String mess = request.getParameter("submit");
    if (mess == null)
        mess = "";
    if (mess.contains("源码")) {
        response.setContentType("text/plain; charset=UTF-8");
        String jspPage = request.getServletPath();
        String webDir = request.getContextPath();
        jspPage = jspPage.substring(1);
        webDir = webDir.substring(1);
        System.out.println(jspPage);
        System.out.println(webDir);
        File f = new File("");
        String path = f.getAbsolutePath();
//        int index = path.indexOf("bin");
        int index = path.indexOf("ScsJSPStudy");
        System.out.println(index);
        System.out.println(path);
        String tomcatDir = path.substring(0, index);

        File jspFile = new File("D:/Study/"+webDir+"/src/webapp/",jspPage);
        try {
            BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream(jspFile), "UTF-8"));
            String line;
            while ((line = reader.readLine()) != null) {
                sourceCode.append("\n" + line);
            }
            reader.close();
        } catch (Exception exp) {
            out.println(exp);
        }
    }
%>
JSP文件源代码：<br>
<%= sourceCode %>
<br>
<form action="" method="post">
    <input type="submit" id="#tom" name="submit" value="看本页面的源码"/>
</form>
<h3>2200249068 林丹丹</h3>
</body>
</HTML>
