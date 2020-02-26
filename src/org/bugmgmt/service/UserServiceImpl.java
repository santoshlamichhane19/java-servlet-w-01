package org.bugmgmt.service;

import org.bugmgmt.dao.UserDao;
import org.bugmgmt.dao.UserDaoImpl;
import org.bugmgmt.model.UserInfo;

public class UserServiceImpl implements UserService {

	UserDao userControl = new UserDaoImpl();

	@Override
	public void saveUserInfo(UserInfo user) {

		userControl.saveUserData(user);

	}

	@Override
	public boolean isValidLogin(String username, String password) {
		return userControl.isValidLogin(username, password);

	}

}
