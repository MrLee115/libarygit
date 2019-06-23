package util;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

public class MyUtil {
	private static final String url = "jdbc:mysql://localhost:3306/db123";
	private static final String username = "root";
	private static final String password = "123456";
		
	public static JdbcTemplate getJdbcTemplate() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	  return new JdbcTemplate(new DriverManagerDataSource(url, username, password));
	}
		
}
