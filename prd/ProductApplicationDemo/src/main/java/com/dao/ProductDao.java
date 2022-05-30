
package com.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.model.Product;
@Repository
public class ProductDao implements productDaoInte {
@Autowired
	JdbcTemplate jdbc;

	public void setJdbc(JdbcTemplate jdbc) {
	this.jdbc = jdbc;
}


	public ProductDao()  {
		System.out.println("Product Dao iit");
	
	}
		

	@Override
	public int addProduct(Product p) {						
		String query="insert into product  values ("+p.getProductid()+",'"+p.getProductname()+"','"+p.getPrice()+",'"+p.getStock()+",'"+p.getAuthor()+",'"+p.getCategory()+",'"+p.getLanguage()+",'"+p.getEdition()+",'"+p.getPublisher()+",'"+p.getDescription()+ ")"; 
		int x=jdbc.update(query);
	
		return x;
		
	}

	@Override
	public int delProduct() {
		return 0;
		
	}

	@Override
	public Product searchProduct(int pid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Product updateProduct(int pid) {
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
