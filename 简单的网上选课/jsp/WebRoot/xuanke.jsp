<%@ page contentType="text/html; charset=gb2312" language="java" import="bean.*,java.sql.*,java.util.*" errorPage="" %>
<jsp:useBean id="db" class="bean.dbcon" scope="session"/>
<jsp:useBean id="course" class="bean.courseInfo" scope="page">
	<jsp:setProperty name="course" property="*"/>
</jsp:useBean>
<jsp:useBean id="s_course" class="bean.XuankeBean" scope="session"/>
<html>
  <head>   
    <title>ѡ�δ���</title>
  </head>
  
  <body>

  <%
    String userId = (String)session.getAttribute("userID");
    String courseId =request.getParameter("courseId");
    //db.xuanke(courseId,userId);
    courseInfo cc=s_course.getcourseInfo(courseId);
    s_course.addcourse(cc,userId);
  %>
  
   	<center>
  <h2>��ѡ�γ�</h2><br>

<table border="1">
  <tr>
  	<td>�γ̱��</td><td>�γ���</td><td>�ڿ�ʱ��</td><td>�ڿεص�</td>
  	<td>�ڿν�ʦ</td><td>��ʦ�绰</td><td>�γ�ѧ��</td><td>�˿�</td>
  </tr>
   <%
   try{
	//String userId = (String)session.getAttribute("userID");
   //Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver");
   //Connection con=java.sql.DriverManager.getConnection("jdbc:microsoft:sqlserver://127.0.0.1:1433;DatabaseName=jsp_db","sa","zlj");
   //Statement stmt=con.createStatement();
   Statement stmt=db.getStm();
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
   
    }catch(Exception e){e.printStackTrace();  System.out.println("��ʾ��ѡ��Ϣ����!");}
    %>
  </table>

    <a href="selectcourse.jsp">����ѡ��</a>
   </center>
  
  
  </body>
</html>
