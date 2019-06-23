<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<jsp:useBean id="dbcon" class="bean.dbcon" scope="session"/>
<html>
  <head> 
  </head> 
  <body>
      <% 
     	String cno=request.getParameter("cno");
		String sno=request.getParameter("sno");
		String score=request.getParameter("score");  	
    	/*try
    	{	 		
	    	String sql="update sc set score="+"'"+score+"'where sno="+"'"+sno+"'"+"and cno="+"'"+cno+"'";
	    	Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver");
	  		Connection con=java.sql.DriverManager.getConnection("jdbc:microsoft:sqlserver://127.0.0.1:1433;DatabaseName=jsp_db","sa","zlj");
	  		Statement stmt=con.createStatement();
	  		stmt.executeUpdate(sql);
	  	}catch(Exception e){e.printStackTrace();}*/
	  	try
	  	{ 	
	  		String sql="update sc set score="+"'"+score+"'where sno="+"'"+sno+"'"+"and cno="+"'"+cno+"'";
	  		Statement stmt= dbcon.getStm();
	  		stmt.executeUpdate(sql);
	  	}catch(Exception e){e.printStackTrace();}
     %>
     <jsp:forward page="enter_score.jsp"></jsp:forward>
  </body>
</html>
