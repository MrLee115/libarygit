<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>

<html>
  <head>
<title>�ɼ�¼�봦��</title>
  </head>
  
  <body>
  <center>
	<br>
    <p>���������:</p>
    <%
   		 String sno=request.getParameter("sno");
    	 String cno=request.getParameter("cno");
     %>
    <form action="displayscore.jsp">
    	<input type="hidden" name="sno" value="<%=sno%>">
    	<input type="hidden" name="cno" value="<%=cno%>">
    	<input type="text" name="score">
    	<input type="submit" value="ȷ��">
    </form>
   </center>
  </body>
</html>
