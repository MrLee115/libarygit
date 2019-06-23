<%@ page contentType="text/html;charset=gb2312" import="java.sql.*"%>
<jsp:useBean id="userbean" class="bean.userbean" scope="session"/>
<jsp:useBean id="adminbean" class="bean.adminbean" scope="session"/>
<%
 //获取type参数  判断是      教师         还是          学生
  String Type = request.getParameter("type");  
 if("student".equals(Type))
 {
 	 String sno=request.getParameter("sno");
 	 if(sno==null)
	 	 sno="";
     	 sno=new String(sno.getBytes("ISO-8859-1"),"gbk");
 	 String password=request.getParameter("password");
 	 if(password==null)
	 	 password="";
     	 password=new String(password.getBytes("ISO-8859-1"),"gbk");
  	userbean.setSno(sno);
  	userbean.setPassword(password);
  	//保存学生学号到session中便于以后访问
  	 session.setAttribute("userID",sno);
 } 
 if("teacher".equals(Type)) 
 {
  	String tno=request.getParameter("sno");
 	 if(tno==null)
	 	 tno="";
     	 tno=new String(tno.getBytes("ISO-8859-1"),"gbk");
 	 String password=request.getParameter("password");
 	 if(password==null)
	 	 password="";
     	 password=new String(password.getBytes("ISO-8859-1"),"gbk");
  	adminbean.setTno(tno);
  	adminbean.setPassword(password);
  	//保存教师编号到session中便于以后访问
  	 session.setAttribute("teacherID",tno);
 }
%>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>登陆处理</title>
</head>
<body>
<%
if("student".equals(Type))
{	
	if("true".equals(userbean.checkuser()))
	{
%>
		<jsp:forward  page="/operating.jsp">
			<jsp:param value="sno" name="sno"/>
		</jsp:forward>
<%	}
else out.println("<center><br><strong><font color="+"red"+">账号或密码错误！</font></strong><br/><a href="+"index.jsp"+">返回</a></center>");
}
else if("teacher".equals(Type))
{
	if("true".equals(adminbean.checkTeacher()))
	{
%>
		<jsp:forward  page="/Managecourse.jsp">
			<jsp:param value="tno" name="tno"/>
		</jsp:forward>
<%  }
	else out.println("<center><br><strong><font color="+"red"+">账号或密码错误！</font></strong><br/><a href="+"index.jsp"+">返回</a></center>");
}
%>
</body>
</html>
