package com.less.backend.dao;

import com.less.backend.model.LessUser;

public interface LessUserDAO {

	void createLessUser(LessUser lessUser);

	LessUser getLessUserById(String lessUserId);

	String userExistGoogle(String googleToken);

}
