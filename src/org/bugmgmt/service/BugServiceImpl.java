package org.bugmgmt.service;

import java.util.List;

import org.bugmgmt.dao.BugDao;
import org.bugmgmt.dao.BugDaoImpl;
import org.bugmgmt.model.BugModel;

public class BugServiceImpl implements BugService {

	BugDao bugDao = new BugDaoImpl();

	@Override
	public void saveRequestDataForBugs(BugModel bugData) {
		bugDao.saveBugData(bugData);

	}

	@Override
	public int getTotalCount() {
		return bugDao.getListOfBugs();
	}

	@Override
	public List<BugModel> getAllBugData() {
		return bugDao.getAllBugData();
	}

	@Override
	public BugModel getDetailsUsingId(int bug_id) {
		return bugDao.getDetailsUsingId(bug_id);

	}

	@Override
	public void deleteBugUsingId(int bug_id) {
		bugDao.deleteBugUsingId(bug_id);

	}

	@Override
	public void updateBugData(BugModel bug) {
		bugDao.updateBugData(bug);

	}

}
