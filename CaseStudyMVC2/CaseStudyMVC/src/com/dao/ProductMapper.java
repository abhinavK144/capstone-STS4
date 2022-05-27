package com.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;


import com.model.Product;

public class ProductMapper implements RowMapper<Product> {

	public ProductMapper() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public Product mapRow(ResultSet rs, int rowNum) throws SQLException {
		//System.out.println("resultset"+rs.getString("pname")+rs.getInt("pid"));
	//	System.out.println("prodc mapper");
	Product p=new Product();
		p.setProduct_id(rs.getInt("Product_id"));
		p.setCategory_id(rs.getInt("Category_id"));
		p.setProduct_name(rs.getString("Product_name"));
		p.setProduct_description(rs.getString("Product_description"));
		p.setProduct_price(rs.getDouble("Product_price"));
		p.setPimage(rs.getString("pimage"));
		//System.out.println(p.getPid()+p.getPname());
		return p;
	}

}

