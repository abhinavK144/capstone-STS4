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
	LoginServiceImpl l;

	public void setL(LoginServiceImpl l) {
		this.l = l;
	}
	public LoginController() {
		System.out.println("LoginController");
	}
	@RequestMapping("/Login")
	public ModelAndView chkLogin(@RequestParam ("a") String u,@RequestParam ("b" ) String p)
	{
		Login ln=new Login(u, p);
		boolean f=l.checkLoginService(u, p);
		System.out.println(f);		
		if(f)
			return new ModelAndView ("pass","user",ln);
		else
			return new ModelAndView ("fail","user",ln);
	}
}
