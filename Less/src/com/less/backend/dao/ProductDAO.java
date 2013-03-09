package com.less.backend.dao;

import java.util.List;

import com.less.backend.model.Comment;
import com.less.backend.model.Product;

public interface ProductDAO {

	void addComment(Comment comment);

	void createProduct(Product product);

	void rateUpProduct(Product product);

	void rateDownProduct(Product product);

	Product getProductById(String productId);

	List<Product> getProductsByCategory(String category);

}
