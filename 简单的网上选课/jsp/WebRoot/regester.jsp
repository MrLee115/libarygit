<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<jsp:useBean id="db" class="bean.dbcon" scope="page"/>
<html>
<script language="javascript"> 
function check(){
   if(user.sno.value=="")
       {
       alert("ѧ�Ŷ��������㣡");
       user.sno.focus();
       return false;
       }
        if(user.sname.value=="")
       {
       alert("�����ֲ��");
       user.sname.focus();
       return false;
       }   
       if(user.password.value=="")
       {
       alert("���������룡");
       user.password.focus();
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
<h1>�û�ע��</h1>
<div align="right"><a href="index.jsp">���ص�¼ҳ��</a></div>
<hr>
<form name="user" method="POST" action="do_regester.jsp" onSubmit="return check()">
<table border="1" width="45%">
  <tr>
	<td width="20%">ѧ�ţ�</td>
	<td width="80%"><input type="text" name="sno" size="30%"></td>
</tr>
	<tr>
	<td>����:</td>
	<td><input type="text" name="sname" size="30%"></td>
  </tr>
  <tr>
	<td>����:</td>
	<td><input type="password" name="password" size="33%"></td>
  </tr>
	<tr>
	<td>Ժϵ:</td>
	<td><input type="text" name="sdept" size="30%"></td>
  </tr>
  <tr>
	<td>�Ա�:</td>
	<td><input type="radio" name="sex" value="��" checked>��
		<input type="radio" name="sex" value="Ů">Ů
        </td>
		</tr>
  <tr>
	<td>�绰:</td>
	<td><input type="text" name="phone" size="30%"></td>
  </tr>
  <tr>
	<td>��������:</td>
	<td><input type="text" name="question" size="30%"></td>
  </tr>
  <tr>
	<td>��:</td>
	<td><input type="text" name="answer" size="30%"></td>	
	</tr>
  <tr>
  	<td colspan="2" align="center">
	<input type="submit" value="�ύ">&nbsp;&nbsp;&nbsp;&nbsp; 
        <input type="reset" value="ȫ����д">
	</td>
	</tr>
</table>
</form>
</center>
</body>
</html>
