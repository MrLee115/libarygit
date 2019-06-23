package bean;
import java.sql.*;
import java.util.*;

import bean.dbcon;
import bean.courseInfo;
public class XuankeBean 
{
	private Connection con;
	public XuankeBean()
	{
		this.con=dbcon.getConnection();
	}
	
	public courseInfo getcourseInfo(String courseId) throws Exception
	{//获得课程信息
		con=dbcon.getConnection();      
		Statement stmt = con.createStatement();
		ResultSet rst = stmt.executeQuery("select * from course where cno="+"'"+courseId+"'");
		courseInfo c= new courseInfo();
		while(rst.next())
		{			
			c.setCno(rst.getString("cno"));			
	
			c.setCname(rst.getString("cname"));
			
			c.setTime(rst.getString("time"));
					
			c.setAddress(rst.getString("address"));
			
			c.setTeacher(rst.getString("teacher"));
			
			c.setPhone(rst.getString("phone"));
			
			c.setXuefen(rst.getString("xuefen"));			

		}
		con.close();
		return c;
	}
	public void addcourse(courseInfo course,String sno) throws SQLException
	{
		try
		{
			con=dbcon.getConnection();        
			
			PreparedStatement pstmt = con.prepareStatement("insert into sc values(?,?,?,?,?,?,?,?,?)");
			
			pstmt.setString(1,sno);
			pstmt.setString(2,course.getCno());   		
			pstmt.setString(3,course.getCname());
			pstmt.setString(4,course.getTime());
			pstmt.setString(5,course.getAddress());
			pstmt.setString(6,course.getTeacher());
			pstmt.setString(7,course.getPhone());
			pstmt.setString(8,course.getXuefen());
			pstmt.setFloat(9,0);
			pstmt.executeUpdate();
			con.close();
		}
		catch(Exception e)
		{
			System.out.println("addcourse()异常！");
		}
		
	}
	

}
