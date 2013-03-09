package com.less.backend.dao;



public interface DAOFactory {

	LessUserDAO createLessUserDAO();

	ProductDAO createProductDAO();
}
