package com.less.backend.service.impl;

import com.less.backend.dao.DAOFactory;
import com.less.backend.dao.impl.DAOFactoryImpl;
import com.less.backend.model.LessUser;
import com.less.backend.service.LessUserSvc;

public class LessUserSvcImpl implements LessUserSvc {

	private DAOFactory daoFactory = new DAOFactoryImpl();

	@Override
	public void createLessUser(LessUser lessUser) {
		// TODO memcache stuff
		daoFactory.createLessUserDAO().createLessUser(lessUser);
	}

	@Override
	public LessUser getLessUserById(String lessUserId) {
		// TODO memcache stuff
		return daoFactory.createLessUserDAO().getLessUserById(lessUserId);
	}

	@Override
	public String userExistGoogle(String googleToken) {
		return daoFactory.createLessUserDAO().userExistGoogle(googleToken);
	}

}
