package com.spring.boot.project.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.boot.project.services.Story1_AdminService;


@Controller
public class Story1_AdminController 
{
	@Autowired
	Story1_AdminService service;
	
	@RequestMapping(value="/loginAdmin", method = RequestMethod.GET)
	public String showLoginPage(ModelMap model){
		return "login";
	}
	
	@RequestMapping(value="/pageAdmin", method = RequestMethod.POST)
	public String showWelcomePage(ModelMap model, @RequestParam String name, @RequestParam String password){
		boolean isValidUser = service.validateUser(name, password);
		
		if (!isValidUser) {
			model.put("errorMessage", "Sorry! Your Name or Password is Wrong"
					+ " please Login Again ");
			return "login";
		}
		
		model.put("name", name);
		model.put("password", password);
		
		return "adminjsp";
	}
}

