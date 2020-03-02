package org.bugmgmt.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bugmgmt.service.BugService;
import org.bugmgmt.service.BugServiceImpl;

@WebServlet(name = "filter", urlPatterns = { "/filter" })
public class FilterData extends HttpServlet {
	private static final long serialVersionUID = 1L;

	BugService filterCount = new BugServiceImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String filter = request.getParameter("getaction");

		if (filter.equals("totaldefects")) {

		}

	}

}
