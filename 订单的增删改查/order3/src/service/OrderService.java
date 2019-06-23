package service;

import java.util.List;

import dao.OrderDao;
import dao.UserDao;
import entity.Order;

public class OrderService {
	private OrderDao orderDao = new OrderDao();
	private UserDao userDao = new UserDao();
	
	public void add(Order order) {
		// TODO Auto-generated method stub
		orderDao.insert(order);
	}

	public List<Order> getAllOrder() {
		// TODO Auto-generated method stub
		 List<Order> orders = orderDao.findAllOrder();
		 for(Order order : orders) {
			 order.setUser(userDao.findUserById(order.getUserId()));
		 }
		 return orders;
	}

	public void deleteOrder(String parameter) {
		// TODO Auto-generated method stub
		orderDao.delete(parameter);
	}

	public Order getOrderById(String parameter) {
		// TODO Auto-generated method stub
		return orderDao.findOrderById(parameter);
	}

	public void modify(Order order) {
		// TODO Auto-generated method stub
		orderDao.modify(order);
	}

	

	

}
