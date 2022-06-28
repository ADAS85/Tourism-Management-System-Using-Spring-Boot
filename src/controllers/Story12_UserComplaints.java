package com.spring.boot.project.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.boot.project.data.UserComplains;
import com.spring.boot.project.repository.UserComplaint;


@Controller
public class Story12_UserComplaints 
{
	UserComplains data = new UserComplains();
	
	@Autowired
	private UserComplaint userRepo;

	@GetMapping("/complain")
	public String homePage()
	{
		return "complain";
	}
	
	@RequestMapping(path="/saveDetails",method=RequestMethod.POST)
	public String getDetails(@RequestParam(name="first") String name, @RequestParam(name="second") String name2,
								@RequestParam(name="third") String complaint)
	{
		String s = name+" "+name2;
		data.setName(s);
		data.setComplaint(complaint);
		userRepo.save(data);
		return "complainsaved";
	}
}