package bean;
import java.sql.*;
import java.util.*;
import bean.scoretable;

public class dbcon
{
	private static Connection con;
	private Statement stm;
	private ResultSet rs;
	private static String classname="com.microsoft.jdbc.sqlserver.SQLServerDriver";
	private static String url="jdbc:microsoft:sqlserver://localhost:1433;DatabaseName=jsp_db";
		
	public dbcon()
	{		
	}	
	public static Connection getConnection()
	{//连接数据库                                                                                                                                                                                                                                                         
		try
		{
			Class.forName(classname);
		}
		catch(Exception e)
		{
			System.out.println("getConnection方法异常！");
			e.printStackTrace();
		}
		try{
			con = DriverManager.getConnection(url,"sa","123456");
		}
		catch(Exception e)
		{
			e.printStackTrace();
			con=null;
		}
		return con;
	}
	public Statement getStm()
	{
		try{
			getConnection();
			stm=con.createStatement();
		}catch(Exception e)
		{
			e.printStackTrace();
			System.out.println("getStm()方法异常！");
		}
		return stm;
	}
	public ResultSet getRs(String sql){
		getStm();
		if(sql==null)sql="";
		try{
			rs=stm.executeQuery(sql);
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("getRs()方法异常！");
			rs=null;
		}return rs;
	}
	public void closed(){
		try{
			if(rs!=null)rs.close();
		}
		catch(Exception e){e.printStackTrace();}
		try{
			if(stm!=null)stm.close();
		}catch(Exception e){e.printStackTrace();} 
		try{
			if(con!=null)con.close();
		}catch(Exception e){e.printStackTrace();}  
	}
	

	public String codeToString(String str)
	{//处理中文字符串的函数
	  String s=str;
	  try
	    {
	    byte tempB[]=s.getBytes("ISO-8859-1");
	    s=new String(tempB);
	    return s;
	   }
	  catch(Exception e)
	   {
	    return s;
	   }  
	}
	public void adduser(userbean user) throws SQLException
	{//注册用户信息入数据库
		try
		{
			con=dbcon.getConnection();   
			
			PreparedStatement pstmt = con.prepareStatement("insert into stuInfo values(?,?,?,?,?,?,?,?)");
			pstmt.setString(1,codeToString(user.getSno()));							
			pstmt.setString(2,codeToString(user.getSname()));
			pstmt.setString(3,codeToString(user.getPassword()));
			pstmt.setString(4,codeToString(user.getSdept()));
			pstmt.setString(5,codeToString(user.getSex()));
			pstmt.setString(6,codeToString(user.getPhone()));
			pstmt.setString(7,codeToString(user.getQuestion()));
			pstmt.setString(8,codeToString(user.getAnswer()));
			pstmt.execute();
			con.close();
		}
		catch(Exception e)
		{
			
		}
		
	}
	public void addcourse(courseInfo course) throws SQLException
	{//增加的课程信息入数据库
		try
		{
			con=dbcon.getConnection();   
			
			PreparedStatement pstmt = con.prepareStatement("insert into course values(?,?,?,?,?,?,?)");
			pstmt.setString(1,codeToString(course.getCno()));							
			pstmt.setString(2,codeToString(course.getCname()));
			pstmt.setString(3,codeToString(course.getTime()));
			pstmt.setString(4,codeToString(course.getAddress()));
			pstmt.setString(5,codeToString(course.getTeacher()));
			pstmt.setString(6,codeToString(course.getPhone()));
			pstmt.setString(7,codeToString(course.getXuefen()));
			pstmt.execute();
			con.close();
		}
		catch(Exception e)
		{
			System.out.println("addcourse()异常！");
		}
		
	}
	//管理员 用 删除课程信息
	public void deletecourse(String courseId)
	{
		String sql="delete from course where cno="+"'"+courseId+"'";
		try{
			con = getConnection();
			Statement stm = con.createStatement();
			stm.execute(sql);
			con.close();
			stm.close();
			
		}catch(Exception e)
		{
			e.printStackTrace();
			System.out.println("deletecourse()函数异常！");
		}
	}
	//验证函数集
	public boolean checkcourse(String number)
	{//添加课程信息时的验证
		boolean num=false;
		try{
			con = getConnection();
			Statement stm = con.createStatement();
			ResultSet result = stm.executeQuery("select * from course where cno='"+number+"'");
			if(result.next())
				num=true;
			else
				num=false;
			con.close();
			stm.close();
			result.close();
		}
		catch(Exception e)
		{
			System.out.print("添加课程验证异常");
			num=false;
		}
		return num;
	}
	public boolean checkuser_regester(String number)
	{//
		boolean num=false;
		try{
			con = getConnection();
			Statement stm = con.createStatement();
			ResultSet result = stm.executeQuery("select * from stuInfo where sno='"+number+"'");
			if(result.next())
				num=true;
			else
				num=false;
			con.close();
			stm.close();
			result.close();
		}
		catch(Exception e)
		{
			System.out.print("学生注册验证异常");
			num=false;
		}
		return num;
	}
	@SuppressWarnings("unchecked")
	public Collection getCourseInfo()
	{
		try
		{
			con = getConnection();
			Statement stm = con.createStatement();
			ResultSet result = stm.executeQuery("select * from course");
			Collection ret = new ArrayList();
			while(result.next())
			{
				courseInfo temp = new courseInfo();
				temp.setCno(result.getString("cno"));
				temp.setCname(result.getString("cname"));
				temp.setTime(result.getString("time"));
				temp.setAddress(result.getString("address"));
				temp.setTeacher(result.getString("teacher"));
				temp.setPhone(result.getString("phone"));
				temp.setXuefen(result.getString("xuefen"));
				ret.add(temp);
			}
			con.close();
			return ret;
		}
		catch(Exception e)
		{
			System.out.println("getCourseInfo()方法异常！");
		}
		return null;	
	}
	//删除选课课信息
	public void deletexuanke(String userId,String courseId)
	{

		String sql="delete from sc where sno="+"'"+userId+"'"+"and cno="+"'"+courseId+"'";
		try{
			con = getConnection();
			Statement stm = con.createStatement();
			stm.execute(sql);
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
			System.out.println("deletexuanke()函数异常！");
		}
	}
	//查询成绩
	@SuppressWarnings("unchecked")
	public Collection getScoreInfo(String userId)
	{
		//String sql="select * from scoretable where sno="+"'"+userId+"'";
		String sql="select sno,cno,cname,xuefen,score from sc where sno="+"'"+userId+"'";
		try
		{
			con = getConnection();
			Statement stm = con.createStatement();
			ResultSet result = stm.executeQuery(sql);
			Collection ret = new ArrayList();
			while(result.next())
			{
				scoretable temp = new scoretable();
				temp.setSno(userId);
				temp.setCno(result.getString("cno"));
				temp.setCname(result.getString("cname"));				
				temp.setXuefen(result.getString("xuefen"));
				temp.setScore(result.getString("score"));
				ret.add(temp);
			}
			con.close();
			stm.close();
			result.close();
			return ret;
		}
		catch(Exception e)
		{
			System.out.println("getScoreInfo()方法异常！");
		}
		return null;	
	}
}