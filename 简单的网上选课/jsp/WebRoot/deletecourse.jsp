<%@ page contentType="text/html; charset=gb2312" language="java" import="bean.*,java.sql.*,java.util.*" errorPage="" %>
<jsp:useBean id="course" class="bean.courseInfo" scope="session"/>
<jsp:useBean id="dbcon" class="bean.dbcon" scope="session"/>
<html>
  <head>   
    <title>删除课程信息</title>
  </head>
  
  <body>
   <center>
  <h2><font color="red">删除课程</font></h2>
  <hr/>
     <table border="1">
  <tr>
  	<td>课程编号</td><td>课程名</td><td>授课时间</td><td>授课地点</td>
  	<td>授课教师</td><td>教师电话</td><td>课程学分</td><td>删除课程</td>
  </tr>
<%//在Managecourse.jsp页面点击删除课程时   在此页面显示所有课程信息 然后点击删除来删除对应课程信息
	String teacherId = (String)session.getAttribute("teacherID");
		
	out.print("<strong><font color=\"red\">");out.print("欢迎&nbsp;&nbsp;</font></strong>");out.print(teacherId);
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
		out.println("<td>"+"<a href='do_deletecourse.jsp?courseId="+temp.getCno()+"'>删除</a>");
		}
		catch(Exception e){}
		out.println("</tr>");
	}
 %>

 </table>

 <p align="center"><a href="Managecourse.jsp">返回</a></p>
 </center>
  </body>
</html>