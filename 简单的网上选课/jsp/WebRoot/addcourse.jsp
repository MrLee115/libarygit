<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<jsp:useBean id="db" class="bean.dbcon" scope="page"/>
<html>
<script language="javascript"> 
function on_submit(){
   if(user.cno.value=="")
       {
       alert("�㻹û����д�γ̺��أ�");
       user.cno.focus();
       return false;
       }
        if(user.cname.value=="")
       {
       alert("�㻹û����д�γ����أ�");
       user.cname.focus();
       return false;
       }
     
}
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>ע��ҳ��</title>
</head>

<body>
<center>
<h1>��ӿγ�</h1>
<hr>
<form name="user" method="POST" action="do_addcourse.jsp" onSubmit="return on_submit()">
<table border="0" width="32%">
  <tr>
	<td width="25%">�γ̺ţ�</td>
	<td width="75%"><input type="text" name="cno" size="30%"></td>
</tr>
	<tr>
	<td>�γ���:</td>
	<td><input type="text" name="cname" size="30%"></td>
  </tr>
  <tr>
	<td>����ʱ��:</td>
	<td><input type="text" name="time" size="30%"></td>
  </tr>
	<tr>
	<td>���εص�:</td>
	<td><input type="text" name="address" size="30%"></td>
  </tr>
  <tr>
	<td>�ڿ���ʦ:</td>
	<td><input type="text" name="teacher" size="30%"></td>
  </tr>
  <tr>
	<td>��ʦ�绰:</td>
	<td><input type="text" name="phone" size="30%"></td>
  </tr>
  <tr>
	<td>�γ�ѧ��:</td>
	<td><input type="text" name="xuefen" size="30%"></td>
  </tr>
  <tr>
  	<td colspan="2" align="center">
	<input type="submit" value="�ύ">&nbsp;&nbsp;&nbsp;&nbsp; 
        <input type="reset" value="ȫ����д">
	</td>
	</tr>
</table>
</form>
<div align="center"><a href="Managecourse.jsp">����</a></div>
</center>
</body>
</html>
