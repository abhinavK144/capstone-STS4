package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.LoginDaoImpl;

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
	public boolean checkLoginService(String u, String p) {
		
		return dao.checkLogin(u,p);
	}

}
