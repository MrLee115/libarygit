<%@ page contentType="text/html;charset=gb2312" import="java.sql.*"%>
<jsp:useBean id="dbcon" class="bean.dbcon" scope="session"/>
<html>
  <head>
    
    <title>�ɼ�¼��</title>

  </head>
  
  <body>
  <center>
    <h2>�ɼ�¼����޸�ҳ��</h2>
    <hr>
    <p>������γ̱��:</p>
    <form action="enter_score.jsp">
    	<input type="text" name="cno">
    	<input type="submit" value="�ύ">
    </form>
    <table border="1">
<tr>
  	<td>ѧ��ѧ��</td><td>�γ̱��</td><td>�γ���</td>
  	<td>�γ�ѧ��</td><td>���Է���</td><td>����¼��</td>
  </tr>
    <%
    try{
    	String cno= request.getParameter("cno");
    	//Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver");
   		//Connection con=java.sql.DriverManager.getConnection("jdbc:microsoft:sqlserver://127.0.0.1:1433;DatabaseName=jsp_db","sa","zlj");
  		//Statement stmt=con.createStatement();
  		Statement stmt=dbcon.getStm();
   		ResultSet rst=stmt.executeQuery("select sno,cno,cname,xuefen,score from sc where cno ="+"'"+cno+"'");
   		 while(rst.next())
  	 	  {
	   	 	out.println("<tr>");
	   	 	out.println("<td>"+rst.getString("sno")+"</td>");
	   	 	out.println("<td>"+rst.getString("cno")+"</td>");
	    	out.println("<td>"+rst.getString("cname")+"</td>");
	    	out.println("<td>"+rst.getString("xuefen")+"</td>");
	    	out.println("<td>"+rst.getString("score")+"</td>");
	    	out.println("<td>"+"<a href='do_enter_score.jsp?sno="+rst.getString("sno")+"&"+"cno="+rst.getString("cno")+"'>¼����޸�</a></td>");
			out.println("</tr>");
		  } 
		    
        }catch(Exception e){e.printStackTrace(); }
			
     %>
     </table>
     <a href="Managecourse.jsp">����</a>
    </center>
  </body>
</html>
