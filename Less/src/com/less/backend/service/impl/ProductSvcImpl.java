package com.less.backend.service.impl;

import java.util.List;

import com.less.backend.dao.DAOFactory;
import com.less.backend.dao.ProductDAO;
import com.less.backend.dao.impl.DAOFactoryImpl;
import com.less.backend.model.Comment;
import com.less.backend.model.Product;
import com.less.backend.service.ProductSvc;

public class ProductSvcImpl implements ProductSvc {

	private DAOFactory daoFactory;
	private ProductDAO productDAO;

	public ProductSvcImpl() {
		daoFactory = new DAOFactoryImpl();
		productDAO = daoFactory.createProductDAO();
	}

	@Override
	public void addComment(Comment comment) {
		productDAO.addComment(comment);
	}

	@Override
	public void createProduct(Product product) {
		productDAO.createProduct(product);
	}

	@Override
	public void rateUpProduct(Product product) {
		productDAO.rateUpProduct(product);
	}

	@Override
	public void rateDownProduct(Product product) {
		productDAO.rateDownProduct(product);
	}

	@Override
	public Product getProductById(String productId) {
		return productDAO.getProductById(productId);
	}

	@Override
	public List<Product> getProductsByCategory(String category) {
		return productDAO.getProductsByCategory(category);
	}

}
