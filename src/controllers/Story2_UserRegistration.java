package com.spring.boot.project.controllers;


import java.util.regex.Matcher;
import java.util.regex.Pattern;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.spring.boot.project.data.UserDetails;
import com.spring.boot.project.repository.UserRegistration;



@Controller
public class Story2_UserRegistration {
	@Autowired
	private UserRegistration repo;
	
	@GetMapping("/userregistration")
	public String home(Model model)
	{
		UserDetails userDetails=new UserDetails();
		model.addAttribute("userDetails",userDetails);
		return "userregistration";
	}
	
	
	@PostMapping("/userregistration")
	public String register(@ModelAttribute("userDetails")UserDetails userDetails,ModelMap model)
	{
		if((userDetails.getFirstname()).length()<3 || userDetails.getFirstname().length()>15) {
			model.put("errormessage","<h2 Style='color:red;'>Firstname must be between 3 to 15 characters in length ");
		return "userregistration";
		}
		else if((userDetails.getLastname()).length()<3 || userDetails.getLastname().length()>15) {
			model.put("errormessage","<h2 Style='color:red;'>Lastname must be between 3 to 15 characters in length ");
		return "userregistration";
		}
		else if((userDetails.getLastname()).length()<3 || userDetails.getLastname().length()>15) {
			model.put("errormessage","<h2 Style='color:red;'>Lastname must be between 3 to 15 characters in length ");
		return "userregistration";
		}
		else if((userDetails.getPassword()).length()<6) {
			model.put("errormessage","<h2 Style='color:red;'>Password must be greater than 6 characters in length ");
		return "userregistration";
		}
		String email=userDetails.getEmail();
		String regex = "^(.+)@(.+)$"; 
		Pattern pattern = Pattern.compile(regex);  
		Matcher matcher = pattern.matcher(email); 
		 if(!matcher.matches()) {
			 model.put("errormessage","<h2 Style='color:red;'>Email must contain @ in it ");
				return "userregistration";
		}
		 else {
			 UserDetails user=repo.findByEmail(userDetails.getEmail());
			 if(user==null) {
		System.out.println(userDetails);
		repo.save(userDetails);
		model.put("message","User Registered Successfully");
		return "userregistration";
		}
			 else {
				 model.put("errormessage","<h2 Style='color:red;'>Email already exist ");
					return "userregistration";
			 }
	}
  }
}