package com.dao;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.model.Login;


//@Respository
@Repository
public class LoginDaoImpl implements loginDao{
	@Autowired
	JdbcTemplate jdbc;//dependent object 

	public void setJdbc(JdbcTemplate jdbc) {
	this.jdbc = jdbc;
}
	public LoginDaoImpl() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public boolean checkLogin(String u, String p) {
		String sql="select * from Users  ";
		boolean f=false;		
		  RowMapper<Login> rowMapper = new LoginMapper();
		  List<Login> list = jdbc.query(sql ,rowMapper);
		  System.out.println(list);
		  Iterator<Login> i=list.iterator();
		  while(i.hasNext())
		  {
			 Login l=i.next();
			 System.out.println(l);
			String a=l.getEmail_Id();
			
			String b=l.getPassword();
						if(a.equals(u) && b.equals(p))
			{
					f=true;
					break;		
			}
				else
					f=false;
			
		  }
		  if(f)
				return true;
			else
				return false;
		  
	
	}
	
   
}
