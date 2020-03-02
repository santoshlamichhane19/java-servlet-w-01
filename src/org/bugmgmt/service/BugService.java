package org.bugmgmt.service;

import java.util.List;

import org.bugmgmt.model.BugModel;

public interface BugService {

	void saveRequestDataForBugs(BugModel bugData);

	List<BugModel> getAllBugData();

	int getTotalCount();

	BugModel getDetailsUsingId(int bug_id);

	void deleteBugUsingId(int bug_id);

	void updateBugData(BugModel bug);

	List<Integer> getBugDataCount();

}
