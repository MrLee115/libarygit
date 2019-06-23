<%@ page contentType="text/html; charset=gb2312" language="java" import="bean.*,java.sql.*,java.util.*" errorPage="" %>
<jsp:useBean id="dbcon" class="bean.dbcon" scope="session"/>
<html>
  <head>  
   <title>已选课程表</title>   
  </head>
 
  <body>
    	<center>
  <h2>已选课程</h2><br>

<table border="1">
  <tr>
  	<td>课程编号</td><td>课程名</td><td>授课时间</td><td>授课地点</td>
  	<td>授课教师</td><td>教师电话</td><td>课程学分</td><td>退课</td>
  </tr>
   <%
   try{
   String userId = (String)session.getAttribute("userID");
   Statement stmt=dbcon.getStm();
   ResultSet rst=stmt.executeQuery("select cno,cname,time,address,teacher,phone,xuefen from sc where sno ="+"'"+userId+"'");
    while(rst.next())
    {
	    out.println("<tr>");
	    out.println("<td>"+rst.getString("cno")+"</td>");
	    out.println("<td>"+rst.getString("cname")+"</td>");
	    out.println("<td>"+rst.getString("time")+"</td>");
		out.println("<td>"+rst.getString("address")+"</td>");
		out.println("<td>"+rst.getString("teacher")+"</td>");
		out.println("<td>"+rst.getString("phone")+"</td>");
		out.println("<td>"+rst.getString("xuefen")+"</td>");   
		out.println("<td>"+"<a href='tuike.jsp?courseId="+rst.getString("cno")+"'>退选</a></td>");
		out.println("</tr>");
    }  
    }catch(Exception e)
    {
    	e.printStackTrace();  
    	System.out.println("显示已选信息出错!");
    }
    %>
  </table>
    <a href="selectcourse.jsp">继续选课</a>
    <a href="operating.jsp">返回</a>
   </center>
  </body>
</html>
