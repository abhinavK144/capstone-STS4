package com.dao;

import java.sql.SQLException;

import com.model.Product;
import java.util.*
;public interface productDaoInte {
	int addProduct(Product p);
	boolean delProduct(int pid);
	Product searchProduct(int pid);
	//Product updateProduct(int pid);
	Product updateProduct1(Product product);
	List<Product> displayAllproduct() throws SQLException;
}
