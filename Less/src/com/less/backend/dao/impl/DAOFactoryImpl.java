package com.less.backend.dao.impl;

import com.less.backend.dao.DAOFactory;
import com.less.backend.dao.LessUserDAO;
import com.less.backend.dao.ProductDAO;

public class DAOFactoryImpl implements DAOFactory {

	@Override
	public LessUserDAO createLessUserDAO() {
		return new LessUserJPADAOImpl();
	}

	@Override
	public ProductDAO createProductDAO() {
		return new ProductJPADAOImpl();
	}

}
