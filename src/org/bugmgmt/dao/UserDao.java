package org.bugmgmt.dao;

import org.bugmgmt.model.UserInfo;

public interface UserDao {

	void saveUserData(UserInfo user);

	boolean isValidLogin(String username, String password);

}
