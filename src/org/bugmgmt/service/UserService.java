package org.bugmgmt.service;

import org.bugmgmt.model.UserInfo;

public interface UserService {

	void saveUserInfo(UserInfo user);

	boolean isValidLogin(String username, String password);

}
