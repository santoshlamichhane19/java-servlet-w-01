package org.bugmgmt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.bugmgmt.model.UserInfo;
import org.bugmgmt.util.DBConnection;

public class UserDaoImpl implements UserDao {

	private static String INSERT_SQL = "INSERT INTO user_info_table  (username, password, user_type) values (?,?,?)";
	private static String SELECT_UN_PWD = "SELECT username, password from user_info_table where username=? and password=?;";

	@Override
	public void saveUserData(UserInfo user) {
		try (Connection connect = DBConnection.getConnection();
				PreparedStatement pst = connect.prepareStatement(INSERT_SQL);) {

			pst.setString(1, user.getUsername());
			pst.setString(2, user.getPassword());
			pst.setString(3, user.getUser_type());
			pst.execute();

		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}

	}

	@Override
	public boolean isValidLogin(String username, String password) {
		boolean isAuth = false;
		try (Connection conn = DBConnection.getConnection();
				PreparedStatement unpstmt = conn.prepareStatement(SELECT_UN_PWD);) {

			unpstmt.setString(1, username);
			unpstmt.setString(2, password);
			ResultSet rs = unpstmt.executeQuery();
			if (rs.next()) {
				isAuth = true;
			}

		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return isAuth;
	}
}
