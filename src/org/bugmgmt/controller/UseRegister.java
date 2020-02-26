package org.bugmgmt.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bugmgmt.model.UserInfo;
import org.bugmgmt.service.UserService;
import org.bugmgmt.service.UserServiceImpl;

@WebServlet(name = "register", urlPatterns = { "/register" })
public class UseRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	UserService userService = new UserServiceImpl();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		UserInfo userInfo = new UserInfo();

		userInfo.setUsername(request.getParameter("username"));
		userInfo.setPassword(request.getParameter("password"));
		userInfo.setUser_type(request.getParameter("user_type"));

		// Method to check if the username already exists in username table
		// userService.checkUsernameExistsInDatabase(userInfo.getUsername);

		/*
		 * if username is already in table then ask user to enter new username
		 * 
		 */

		userService.saveUserInfo(userInfo);
	}

}
