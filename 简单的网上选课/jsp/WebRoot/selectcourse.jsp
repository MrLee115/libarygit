<%@ page contentType="text/html; charset=gb2312" language="java" import="bean.*,java.sql.*,java.util.*" errorPage="" %>
<jsp:useBean id="selectcourse" class="bean.dbcon" scope="session"/>

<html>
  <head>
<title>��ʾ�γ���Ϣ</title>
  </head>
  
  <body>
  <center>
  <h2><font color="red">��ʼѡ��</font></h2>
  <hr/>
  <table border="1">
  <tr>
  	<td>�γ̱��</td><td>�γ���</td><td>�ڿ�ʱ��</td><td>�ڿεص�</td>
  	<td>�ڿν�ʦ</td><td>��ʦ�绰</td><td>�γ�ѧ��</td><td>����ѡ��</td>
  </tr>

<%
	
	String userId = (String)session.getAttribute("userID");
	out.print("<strong><font color=\"red\">");out.print("��ӭ&nbsp;&nbsp;</font></strong>");out.print(userId);
	
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
		out.println("<td>"+"<a href='xuanke.jsp?courseId="+temp.getCno()+"'>ѡ��</a>");
		}
		catch(Exception e){}
		out.println("</tr>");
	}
 %>
  </table>
	<a href="operating.jsp">����</a>
  </center>
  

  
  </body>
</html>
