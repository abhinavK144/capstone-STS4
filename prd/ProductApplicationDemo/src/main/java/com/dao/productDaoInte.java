package com.dao;

import java.sql.SQLException;

import com.model.Product;
import java.util.*
;public interface productDaoInte {
	int addProduct(Product p);
	int delProduct();
	Product searchProduct(int productid);
	Product updateProduct(int productid);
	List<Product> displayAllproduct() throws SQLException;
}
