<%--
  Created by IntelliJ IDEA.
  User: lindand
  Date: 2023/3/21
  Time: 18:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html" %>
<%@ page pageEncoding="utf-8" %>
<HTML>
<body bgcolor=cyan>
<p style="font-family:宋体;font-size:18px;color:black">
        <%
   String numberOne=request.getParameter("numberOne");
   String numberTwo=request.getParameter("numberTwo");
   String operator=request.getParameter("operator");
   if(numberOne==null||numberOne.length()==0) {
        response.sendRedirect("input.jsp");
        return;
   }
   else if(numberTwo==null||numberTwo.length()==0) {
        response.sendRedirect("input.jsp");
        return;
   }
   try{
        double a=Double.parseDouble(numberOne);
        double b=Double.parseDouble(numberTwo);
        double r=0;
        if(operator.equals("+"))
           r=a+b;
        else if(operator.equals("-"))
           r=a-b;
        else if(operator.equals("*"))
           r=a*b;
        else if(operator.equals("/"))
           r=a/b;
        out.println(a+""+operator+""+b+"="+r);
        out.println("2200249068 林丹丹");
    }
    catch(Exception e){
        out.println("请输入数字字符");
    }
%>
</body>
</HTML>
