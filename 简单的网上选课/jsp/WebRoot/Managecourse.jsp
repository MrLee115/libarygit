<%@ page contentType="text/html;charset=gb2312" import="java.sql.*"%>

<html>
  <head>

    
    <title>�γ̹���</title>
  </head>
  
  <body>
  <center>
  <h2><font color="red">ѡ�ι���</font></h2>
  <hr/>
  <br/>
  <br/>
  <% 
   out.println("<center><a href=course.jsp"+">�γ���ʾ</a><br/><br/>");
   out.println("<center><a href="+"addcourse.jsp"+">���ӿγ�</a><br/><br/><a href="+"deletecourse.jsp"+">ɾ���γ�</a><br/><br/></center>");
   out.println("<center><a href="+"updatecourse.jsp"+">�޸Ŀγ�</a><br/><br/>");
   out.println("<center><a href=enter_score.jsp"+">¼��ɼ�</a>");
  %>
    </center>
  </body>
</html>
