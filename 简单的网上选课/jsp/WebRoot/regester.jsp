<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<jsp:useBean id="db" class="bean.dbcon" scope="page"/>
<html>
<script language="javascript"> 
function check(){
   if(user.sno.value=="")
       {
       alert("学号都不填啦你！");
       user.sno.focus();
       return false;
       }
        if(user.sname.value=="")
       {
       alert("姓名又不填！");
       user.sname.focus();
       return false;
       }   
       if(user.password.value=="")
       {
       alert("请输入密码！");
       user.password.focus();
       return false;
       }   
}
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>注册页面</title>
</head>

<body>
<center>
<h1>用户注册</h1>
<div align="right"><a href="index.jsp">返回登录页面</a></div>
<hr>
<form name="user" method="POST" action="do_regester.jsp" onSubmit="return check()">
<table border="1" width="45%">
  <tr>
	<td width="20%">学号：</td>
	<td width="80%"><input type="text" name="sno" size="30%"></td>
</tr>
	<tr>
	<td>姓名:</td>
	<td><input type="text" name="sname" size="30%"></td>
  </tr>
  <tr>
	<td>密码:</td>
	<td><input type="password" name="password" size="33%"></td>
  </tr>
	<tr>
	<td>院系:</td>
	<td><input type="text" name="sdept" size="30%"></td>
  </tr>
  <tr>
	<td>性别:</td>
	<td><input type="radio" name="sex" value="男" checked>男
		<input type="radio" name="sex" value="女">女
        </td>
		</tr>
  <tr>
	<td>电话:</td>
	<td><input type="text" name="phone" size="30%"></td>
  </tr>
  <tr>
	<td>密码问题:</td>
	<td><input type="text" name="question" size="30%"></td>
  </tr>
  <tr>
	<td>答案:</td>
	<td><input type="text" name="answer" size="30%"></td>	
	</tr>
  <tr>
  	<td colspan="2" align="center">
	<input type="submit" value="提交">&nbsp;&nbsp;&nbsp;&nbsp; 
        <input type="reset" value="全部重写">
	</td>
	</tr>
</table>
</form>
</center>
</body>
</html>
