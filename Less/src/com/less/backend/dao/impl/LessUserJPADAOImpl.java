package com.less.backend.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.less.backend.dao.LessUserDAO;
import com.less.backend.model.LessUser;
import com.less.util.UIDGenerator;

public class LessUserJPADAOImpl implements LessUserDAO {

	private static EntityManager getEntityManager() {
		return EMF.get().createEntityManager();
	}

	@SuppressWarnings("unchecked")
	@Override
	public String userExistGoogle(String googleId) {
		String res = "";
		EntityManager mgr = getEntityManager();
		try {
			Query query = mgr
					.createQuery("select s From LessUser as s WHERE s.googleId = :googleId");
			query.setParameter("googleId", googleId);
			List<LessUser> users = (List<LessUser>) query.getResultList();
			if (!users.isEmpty()) {
				res = users.get(0).getKey().getName();
			}
		} finally {
			mgr.close();
		}
		return res;
	}

	@Override
	public void createLessUser(LessUser lessUser) {
		EntityManager mgr = getEntityManager();
		Key key = KeyFactory.createKey(LessUser.class.getSimpleName(),
				UIDGenerator.getInstance().getKey());
		try {
			lessUser.setKey(key);
			mgr.persist(lessUser);
		} finally {
			mgr.close();
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public LessUser getLessUserById(String lessUserId) {
		EntityManager mgr = getEntityManager();
		LessUser res = null;
		try {
			Key key = KeyFactory.createKey(LessUser.class.getSimpleName(),
					lessUserId);
			Query query = mgr
					.createQuery("select s.username, s.email From LessUser as s WHERE s.key = :lessUserId");
			query.setParameter("lessUserId", key);
			List<LessUser> users = (List<LessUser>) query.getResultList();
			if (!users.isEmpty()) {
				res = (LessUser) users.get(0);
			}
		} finally {
			mgr.close();
		}
		return res;
	}
}
