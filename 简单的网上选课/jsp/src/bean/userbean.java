package bean;
import bean.*;
import java.sql.*;

@SuppressWarnings("unused")
public class userbean 
{
	private String sno;	
	private String sname;	
	private String password;	
	private String sdept;
	private String sex;
	private String phone;
	private String question;
	private String answer;
	
	private ResultSet rs; 
    private dbcon db= new dbcon();
	public userbean()
	{
	}
	public String getSno()
	{
		return sno;
	}
	public void setSno(String sno)
	{
		this.sno = sno;
	}
	public String getSname()
	{
		return sname;
	}
	public void setSname(String sname)
	{
		this.sname = sname;
	}
	public String getPassword()
	{
		return password;
	}
	public void setPassword(String password)
	{
		this.password = password;
	}
	public String getSdept()
	{
		return sdept;
	}
	public void setSdept(String sdept)
	{
		this.sdept = sdept;
	}
	public String getSex()
	{
		return sex;
	}
	public void setSex(String sex)
	{
		this.sex = sex;
	}
	public String getPhone()
	{
		return sex;
	}
	public void setPhone(String phone)
	{
		this.phone = phone;
	}
	public String getQuestion()
	{
		return question;
	}
	public void setQuestion(String question)
	{
		this.question = question;
	}
	public String getAnswer()
	{
		return answer;
	}
	public void setAnswer(String answer)
	{
		this.answer = answer;
	}
	
	
	
	public String checkuser()
	{//学生登陆验证
		String backstr="";
		boolean mark=true;
			if(this.sno==null||this.sno.equals(""))
			{
				backstr+="<li>请输入<b>学号！</b></li><br>";
				mark=false;
			}
			if(this.password==null||this.password.equals(""))
			{
				backstr+="<li>请输入<b>密&nbsp;&nbsp;码！</b></li><br>";
				mark=false;
			}
			if(mark)
			{
				String sql="select * from stuInfo where sno='"+this.sno+"'and password='"+this.password+"'";
				try{
					rs=db.getRs(sql);
					if(!rs.next())
						backstr="false";				
					else
	    		    	backstr="true";
				}catch(Exception e){e.printStackTrace();}				
			}
			db.closed();
			return backstr;    	
	}
	
	
	
}
	