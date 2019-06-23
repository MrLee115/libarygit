package dao;

import java.util.Date;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;

import entity.Order;
import util.MyUtil;

public class OrderDao {

	public void insert(Order order) {
		// TODO Auto-generated method stub
		MyUtil.getJdbcTemplate().update("insert into user_order(price,userId,ordertime) values(?,?,?)", order.getPrice(),order.getUserId(),new Date());
	}

	public List<Order> findAllOrder() {
		// TODO Auto-generated method stub
		return MyUtil.getJdbcTemplate().query("select * from user_order", new BeanPropertyRowMapper<>(Order.class));
	}

	public void delete(String parameter) {
		// TODO Auto-generated method stub
		MyUtil.getJdbcTemplate().update("delete from user_order  where id =?",parameter);
	}

	public Order findOrderById(String parameter) {
		// TODO Auto-generated method stub
		return MyUtil.getJdbcTemplate().query("select * from user_order where id = ?",new BeanPropertyRowMapper<>(Order.class),parameter).get(0);
	}

	public void modify(Order order) {
		// TODO Auto-generated method stub
		MyUtil.getJdbcTemplate().update("update  user_order set price=?,userId=? where id=?",order.getPrice(),order.getUserId(),order.getId());
	}

}
