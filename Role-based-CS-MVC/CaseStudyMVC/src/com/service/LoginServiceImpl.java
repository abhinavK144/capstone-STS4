package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.LoginDaoImpl;
import com.model.Login;

@Service
public class LoginServiceImpl implements loginService{
@Autowired
	LoginDaoImpl dao;
	public void setDao(LoginDaoImpl dao) {
	this.dao = dao;
}

	public LoginServiceImpl() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public Login checkLoginService(String u, String p) {
		System.out.println("Login Service");
		
		return dao.checkLogin(u,p);
	}

}
