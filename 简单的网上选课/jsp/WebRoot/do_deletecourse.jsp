<%@ page contentType="text/html; charset=gb2312" language="java" import="bean.*,java.sql.*,java.util.*" errorPage="" %>
<jsp:useBean id="course" class="bean.courseInfo" scope="session"/>
<jsp:useBean id="dbcon" class="bean.dbcon" scope="session"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

  </head>
  
  <body>
	<%
	String  courseId= request.getParameter("courseId");
	dbcon.deletecourse(courseId);
	out.println("<center>É¾³ý³É¹¦£¡</center><br/>");
	%>
	 <jsp:forward page="deletecourse.jsp"></jsp:forward>
  </body>
</html>
