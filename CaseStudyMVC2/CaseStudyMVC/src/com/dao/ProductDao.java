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
public class ProductDao implements productDaoInte {
@Autowired
	JdbcTemplate jdbc;

	public void setJdbc(JdbcTemplate jdbc) {
	this.jdbc = jdbc;
}


	public ProductDao()  {
		//System.out.println("Product Dao iit");
	
	}
		

	@Override
	public int addProduct(Product p) {
		//p=new Product(201, "Mouse",1200);
		//int sid= new Random().nextInt(100000);
								
		String query="insert into Product  values ( "+p.getProduct_id()+",'"+p.getCategory_id()+"','"+p.getProduct_name()+"','"+p.getProduct_description()+"','"+p.getProduct_price()+"','"+p.getPimage()+"')"; 						
		int x=jdbc.update(query);
		//jdbc.
		
		
		return x;
		
	}

	@Override
	public boolean delProduct(int Product_id) {
		String query="delete from Product where Product_id ="+Product_id;
		int x=jdbc.update(query);
		if(x>0)
			return true;
		else
			return false;
		
		
	}

	@Override
	public Product searchProduct(int Product_id) {
		//System.out.println("search pid"+pid);
		String query ="select * from Product where Product_id="+Product_id;
		//System.out.println(query);
		//return null;
		return jdbc.queryForObject(query,new ProductMapper());
		
	}

//	@Override
//	public Product updateProduct(int pid) {
//		System.out.println("update "+pid);
//		Product product=searchProduct(pid);
//		//System.out.println("update"+product);
//		//System.out.println(product.getPname()+product.getPid());
//		String query="update product set pname ='"+product.getPname()+"', price="+product.getPrice()+" where pid="+product.getPid() ;
//		System.out.println(query);
//		int x=jdbc.update(query);
//		return product;
//		
//	}
	
	@Override
	public Product updateProduct1(Product product) {
//		System.out.println("update "+pid);
//		Product product=searchProduct(pid);
		System.out.println("update"+product);
		//System.out.println(product.getPname()+product.getPid());
		String query="update Product set Product_name ='"+product.getProduct_name()+"', Product_price="+product.getProduct_price()+" where product_id="+product.getProduct_id() ;
		System.out.println(query);
		int x=jdbc.update(query);
		return product;
		
	}

	@Override
	public List<Product> displayAllproduct() throws SQLException {
		//System.out.println("displayAllproduct");
		String s1="select * from Product";
		List l=jdbc.queryForList(s1);
		return l;
		
		
		
		
		
	}

}
