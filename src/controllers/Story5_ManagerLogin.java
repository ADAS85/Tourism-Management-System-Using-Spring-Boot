package com.spring.boot.project.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.boot.project.data.ManagerDetails;
import com.spring.boot.project.repository.ManagerRegistration;


@Controller
public class Story5_ManagerLogin {
	
	
	@Autowired
	private ManagerRegistration repo;
	
	
	@GetMapping("/managerlogin")
	public String login() {
		return "managerlogin";
	}
	
	@PostMapping("/managerHome")
	public String login(@RequestParam(name="email") String email, @RequestParam(name="password") String password,
						ModelMap model) {
		ManagerDetails manager=repo.findByEmail(email);
		if(manager==null) {
			model.put("error","<h2 style='color:red;'> Your email Address is incorrect please login Again");
			return "managerlogin";
		}
		else if(manager.getPassword().equalsIgnoreCase(password)) {
			model.put("name", manager.getFirstname());
			model.put("last",manager.getLastname());
		return "welcomemanager";
	}
		else {
			model.put("error","<h2 style='color:red;' >Your password is incorrect");
			return "managerlogin";
		}
	}
}

