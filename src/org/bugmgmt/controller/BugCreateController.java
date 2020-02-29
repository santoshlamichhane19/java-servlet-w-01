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

@WebServlet(name = "create", urlPatterns = { "/create", "/listpost" })
public class BugCreateController extends HttpServlet {
	public static final String DELETE_PAGE = "listpost.jsp";
	public static final String LIST_PAGE = "listpost.jsp";
	public static final String UPDATE_BUG_PAGE = "edit.jsp";

	private static final long serialVersionUID = 1L;

	BugService bugService = new BugServiceImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getParameter("action");
		String fwdrequest = "";

		if (action.equals("list_bug")) {

			fwdrequest = LIST_PAGE;
			request.setAttribute("bugTbl", bugService.getAllBugData());

		} else if (action.equals("delete_bug")) {
			bugService.deleteBugUsingId(Integer.parseInt(request.getParameter("id")));
			request.setAttribute("bugTbl", bugService.getAllBugData());
			fwdrequest = DELETE_PAGE;

		} else if (action.equals("update_bug")) {
			request.setAttribute("bugEdit", bugService.getDetailsUsingId(Integer.parseInt(request.getParameter("id"))));
			fwdrequest = UPDATE_BUG_PAGE;

		}

		RequestDispatcher rd = request.getRequestDispatcher(fwdrequest);
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

		String bugid = request.getParameter("bugID");

		if (bugid == null | bugid.isEmpty()) {
			bugService.saveRequestDataForBugs(bug);

		} else {
			bug.setBugID(Integer.parseInt(bugid));
			bugService.updateBugData(bug);

		}
		RequestDispatcher rd = request.getRequestDispatcher("create.jsp");
		request.setAttribute("bugTbl", bugService.getAllBugData());
		rd.forward(request, response);

	}

}
