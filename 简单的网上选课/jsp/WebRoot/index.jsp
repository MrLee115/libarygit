<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>ѧ��ѡ��ϵͳ</title>
</head>

<body background="imgs/bg.jpg">
	<p align="center"><font color="#FF9933" size=50><strong>ѧ��ѡ��ϵͳ</strong></font></p>
	<hr />
	<br/>
	<br/>
<form method="post" action="login.jsp">	
<br/>
  <p align="center">��&nbsp;�ţ�
    <input type="text" name="sno" />
  </p>
  <p align="center">��&nbsp;�룺
    <input type="password" name="password" />
</p>
	<p align="center">
		<input type="radio" name="type" value="student" checked>ѧ��
		<input type="radio" name="type" value="teacher">��ʦ
	</p>
  <p align="center">
    <input type="submit" value="��½" />
    &nbsp;&nbsp;<a href="regester.jsp">ע��</a>
  </p>
</form>
</body>
</html>
