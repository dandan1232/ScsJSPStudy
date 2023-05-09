<%--
  Created by IntelliJ IDEA.
  User: lindand
  Date: 2023/5/9
  Time: 23:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html" %>
<%@ page pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<style>
    #tom {
        font-family: 宋体;
        font-size: 18px;
        color: #004D40
    }
</style>
<HTML>
<body bgcolor=#B2EBF2>
<% Connection con = null;
    Statement sql;
    ResultSet rs;
    try {  //加载JDBC-MySQL8.0连接器:
        Class.forName("com.mysql.cj.jdbc.Driver");
    } catch (Exception e) {
        out.print("<h1>" + e);
    }
    String url = "jdbc:mysql://localhost:3306/bookDatabase?" +
            "useSSL=false&useUnicode=true&characterEncoding=UTF-8&serverTimezone=Asia/Shanghai";
    String user = "root";
    String password ="ldd123789dd";
    out.print("<table border=1>");
    out.print("<tr>");
    out.print("<th id=tom width=100>" + "ISBN");
    out.print("<th id=tom width=100>" + "名称");
    out.print("<th id=tom width=50>" + "价格");
    out.print("<th id=tom width=50>" + "日期");
    out.print("</tr>");
    try {
        con = DriverManager.getConnection(url, user, password);//连接数据库。
        sql = con.createStatement();
        String SQL = "SELECT * FROM bookList";//SQL语句。
        //String SQL="select * from bookList "+
        //"where year(publishDate) between 1999 and 2021 and price>=30 "+
        // " order by publishDate";
        rs = sql.executeQuery(SQL);//查表。
        while (rs.next()) {
            out.print("<tr>");
            out.print("<td id=tom>" + rs.getString(1) + "</td>");
            out.print("<td id=tom>" + rs.getString(2) + "</td>");
            out.print("<td id=tom>" + rs.getFloat(3) + "</td>");
            out.print("<td id=tom>" + rs.getDate(4) + "</td>");
            out.print("</tr>");
        }
        out.print("</table>");
        con.close();
    } catch (SQLException e) {
        out.print("<h1>" + e);
    }
%>
<h4>2200249068 林丹丹</h4>
</body>
</HTML>