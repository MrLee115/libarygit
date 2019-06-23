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

/**
 * Servlet implementation class ModifyOrderController
 */
@WebServlet("/modify")
public class ModifyOrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;

   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("users", new UserService().getAllUser());
		request.setAttribute("order", new OrderService().getOrderById(request.getParameter("id")));
		request.getRequestDispatcher("/WEB-INF/jsp/modify.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Order order = new Order();
		order.setId(Integer.parseInt(request.getParameter("id")));
		order.setPrice(Double.parseDouble(request.getParameter("price")));
		order.setUserId(Integer.parseInt(request.getParameter("userId")));
		new OrderService().modify(order);
		response.sendRedirect("display");
	}

}
