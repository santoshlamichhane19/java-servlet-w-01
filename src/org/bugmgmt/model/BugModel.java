package org.bugmgmt.model;

public class BugModel {

	private int bugID;
	private String severity;
	private String status;
	private String description;
	private String summary;
	private String createBy;
	private String priority;
	private String comment;

	public int getBugID() {
		return bugID;
	}

	public void setBugID(int bugID) {
		this.bugID = bugID;
	}

	public String getSeverity() {
		return severity;
	}

	public void setSeverity(String serverity) {
		this.severity = serverity;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public String getCreateBy() {
		return createBy;
	}

	public void setCreateBy(String createBy) {
		this.createBy = createBy;
	}

	public String getPriority() {
		return priority;
	}

	public void setPriority(String priority) {
		this.priority = priority;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

}
