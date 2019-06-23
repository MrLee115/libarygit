<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<jsp:useBean id="db" class="bean.dbcon" scope="page"/>
<html>
<script language="javascript"> 
function on_submit(){
   if(user.cno.value=="")
       {
       alert("你还没有填写课程号呢！");
       user.cno.focus();
       return false;
       }
        if(user.cname.value=="")
       {
       alert("你还没有填写课程名呢！");
       user.cname.focus();
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
<h1>添加课程</h1>
<hr>
<form name="user" method="POST" action="do_addcourse.jsp" onSubmit="return on_submit()">
<table border="0" width="32%">
  <tr>
	<td width="25%">课程号：</td>
	<td width="75%"><input type="text" name="cno" size="30%"></td>
</tr>
	<tr>
	<td>课程名:</td>
	<td><input type="text" name="cname" size="30%"></td>
  </tr>
  <tr>
	<td>开课时间:</td>
	<td><input type="text" name="time" size="30%"></td>
  </tr>
	<tr>
	<td>开课地点:</td>
	<td><input type="text" name="address" size="30%"></td>
  </tr>
  <tr>
	<td>授课老师:</td>
	<td><input type="text" name="teacher" size="30%"></td>
  </tr>
  <tr>
	<td>老师电话:</td>
	<td><input type="text" name="phone" size="30%"></td>
  </tr>
  <tr>
	<td>课程学分:</td>
	<td><input type="text" name="xuefen" size="30%"></td>
  </tr>
  <tr>
  	<td colspan="2" align="center">
	<input type="submit" value="提交">&nbsp;&nbsp;&nbsp;&nbsp; 
        <input type="reset" value="全部重写">
	</td>
	</tr>
</table>
</form>
<div align="center"><a href="Managecourse.jsp">返回</a></div>
</center>
</body>
</html>
