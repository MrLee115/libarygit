package dao;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;

import entity.User;
import util.MyUtil;

public class UserDao {

	public List<User> findAllUser() {
		// TODO Auto-generated method stub
		return MyUtil.getJdbcTemplate().query("select * from user",new BeanPropertyRowMapper<>(User.class));
	}

	public User findUserById(Integer userId) {
		// TODO Auto-generated method stub
		return MyUtil.getJdbcTemplate().query("select * from user where id=?", new BeanPropertyRowMapper<>(User.class),userId).get(0);
	}

}
