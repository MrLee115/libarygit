<%@ page contentType="text/html; charset=gb2312" language="java" import="bean.*,java.sql.*,java.util.*" errorPage="" %>
<jsp:useBean id="userbean" class="bean.userbean" scope="session"/>
<jsp:useBean id="dbcon" class="bean.dbcon" scope="session"/>
<html>
  <head>   
    <title>ÍË¿ÎÒ³Ãæ</title>
  </head>
  
  <body>
<%
	String userId = (String)session.getAttribute("userID");
    String courseId =request.getParameter("courseId");
    dbcon.deletexuanke(userId,courseId);
   // out.println("<center>ÍË¿Î³É¹¦£¡</center><br/>");
 %>
 <jsp:forward page="yixuan.jsp"></jsp:forward>
  </body>
</html>
