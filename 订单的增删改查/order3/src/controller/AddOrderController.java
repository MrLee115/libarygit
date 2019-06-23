package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Order;
import service.OrderService;
import service.UserService;


@WebServlet("/add")
public class AddOrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("users", new UserService().getAllUser());
		request.getRequestDispatcher("/WEB-INF/jsp/add.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Double price = Double.parseDouble(request.getParameter("price"));
		Integer userId = Integer.parseInt(request.getParameter("userId"));
		Order order = new Order();
		order.setPrice(price);
		order.setUserId(userId);
		new OrderService().add(order);
		response.sendRedirect("add");
	}

}
