package com.myDemo3.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myDemo3.dao.UserDaoImpl;
import com.myDemo3.model.Login;
import com.myDemo3.model.User;

@Service
public class LoginServiceImpl implements LoginService{

	@Autowired
	UserDaoImpl daoImpl;
	
	public User validateUser(Login login) {
		
		User user = daoImpl.getUserbyEmail_Id(login.getEmail_Id());
		if(user == null )
		{
			return null;
			
		}else 
		{
			if(user.getPassword().equals(login.getPassword()))
			{
				return user;
			}else
			{
				return null;	
			}
		}
		
	}

}
