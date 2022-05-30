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
	p.setPid(rs.getInt("pid"));
		p.setPname(rs.getString("pname"));
		p.setPrice(rs.getDouble("price"));
		p.setPimage(rs.getString("pimage"));
		p.setPcategory(rs.getInt("pcategory"));
		//System.out.println(p.getPid()+p.getPname());
		return p;
	}

}
