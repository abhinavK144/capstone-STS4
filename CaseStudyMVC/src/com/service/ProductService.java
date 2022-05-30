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
public class ProductService implements productInterface{
	public void setProductDao(productDaoInte productDao) {
		this.productDao = productDao;
	}

	@Autowired
	productDaoInte    productDao;
	

	public ProductService() {
		System.out.println("ProductService init ....");
	}

	@Override
	public int addProductService(Product p) {
		//System.out.println("add product");
		int x=productDao.addProduct(p);
		return x;
	}

	@Override
	public boolean delProductService(int pid) {
		return productDao.delProduct(pid);
		
	}

	@Override
	public Product searchProductService(int pid) {
		return productDao.searchProduct(pid);
	}

//	@Override
//	public Product updateProductService(int pid ) {
//		System.out.println("pid"+pid);
//		
//		return productDao.updateProduct(pid);
//	}
	public Product updateProductService1(Product product) {
	
		
		return productDao.updateProduct1(product);
	}
	@Override
	public List displayAllproductService() throws SQLException {
		//System.out.println("displayAllproductService");
		List l=productDao.displayAllproduct();
		return l;
		
		
	}

}
