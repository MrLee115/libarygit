package bean;
import bean.dbcon;
import java.sql.*;
public class adminbean {
	private String tno;
	private String password;
	
	private ResultSet rs; 
    private dbcon db= new dbcon();
	
	public adminbean()
	{
		
	}
	
	public String getTno() {
		return tno;
	}

	public void setTno(String tno) {
		this.tno = tno;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String checkTeacher()
	{//教师登陆验证
		String backstr="";
		boolean mark=true;
			if(this.tno==null||this.tno.equals(""))
			{
				backstr+="<li>请输入<b>教师编号！</b></li><br>";
				mark=false;
			}
			if(this.password==null||this.password.equals(""))
			{
				backstr+="<li>请输入<b>密&nbsp;&nbsp;码！</b></li><br>";
				mark=false;
			}
			if(mark)
			{
				String sql="select * from adminInfo where tno='"+this.tno+"'and password='"+this.password+"'";
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
