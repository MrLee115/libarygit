<%@ page contentType="text/html; charset=gb2312" language="java" import="bean.*,java.sql.*,java.util.*" errorPage="" %>
<jsp:useBean id="course" class="bean.courseInfo" scope="session"/>
<jsp:useBean id="dbcon" class="bean.dbcon" scope="session"/>
<html>
  <head>
	<title>�޸Ŀγ���Ϣ</title>
  </head>
  
  <body>
	<center>
  <h2><font color="red">�޸Ŀγ�</font></h2>
  <hr/>
  <br/>
  <table border="1">
  <tr>
  	<td>�γ̱��</td><td>�γ���</td><td>�ڿ�ʱ��</td><td>�ڿεص�</td>
  	<td>�ڿν�ʦ</td><td>��ʦ�绰</td><td>�γ�ѧ��</td><td>�޸Ŀγ�</td>
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
			out.println("<td>"+"<a href='do_updatecourse.jsp?courseId="+temp.getCno()+"'>�޸�</a>");
		}
		catch(Exception e){}
		out.println("</tr>");
	}
	%>
	
	</table>
	</center>
	<p align="center"><a href="Managecourse.jsp">����</a></p>
  </body>
</html>
