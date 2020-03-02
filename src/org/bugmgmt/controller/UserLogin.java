package org.bugmgmt.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bugmgmt.model.UserInfo;
import org.bugmgmt.service.UserService;
import org.bugmgmt.service.UserServiceImpl;

@WebServlet(name = "login", urlPatterns = { "/login" })
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	UserService userService = new UserServiceImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String username = "janedoe";
		RequestDispatcher rd = request.getRequestDispatcher("headlayout.jsp");
		request.setAttribute("username", username);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		UserInfo userInfo = new UserInfo();

		userInfo.setUsername(request.getParameter("username"));
		userInfo.setPassword(request.getParameter("password"));

		if (userService.isValidLogin(userInfo.getUsername(), userInfo.getPassword())) {

			response.sendRedirect("dashboard.jsp");
		} else {

			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			request.setAttribute("msg", "Incorrect username or password");
			rd.include(request, response);

		}

	}

}
