package com.myDemo3.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.myDemo3.model.User;
import com.myDemo3.service.UserServiceImpl;

@Controller
public class UserController {

	@Autowired
	UserServiceImpl userServiceImpl;

	@RequestMapping("/register")
	public String showform(Model m) {
		m.addAttribute("command", new User());
		return "register";
	}

	@RequestMapping(value = "/user", method = RequestMethod.POST)
	public String save(@ModelAttribute("user") User user) {
		userServiceImpl.saveUser(user);
		return "redirect:/login";
	}

	@RequestMapping("/viewUser")
	public String viewUser(Model m) {
		List<User> list = userServiceImpl.getUsers();
		m.addAttribute("list", list);
		return "viewUser";
	}

}
