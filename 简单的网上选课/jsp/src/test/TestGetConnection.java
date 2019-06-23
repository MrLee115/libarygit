package test;

import org.junit.Test;

import bean.dbcon;

public class TestGetConnection {

	@Test
	public void testGetConnection() {
		dbcon db = new dbcon();
		System.out.println(db.getConnection());
	}

}
