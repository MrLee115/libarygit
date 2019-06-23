<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>学生选课系统</title>
</head>

<body background="imgs/bg.jpg">
	<p align="center"><font color="#FF9933" size=50><strong>学生选课系统</strong></font></p>
	<hr />
	<br/>
	<br/>
<form method="post" action="login.jsp">	
<br/>
  <p align="center">账&nbsp;号：
    <input type="text" name="sno" />
  </p>
  <p align="center">密&nbsp;码：
    <input type="password" name="password" />
</p>
	<p align="center">
		<input type="radio" name="type" value="student" checked>学生
		<input type="radio" name="type" value="teacher">教师
	</p>
  <p align="center">
    <input type="submit" value="登陆" />
    &nbsp;&nbsp;<a href="regester.jsp">注册</a>
  </p>
</form>
</body>
</html>
