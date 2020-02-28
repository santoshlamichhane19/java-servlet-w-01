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
	private static final String INSERT_BUG_D = "INSERT into list_bug_table (bug_id, severity, status, description, summary, created_by) values (?,?,?,?,?,?);";
	private static final String SELECT_ALL_BUG_DATA = "SELECT * from list_bug_table";

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
				// add bug data to the list
				allBugData.add(allBugD);
			}

		} catch (SQLException | ClassNotFoundException e) {

			e.printStackTrace();
		}

		return allBugData;
	}

}
