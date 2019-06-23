<%@ page contentType="text/html; charset=gb2312" language="java" import="bean.*,java.sql.*,java.util.*" errorPage="" %>
<html>
  <head>   
    <title>选择操作</title>
  </head> 
  <body>
  <center>
  <h2><font color="red">选择操作</font></h2>
  <hr/>
  <br/>
  <br/>
  <% 
   out.println("<center><a href="+"selectcourse.jsp"+">开始选课</a><br/><br/><a href="+"yixuan.jsp"+">查看已选</a><br/><br/></center>");
   out.println("<center><a href="+"queryscore.jsp"+">查询成绩</a><br/>");
  %>
  </center>
  </body>
</html>
