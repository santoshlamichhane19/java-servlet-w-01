package org.bugmgmt.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bugmgmt.model.BugModel;
import org.bugmgmt.service.BugService;
import org.bugmgmt.service.BugServiceImpl;

@WebServlet(name = "create", urlPatterns = { "/create" })
public class BugCreateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	BugService bugService = new BugServiceImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher rd = request.getRequestDispatcher("listpost.jsp");
		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		BugModel bug = new BugModel();

		bug.setSummary(request.getParameter("bugSummary"));
		bug.setPriority(request.getParameter("bugPriority"));
		bug.setSeverity(request.getParameter("bugSeverity"));
		bug.setDescription(request.getParameter("bugDescription"));
		bug.setCreateBy(request.getParameter("createBy"));
		bug.setStatus(request.getParameter("bugStatus"));

		bugService.saveRequestDataForBugs(bug);
		RequestDispatcher rd = request.getRequestDispatcher("listpost.jsp");
		request.setAttribute("bugTbl", bugService.getAllBugData());
		rd.forward(request, response);

	}

}
