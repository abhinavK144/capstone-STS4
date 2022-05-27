package com.presentation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.service.LoginServiceImpl;
import com.service.loginService;
import com.model.Login;
@Controller
public class LoginController {
	@Autowired
	LoginServiceImpl loginServiceImpl;

	public void setL(LoginServiceImpl l) {
		this.loginServiceImpl = l;
	}
	public LoginController() {
		System.out.println("LoginController");
	}
	@RequestMapping("/Login")
	public ModelAndView chkLogin(@RequestParam ("a") String u,@RequestParam ("b" ) String p)
	{
		System.out.println("Check login Controller ");
		//Login ln=new Login(u, p);
		Login f=loginServiceImpl.checkLoginService(u, p);
		//System.out.println(f.getRole());
		System.out.println("Controller"+f);		
		if(f!=null)
		{
			if(f.getRole().equalsIgnoreCase("admin"))
			return new ModelAndView ("AdminHome","user",f);
			else
				return new ModelAndView ("UserHome","user",f);	
		}
			
		else
			return new ModelAndView ("fail","user",f);
	}
}
