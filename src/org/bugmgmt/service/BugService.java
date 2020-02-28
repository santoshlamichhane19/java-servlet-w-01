package org.bugmgmt.service;

import java.util.List;

import org.bugmgmt.model.BugModel;

public interface BugService {

	void saveRequestDataForBugs(BugModel bugData);

	List<BugModel> getAllBugData();

	int getTotalCount();

}
