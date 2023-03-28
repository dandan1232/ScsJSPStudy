<%@ page contentType="text/html" %>
<%@ page pageEncoding="utf-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Random" %>
<HTML>
<body bgcolor=#DCEDC8>
<style>
    #textStyle {
        font-family: 宋体;
        font-size: 36px;
        color: #1B5E20
    }
</style>
<%! static ArrayList<String> list = new ArrayList<String>();

    static {
        list.add("☆");
        list.add("○");
        list.add("△");
        list.add("□");
        list.add("◇");
    }

    String getNextTestString(int length) {
        StringBuffer buffer = new StringBuffer();
        Random random = new Random();
        for (int i = 0; i < length; i++) {
            int index = random.nextInt(list.size());
            String str = list.get(index);
            buffer.append(str);
        }
        return new String(buffer);
    }
%>
<% String grade = request.getParameter("grade");
    if (grade == null) {
        grade = (String) session.getAttribute("grade");
    }
    int number = Integer.parseInt(grade);
    session.setAttribute("grade", grade);
    String testString = null;   //存放测试题目，例如"☆△☆□◇○□"。
    String yesORNo = null;      //存放是否已经给了测试题目，例如"yes"。
    yesORNo = (String) session.getAttribute("yesORNo");
    if (yesORNo == null) {
        testString = getNextTestString(number);//得到测试的题目
        session.setAttribute("yesORNo", "yes");
        session.setAttribute("testString", testString);
    } else if (yesORNo.equals("yes")) {
        response.sendRedirect("answerTest.jsp");//定向到答题页面
        return;
    } else if (yesORNo.equals("no")) {
        testString = getNextTestString(number); //得到测试的题目
        session.setAttribute("yesORNo", "yes");
        session.setAttribute("testString", testString);
    }
%>
<p id="textStyle">给5秒种记住您看到的字符序列:<br>
    <%=testString %>
    <br>5秒种后，将转到答题页。
    <% response.setHeader("refresh", "5");
    %>
</p>
<h2>2200249068 林丹丹</h2>
</body>

</HTML>
