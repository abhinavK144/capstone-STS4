package com.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.model.Login;

public class LoginMapper implements RowMapper<Login> {

	public LoginMapper() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public Login mapRow(ResultSet rs, int rowNum) throws SQLException {
		Login l=new Login();
		l.setEmail_Id(rs.getString("Email_Id"));
		l.setPassword(rs.getString("Password"));
		return l;
	}

}
