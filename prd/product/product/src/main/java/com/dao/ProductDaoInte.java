package com.dao;

import java.sql.SQLException;

import com.model.Product;
import java.util.*;
	
	public interface ProductDaoInte
	{
	int addProduct(Product p);
	int delProduct();
	Product searchProduct(int product_id);
	Product updateProduct(int product_id);
	List<Product> displayAllproduct() throws SQLException;
}
