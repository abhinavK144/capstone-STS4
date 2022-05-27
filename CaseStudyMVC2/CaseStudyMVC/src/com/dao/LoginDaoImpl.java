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
	public Login checkLogin(String u, String p) {
		System.out.println("Login DAO");
		String sql="select * from login where Email_Id = '"+u+"' and Password='"+p+"'";
		try
		{
		return jdbc.queryForObject(sql,new LoginMapper());
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		  return null;


		
		
	}
	
   
}

/*boolean f=false;		
//  RowMapper<Login> rowMapper = new LoginMapper();
  List<Login> list = jdbc.query(sql ,new LoginMapper());
  //System.out.println(list);
  Iterator<Login> i=list.iterator();
  Login l = null;
  while(i.hasNext())
  {
	  l=i.next();
	 System.out.println("login dao"+l);
	String a=l.getUname();
	
	String b=l.getPwd();
				if(a.equals(u) && b.equals(p))
	{
			f=true;
			break;		
	}
		else
			f=false;
	
  }
  if(f)
		return l;
	else
		return null;  */
