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
	{//��ʦ��½��֤
		String backstr="";
		boolean mark=true;
			if(this.tno==null||this.tno.equals(""))
			{
				backstr+="<li>������<b>��ʦ��ţ�</b></li><br>";
				mark=false;
			}
			if(this.password==null||this.password.equals(""))
			{
				backstr+="<li>������<b>��&nbsp;&nbsp;�룡</b></li><br>";
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
