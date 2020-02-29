package org.bugmgmt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.bugmgmt.model.BugModel;
import org.bugmgmt.util.DBConnection;

public class BugDaoImpl implements BugDao {

	private static final String GET_ID = "SELECT count(bug_id) from list_bug_table";
	private static final String INSERT_BUG_D = "INSERT into list_bug_table (bug_id, severity, status, description, summary, created_by, priority) values (?,?,?,?,?,?,?);";
	private static final String SELECT_ALL_BUG_DATA = "SELECT * from list_bug_table";
	private static final String SELECT_BUG_USING_ID = "SELECT * from list_bug_table where bug_id=?";
	private static final String EDIT_BUG_USING_ID = "UPDATE list_bug_table SET severity=?, status=?, description=?, summary=?, created_by=?, priority=? where bug_id=?";
	private static final String DELETE_BUG_BY_ID = "DELETE from list_bug_table where bug_id=?";

	@Override
	public void saveBugData(BugModel bugData) {
		try (Connection connect = DBConnection.getConnection();
				PreparedStatement pst = connect.prepareStatement(INSERT_BUG_D);) {

			pst.setInt(1, bugData.getBugID());
			pst.setString(2, bugData.getSeverity());
			pst.setString(3, bugData.getStatus());
			pst.setString(4, bugData.getDescription());
			pst.setString(5, bugData.getSummary());
			pst.setString(6, bugData.getCreateBy());
			pst.setString(7, bugData.getPriority());
			pst.execute();

		} catch (SQLException | ClassNotFoundException e) {

			e.printStackTrace();
		}

	}

	@Override
	public int getListOfBugs() {

		int count = 0;
		try (Connection connect = DBConnection.getConnection();
				PreparedStatement pst = connect.prepareStatement(GET_ID);) {

			ResultSet rs = pst.executeQuery();

			count = rs.getRow();

		} catch (SQLException | ClassNotFoundException e) {

			e.printStackTrace();
		}
		return count;
	}

	@Override
	public List<BugModel> getAllBugData() {

		List<BugModel> allBugData = new ArrayList<>();

		try (Connection connect = DBConnection.getConnection();
				PreparedStatement pst = connect.prepareStatement(SELECT_ALL_BUG_DATA);) {

			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				BugModel allBugD = new BugModel();
				allBugD.setBugID(rs.getInt("bug_id"));
				allBugD.setSeverity(rs.getString("severity"));
				allBugD.setStatus(rs.getString("status"));
				allBugD.setDescription(rs.getString("description"));
				allBugD.setSummary(rs.getString("summary"));
				allBugD.setCreateBy(rs.getString("created_by"));
				allBugD.setPriority(rs.getString("priority"));
				// add bug data to the list
				allBugData.add(allBugD);
			}

		} catch (SQLException | ClassNotFoundException e) {

			e.printStackTrace();
		}

		return allBugData;
	}

	@Override
	public void deleteBugUsingId(int bug_id) {
		try (Connection connect = DBConnection.getConnection();
				PreparedStatement pst = connect.prepareStatement(DELETE_BUG_BY_ID);) {

			pst.setInt(1, bug_id);
			pst.executeUpdate();

		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}

	}

	@Override
	public BugModel getDetailsUsingId(int bug_id) {

		BugModel bugUpdate = new BugModel();

		try (Connection connect = DBConnection.getConnection();
				PreparedStatement pst = connect.prepareStatement(SELECT_BUG_USING_ID);) {

			pst.setInt(1, bug_id);
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				bugUpdate.setBugID(rs.getInt("bug_id"));
				bugUpdate.setSeverity(rs.getString("severity"));
				bugUpdate.setStatus(rs.getString("status"));
				bugUpdate.setDescription(rs.getString("description"));
				bugUpdate.setSummary(rs.getString("summary"));
				bugUpdate.setCreateBy(rs.getString("created_by"));
				bugUpdate.setPriority(rs.getString("priority"));
				pst.execute();

			}

		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return bugUpdate;

	}

	@Override
	public void updateBugData(BugModel bug) {
		try (Connection connect = DBConnection.getConnection();
				PreparedStatement pst = connect.prepareStatement(EDIT_BUG_USING_ID);) {

			pst.setString(1, bug.getSeverity());
			pst.setString(2, bug.getStatus());
			pst.setString(3, bug.getDescription());
			pst.setString(4, bug.getSummary());
			pst.setString(5, bug.getCreateBy());
			pst.setString(6, bug.getPriority());
			pst.setInt(7, bug.getBugID());
			pst.executeUpdate();

		} catch (SQLException | ClassNotFoundException e) {

			e.printStackTrace();
		}

	}

}
