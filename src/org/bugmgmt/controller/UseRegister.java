package org.bugmgmt.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bugmgmt.model.UserInfo;

@WebServlet(name = "register", urlPatterns = { "/register" })
public class UseRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		UserInfo userInfo = new UserInfo();

		userInfo.setUsername(request.getParameter("username"));
		userInfo.setPassword(request.getParameter("password"));
		userInfo.setUser_type(request.getParameter("user_type"));

		System.out.println(userInfo.getUsername());
	}

}
