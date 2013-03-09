package com.less.backend.service;

public interface ServiceFactory {

	LessUserSvc createLessUserService();
	ProductSvc createProductService();
}
