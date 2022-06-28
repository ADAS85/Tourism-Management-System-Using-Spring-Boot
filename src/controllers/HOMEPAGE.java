package com.spring.boot.project.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HOMEPAGE 
{
	@RequestMapping
	public String homePage()
	{
		return "homePAGE";
	}
}
