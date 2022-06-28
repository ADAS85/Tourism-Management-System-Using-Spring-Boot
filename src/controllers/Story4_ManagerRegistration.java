package com.spring.boot.project.controllers;

import java.util.regex.*;  
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.spring.boot.project.data.ManagerDetails;
import com.spring.boot.project.repository.ManagerRegistration;



@Controller
public class Story4_ManagerRegistration 
{
	@Autowired
	private ManagerRegistration repo;
	
	@GetMapping("/managerregistration")
	public String home(Model model)
	{
		ManagerDetails managerDetails=new ManagerDetails();
		model.addAttribute("managerDetails",managerDetails);
		return "signup";
	}
	
	
	@PostMapping("/managerregistration")
	public String register(@ModelAttribute("managerDetails")ManagerDetails managerDetails,ModelMap model)
	{
		if((managerDetails.getFirstname()).length()<3 || managerDetails.getFirstname().length()>15) {
			model.put("errormessage","<h2 Style='color:red;'>Firstname must be between 3 to 15 characters in length ");
		return "signup";
		}
		else if((managerDetails.getLastname()).length()<3 || managerDetails.getLastname().length()>15) {
			model.put("errormessage","<h2 Style='color:red;'>Lastname must be between 3 to 15 characters in length ");
		return "signup";
		}
		else if((managerDetails.getLastname()).length()<3 || managerDetails.getLastname().length()>15) {
			model.put("errormessage","<h2 Style='color:red;'>Lastname must be between 3 to 15 characters in length ");
		return "signup";
		}
		else if((managerDetails.getPassword()).length()<6) {
			model.put("errormessage","<h2 Style='color:red;'>Password must be greater than 6 characters in length ");
		return "signup";
		}
		String email=managerDetails.getEmail();
		String regex = "^(.+)@(.+)$"; 
		Pattern pattern = Pattern.compile(regex);  
		Matcher matcher = pattern.matcher(email); 
		 if(!matcher.matches()) {
			 model.put("errormessage","<h2 Style='color:red;'>Email must contain @ in it ");
				return "signup";
		}
		 else {
			 ManagerDetails manager=repo.findByEmail(managerDetails.getEmail());
			 if(manager==null) {
		System.out.println(managerDetails);
		repo.save(managerDetails);
		return "welcome";
		}
			 else {
				 model.put("errormessage","<h2 Style='color:red;'>Email already exist ");
					return "signup";
			 }
		 }
	}
}
