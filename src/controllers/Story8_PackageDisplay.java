package com.spring.boot.project.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.boot.project.data.PackageDetails;
import com.spring.boot.project.repository.AdminPackage;


@Controller
public class Story8_PackageDisplay 
{
	@Autowired
	AdminPackage repo;
	
	@GetMapping("/packageList")
	public ModelAndView getDetails()
	{
		ModelAndView mv = new ModelAndView();
		List<PackageDetails> list = (List<PackageDetails>)repo.findAll();
		mv.addObject("data",list);
		mv.setViewName("packageshowcase");
		return mv;
	}
}
