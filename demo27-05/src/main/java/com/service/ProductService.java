package com.service;

import java.util.*;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ProductDao;
import com.dao.productDaoInte;
import com.model.Product;

@Service
//productService
public class ProductService implements productInterface {
	public void setProductDao(productDaoInte productDao) {
		this.productDao = productDao;
	}

	@Autowired
	productDaoInte productDao;

	public ProductService() {
		System.out.println("ProductService init ....");
	}

	@Override
	public int addProductService(Product p) {
		// System.out.println("add product");
		int x = productDao.addProduct(p);
		return x;
	}

	@Override
	public boolean delProductService(int Product_id) {
		return productDao.delProduct(Product_id);

	}

	@Override
	public Product searchProductService(int Product_id) {
		return productDao.searchProduct(Product_id);
	}

//	@Override
//	public Product updateProductService(int Product_id ) {
//		System.out.println("Product_id"+Product_id);
//		
//		return productDao.updateProduct(Product_id);
//	}

	public Product updateProductService1(Product product) {
		return productDao.updateProduct1(product);
	}

	@Override
	public List displayAllproductService() throws SQLException {
		// System.out.println("displayAllproductService");
		List l = productDao.displayAllproduct();
		return l;

	}

}
