package service;

import java.util.List;

import dao.UserDao;
import entity.User;

public class UserService {
	private UserDao userDao = new UserDao();

	public List<User> getAllUser() {
		// TODO Auto-generated method stub
		return userDao.findAllUser();
	}

	

}
