package com.spring.boot.project.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.boot.project.data.UserDetails;
import com.spring.boot.project.repository.UserRegistration;




@Controller
public class Story3_UserLogin 
{
	@Autowired
	private UserRegistration repo;
	
	@GetMapping("/userlogin")
	public String login() {
		return "userlogin";
	}
	
	@PostMapping("/userHome")
	public String login(@RequestParam(name="email") String email,@RequestParam(name="password") String password,ModelMap model) {
		UserDetails user=repo.findByEmail(email);
		if(user==null) {
			model.put("error","<h2 style='color:red;'> Your email Address is incorrect please login Again");
			return "userlogin";
		}
		else if(user.getPassword().equals(password)) {
			model.put("name", user.getFirstname());
			model.put("last",user.getLastname());
		return "userhome";
	}
		else {
			model.put("error","<h2 style='color:red;' >Your password is incorrect");
			return "userlogin";
		}
	}
}

