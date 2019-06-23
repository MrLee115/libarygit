<%@ page contentType="text/html; charset=gb2312" language="java" import="bean.*,java.sql.*,java.util.*" errorPage="" %>
<jsp:useBean id="db" class="bean.dbcon" scope="page"/>
<jsp:useBean id="user" class="bean.userbean" scope="page">
	<jsp:setProperty name="user" property="*"/>
</jsp:useBean>
<html>
  <head> 
  <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />  
    <title>注册处理</title>
  </head>
   
  <body>
    <%
       String sno=request.getParameter("sno");
	   if(db.checkuser_regester(sno))
	   {
	  %>
	   <script language="javascript"> 
       alert("学生已存在！");
       window.location="regester.jsp";
   </script>
   <%   }
   else 
	    db.adduser(user);   
	%>	
     
    <center>
    <h2>注册成功！</h2>
    <a href="index.jsp">返回登陆</a>
    </center>
  </body>
</html>
