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
	static int x1=101;

	@Override
	public int addProduct(Product p) {
		//p=new Product(201, "Mouse",1200);
		//int sid= new Random().nextInt(100000);
		
		String s1="select max(pid) from product";
System.out.println(x1++);
	System.out.println(x1);
		List l=jdbc.queryForList(s1);
		System.out.println(l);
		String query="insert into product  values ( "+p.getPid()+",'"+p.getPname()+"',"
				+p.getPrice()+",'"+p.getPimage()+"',"+p.getPcategory()+")";
		
		
		int x=jdbc.update(query);
		//jdbc.
		
		
		
		return x;
		
	}

	@Override
	public boolean delProduct(int pid) {
		String s1="select max(pid) from product";
		List l=jdbc.queryForList(s1);
		System.out.println(l.get(0));
		String query="delete from product where pid ="+pid;
		int x=jdbc.update(query);
		if(x>0)
			return true;
		else
			return false;
		
		
	}

	@Override
	public Product searchProduct(int pid) {
		//System.out.println("search pid"+pid);
		String query ="select * from product where pid="+pid;
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
		String query="update product set pname ='"+product.getPname()+"', price="+product.getPrice()+", pimage='"+product.getPimage()
		+"', pcategory="+product.getPcategory()
		
		+" where pid="+product.getPid() ;
		System.out.println(query);
		int x=jdbc.update(query);
		return product;
		
	}

	@Override
	public List<Product> displayAllproduct() throws SQLException {
		//System.out.println("displayAllproduct");
		String s1="select * from product";
		List l=jdbc.queryForList(s1);
		return l;
		
		
		
		
		
	}

}
