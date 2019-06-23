<%@ page contentType="text/html; charset=gb2312" language="java" import="bean.*,java.sql.*,java.util.*" errorPage="" %>
<jsp:useBean id="course" class="bean.courseInfo" scope="session"/>
<jsp:useBean id="dbcon" class="bean.dbcon" scope="session"/>
<html>
  <head>
	<title>修改课程信息</title>
  </head>
  
  <body>
	<center>
  <h2><font color="red">修改课程</font></h2>
  <hr/>
  <br/>
  <table border="1">
  <tr>
  	<td>课程编号</td><td>课程名</td><td>授课时间</td><td>授课地点</td>
  	<td>授课教师</td><td>教师电话</td><td>课程学分</td><td>修改课程</td>
  </tr>
 <%
  	Collection courseinfo = dbcon.getCourseInfo();
	Iterator it = courseinfo.iterator();
	while(it.hasNext())
	{
	
		courseInfo temp = (courseInfo)it.next();
		out.println("<tr>");
	try{
			out.println("<td>"+temp.getCno()+"</td>");
			out.println("<td>"+temp.getCname()+"</td>");
			out.println("<td>"+temp.getTime()+"</td>");
			out.println("<td>"+temp.getAddress()+"</td>");
			out.println("<td>"+temp.getTeacher()+"</td>");
			out.println("<td>"+temp.getPhone()+"</td>");
			out.println("<td>"+temp.getXuefen()+"</td>");
			out.println("<td>"+"<a href='do_updatecourse.jsp?courseId="+temp.getCno()+"'>修改</a>");
		}
		catch(Exception e){}
		out.println("</tr>");
	}
	%>
	
	</table>
	</center>
	<p align="center"><a href="Managecourse.jsp">返回</a></p>
  </body>
</html>
