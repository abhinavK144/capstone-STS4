package com.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.model.Product;
@Repository
//dao object productDao
public class ProductDao implements ProductDaoInte {
@Autowired
	JdbcTemplate jdbc;

	public void setJdbc(JdbcTemplate jdbc) {
	this.jdbc = jdbc;
}


	public ProductDao()  {
		System.out.println("Product Dao init");
	
	}
		

	@Override
	public int addProduct(Product p) {
		//p=new Product(201, "Mouse",1200);
		//int sid= new Random().nextInt(100000);
		String query="insert into product  values ( "+p.getProduct_id()+",'"+p.getCatego_id()+"','"+p.getProduct_name()+"','"+p.getProduct_description()+"','"+p.getProduct_price()+"','"+p.getProduct_stock()+"')"; 						
		
		int x=jdbc.update(query);
		//jdbc.
		
		
		return x;
		
	}

	@Override
	public int delProduct() {
		return 0;
		
	}

	@Override
	public Product searchProduct(int product_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Product updateProduct(int product_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> displayAllproduct() throws SQLException {
		System.out.println("displayAllproduct");
		String s1="select * from product";
		List l=jdbc.queryForList(s1);
		return l;
		
		
		
		
		
	}

}
