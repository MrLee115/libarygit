<%@ page contentType="text/html; charset=gb2312" language="java" import="bean.*,java.sql.*,java.util.*" errorPage="" %>
<jsp:useBean id="course" class="bean.courseInfo" scope="session"/>
<jsp:useBean id="dbcon" class="bean.dbcon" scope="session"/>
<html>
  <head>

  </head>
  
  <body>
   <%
	   String courseId=request.getParameter("courseId");
	   String cno="";
	   String cname="";
	   String time="";
	   String address="";
	   String teacher="";
	   String phone="";
	   String xuefen="";
	   Statement stmt=dbcon.getStm();
	   ResultSet rst=stmt.executeQuery("select * from course where cno ="+"'"+courseId+"'"); 
	   if(rst.next())
	   {
	   		cno=rst.getString("cno");
	   		cname=rst.getString("cname");
	   		time=rst.getString("time");
	   		address=rst.getString("address");
	   		teacher=rst.getString("teacher");
	   		phone=rst.getString("phone");	
	   		xuefen=rst.getString("xuefen"); 
	   }  
	   rst.close();
	   stmt.close();
   %>
<center>
<h2>�޸Ŀγ���Ϣ</h2>
<hr>
   	<form action="updatecourse_success.jsp">
   	 	<table align="center" >
   	 		<tr>
   	 			<td>�γ̺ţ�</td>
	            <td><input type="text" name="cno" disabled value="<%=cno%>"></td>
   	 		</tr>
   	 		<tr>
   	 			<td>�γ�����</td>
	            <td><input type="text" name="cname"  value="<%=cname%>"></td>
   	 		</tr>
   	 		<tr>
   	 			<td>����ʱ�䣺</td>
	            <td><input type="text" name="time" value="<%=time%>"></td>
   	 		</tr>
   	 		<tr>
   	 			<td>���εص㣺</td>
	            <td><input type="text" name="address" value="<%=address%>"></td>
   	 		</tr>
   	 		<tr>
   	 			<td>�ڿν�ʦ��</td>
	            <td><input type="text" name="teacher" value="<%=teacher%>"></td>
   	 		</tr>
   	 		<tr>
   	 			<td>��ʦ�绰��</td>
	            <td><input type="text" name="phone" value="<%=phone%>"></td>
   	 		</tr>
   	 		<tr>
   	 			<td>�γ�ѧ�֣�</td>
	            <td><input type="text" name="xuefen" value="<%=xuefen%>"></td>
   	 		</tr>
   	 			<td colspan="2" align="center">
   	 				<input type="submit" value="�޸�">       			
     			</td>
   	 	</table>
   	</form>  
  </center>
  </body>
</html>
