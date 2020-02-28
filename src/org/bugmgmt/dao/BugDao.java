package org.bugmgmt.dao;

import java.util.List;

import org.bugmgmt.model.BugModel;

public interface BugDao {

	void saveBugData(BugModel bugData);

	List<BugModel> getAllBugData();

	int getListOfBugs();

}
