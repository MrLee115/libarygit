<%@ page contentType="text/html; charset=gb2312" language="java" import="bean.*,java.sql.*,java.util.*" errorPage="" %>
<jsp:useBean id="db" class="bean.dbcon" scope="page"/>
<jsp:useBean id="course" class="bean.courseInfo" scope="page">
	<jsp:setProperty name="course" property="*"/>
</jsp:useBean>
<html>
  <head> 
  <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />  
    <title>��ӿγ̴���</title>
  </head>
   
  <body>
   <% String cno=request.getParameter("cno");
   if(db.checkcourse(cno))
   {
   %>
   <script language="javascript"> 
       alert("�ÿγ��Ѵ��ڣ�");
       window.location="addcourse.jsp";
   </script>
   <%
   }
   else
    	{db.addcourse(course);   	
     %>   
     <jsp:forward page="course.jsp"></jsp:forward>    
     
    <%} %>
    <center>  
    </center>
  </body>
</html>
