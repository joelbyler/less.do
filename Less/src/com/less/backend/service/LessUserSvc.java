package com.less.backend.service;

import com.less.backend.model.LessUser;

public interface LessUserSvc {

	void createLessUser(LessUser lessUser);

	LessUser getLessUserById(String lessUserId);

	String userExistGoogle(String id);

}
