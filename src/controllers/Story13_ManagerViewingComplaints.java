package com.spring.boot.project.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.boot.project.data.UserComplains;
import com.spring.boot.project.repository.UserComplaint;

@Controller
public class Story13_ManagerViewingComplaints 
{
	@Autowired
	private UserComplaint repo;
	
	@GetMapping("/userComplain")
	public ModelAndView getDetails()
	{
		ModelAndView mv = new ModelAndView();
		List<UserComplains> list = (List<UserComplains>)repo.findAll();
		mv.addObject("data",list);
		mv.setViewName("viewusercomplain");
		return mv;
	}
}
