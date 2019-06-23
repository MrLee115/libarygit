<%@ page contentType="text/html; charset=gb2312" language="java" import="bean.*,java.sql.*,java.util.*" errorPage="" %>
<jsp:useBean id="dbcon" class="bean.dbcon" scope="session"/>
<html>
  <head> 
    <title>success</title>   
  </head>  
  <body>
  	<%
  	   String cno="";
	   String cname="";
	   String time="";
	   String address="";
	   String teacher="";
	   String phone="";
	   String xuefen="";
   		if(request.getParameter("cno")!=null)      cno = dbcon.codeToString(request.getParameter("cno"));
	    if(request.getParameter("cname")!=null)    cname=dbcon.codeToString(request.getParameter("cname"));
	    if(request.getParameter("time")!=null)     time= dbcon.codeToString(request.getParameter("time"));
	    if(request.getParameter("address")!=null)  address=dbcon.codeToString(request.getParameter("address"));
	    if(request.getParameter("teacher")!=null)  teacher=dbcon.codeToString(request.getParameter("teacher"));
	    if(request.getParameter("phone")!=null)    phone=dbcon.codeToString(request.getParameter("phone"));
	    if(request.getParameter("xuefen")!=null)   xuefen=dbcon.codeToString(request.getParameter("xuefen"));
	   try{	   
				Connection con = dbcon.getConnection();
				PreparedStatement pstmt = con.prepareStatement("update course set cname=?,time=?,address=?,teacher=?,phone=?,xuefen=? where cno=?");
				pstmt.setString(1,cname);		
				pstmt.setString(2,time);	
				pstmt.setString(3,address);	
				pstmt.setString(4,teacher);	
				pstmt.setString(5,phone);	
				pstmt.setString(6,xuefen);	
				pstmt.setString(7,cno);			
				pstmt.execute();
			}catch(Exception e)
			{
				System.out.println("课程信息修改异常！");
			}
			
			  response.sendRedirect("updatecourse.jsp");
			
   	 %>
    
  </body>
</html>
