<%@ page contentType="text/html;charset=gb2312" import="java.sql.*"%>
<jsp:useBean id="dbcon" class="bean.dbcon" scope="session"/>
<html>
  <head>
    
    <title>成绩录入</title>

  </head>
  
  <body>
  <center>
    <h2>成绩录入或修改页面</h2>
    <hr>
    <p>请输入课程编号:</p>
    <form action="enter_score.jsp">
    	<input type="text" name="cno">
    	<input type="submit" value="提交">
    </form>
    <table border="1">
<tr>
  	<td>学生学号</td><td>课程编号</td><td>课程名</td>
  	<td>课程学分</td><td>考试分数</td><td>分数录入</td>
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
	    	out.println("<td>"+"<a href='do_enter_score.jsp?sno="+rst.getString("sno")+"&"+"cno="+rst.getString("cno")+"'>录入或修改</a></td>");
			out.println("</tr>");
		  } 
		    
        }catch(Exception e){e.printStackTrace(); }
			
     %>
     </table>
     <a href="Managecourse.jsp">返回</a>
    </center>
  </body>
</html>
