<%@ page contentType="text/html; charset=gb2312" language="java" import="bean.*,java.sql.*,java.util.*" errorPage="" %>
<jsp:useBean id="dbcon" class="bean.dbcon" scope="session"/>
<html>
  <head>  
   <title>��ѡ�γ̱�</title>   
  </head>
 
  <body>
    	<center>
  <h2>��ѡ�γ�</h2><br>

<table border="1">
  <tr>
  	<td>�γ̱��</td><td>�γ���</td><td>�ڿ�ʱ��</td><td>�ڿεص�</td>
  	<td>�ڿν�ʦ</td><td>��ʦ�绰</td><td>�γ�ѧ��</td><td>�˿�</td>
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
		out.println("<td>"+"<a href='tuike.jsp?courseId="+rst.getString("cno")+"'>��ѡ</a></td>");
		out.println("</tr>");
    }  
    }catch(Exception e)
    {
    	e.printStackTrace();  
    	System.out.println("��ʾ��ѡ��Ϣ����!");
    }
    %>
  </table>
    <a href="selectcourse.jsp">����ѡ��</a>
    <a href="operating.jsp">����</a>
   </center>
  </body>
</html>
