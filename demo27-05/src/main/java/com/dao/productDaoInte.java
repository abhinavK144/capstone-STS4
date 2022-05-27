package com.dao;

import java.sql.SQLException;

import com.model.Product;
import java.util.*
;public interface productDaoInte {
	int addProduct(Product p);
	boolean delProduct(int Product_id);
	Product searchProduct(int Product_id);
	//Product updateProduct(int Product_id);
	Product updateProduct1(Product product);
	List<Product> displayAllproduct() throws SQLException;
}
