package com.less.backend.service.impl;

import com.less.backend.service.LessUserSvc;
import com.less.backend.service.ProductSvc;
import com.less.backend.service.ServiceFactory;

public class ServiceFactoryImpl implements ServiceFactory {

	@Override
	public LessUserSvc createLessUserService() {
		return new LessUserSvcImpl();
	}

	@Override
	public ProductSvc createProductService() {
		return new ProductSvcImpl();
	}

}
