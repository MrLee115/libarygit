<%@ page contentType="text/html; charset=gb2312" language="java" import="bean.*,java.sql.*,java.util.*" errorPage="" %>
<jsp:useBean id="selectscore" class="bean.dbcon" scope="page"/>
<jsp:useBean id="sscore" class="bean.scoretable" scope="page"/>
<html>
  <head>   
    <title>成绩查询</title>

  </head>
  
  <body>
   <center>
  <h2><font color="red">成绩查询结果</font></h2> 
  <hr/>
  <table border="1">
  <tr>
  	<td>学号</td><td>课程编号</td><td>课程名称</td><td>课程学分</td><td>考试分数</td>
  </tr>
 <%
 	String sno = (String)session.getAttribute("userID");
 	out.print("<strong><font color=\"red\">");out.print("欢迎&nbsp;&nbsp;</font></strong>");out.print(sno);
   	Collection score = selectscore.getScoreInfo(sno);
	Iterator it = score.iterator();
	while(it.hasNext())
	{	
		scoretable temp = (scoretable)it.next();
		out.println("<tr>");
	try{
		out.println("<td>"+temp.getSno()+"</td>");
		out.println("<td>"+temp.getCno()+"</td>");
		out.println("<td>"+temp.getCname()+"</td>");
		out.println("<td>"+temp.getXuefen()+"</td>");
		out.println("<td>"+temp.getScore()+"</td>");
		}
		catch(Exception e){}
		out.println("</tr>");
	}
  %>
  </table>
  <a href="operating.jsp">返回</a>
  </center> 
  
  
  </body>
</html>
