<%@ page contentType="text/html; charset=gb2312" language="java" import="bean.*,java.sql.*,java.util.*" errorPage="" %>
<jsp:useBean id="selectcourse" class="bean.dbcon" scope="session"/>

<html>
  <head>
<title>显示课程信息</title>
  </head>
  
  <body>
  <center>
  <h2><font color="red">开始选课</font></h2>
  <hr/>
  <table border="1">
  <tr>
  	<td>课程编号</td><td>课程名</td><td>授课时间</td><td>授课地点</td>
  	<td>授课教师</td><td>教师电话</td><td>课程学分</td><td>操作选择</td>
  </tr>

<%
	
	String userId = (String)session.getAttribute("userID");
	out.print("<strong><font color=\"red\">");out.print("欢迎&nbsp;&nbsp;</font></strong>");out.print(userId);
	
	Collection course = selectcourse.getCourseInfo();
	Iterator it = course.iterator();
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
		out.println("<td>"+"<a href='xuanke.jsp?courseId="+temp.getCno()+"'>选课</a>");
		}
		catch(Exception e){}
		out.println("</tr>");
	}
 %>
  </table>
	<a href="operating.jsp">返回</a>
  </center>
  

  
  </body>
</html>
