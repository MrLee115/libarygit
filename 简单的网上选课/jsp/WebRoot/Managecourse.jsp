<%@ page contentType="text/html;charset=gb2312" import="java.sql.*"%>

<html>
  <head>

    
    <title>课程管理</title>
  </head>
  
  <body>
  <center>
  <h2><font color="red">选课管理</font></h2>
  <hr/>
  <br/>
  <br/>
  <% 
   out.println("<center><a href=course.jsp"+">课程显示</a><br/><br/>");
   out.println("<center><a href="+"addcourse.jsp"+">增加课程</a><br/><br/><a href="+"deletecourse.jsp"+">删除课程</a><br/><br/></center>");
   out.println("<center><a href="+"updatecourse.jsp"+">修改课程</a><br/><br/>");
   out.println("<center><a href=enter_score.jsp"+">录入成绩</a>");
  %>
    </center>
  </body>
</html>
