package org.bugmgmt.service;

import java.util.List;

import org.bugmgmt.dao.BugDao;
import org.bugmgmt.dao.BugDaoImpl;
import org.bugmgmt.model.BugModel;

public class BugServiceImpl implements BugService {

	BugDao budDao = new BugDaoImpl();

	@Override
	public void saveRequestDataForBugs(BugModel bugData) {
		budDao.saveBugData(bugData);

	}

	@Override
	public int getTotalCount() {
		return budDao.getListOfBugs();
	}

	@Override
	public List<BugModel> getAllBugData() {
		return budDao.getAllBugData();
	}

}
