<%--
  Created by IntelliJ IDEA.
  User: lindand
  Date: 2023/5/23
  Time: 22:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html" %>
<%@ page pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.DataSource" %>
<%@ page import="javax.naming.Context" %>
<%@ page import="javax.naming.InitialContext" %>
<style>
    #tom {
        font-family: 宋体;
        font-size: 18px;
        color: #C8E6C9
    }
</style>
<HTML>
<body bgcolor=#388E3C>
<%
    Context context = new InitialContext();
    Context contextNeeded = (Context) context.lookup("java:comp/env");
    DataSource ds = (DataSource) contextNeeded.lookup("ldd");//获得连接池。
    out.print("连接池对象:" + ds.toString());
    Connection con = null;
    Statement sql;
    ResultSet rs;
    out.print("<table border=1>");
    out.print("<tr>");
    out.print("<th id=tom width=100>" + "ISBN");
    out.print("<th id=tom width=100>" + "名称");
    out.print("<th id=tom width=50>" + "价格");
    out.print("<th id=tom width=50>" + "日期");
    out.print("</tr>");
    try {
        con = ds.getConnection();//使用连接池中的连接。
        sql = con.createStatement();
        String SQL = "SELECT * FROM bookList";//SQL语句。
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
        con.close();//连接返回连接池。
    } catch (SQLException e) {
        out.print("<h1>" + e);
    } finally {
        try {
            con.close();
        } catch (Exception ee) {
        }
    }
%>
<h2 style="color: #C8E6C9">2200249068 林丹丹</h2>
</body>
</HTML>
