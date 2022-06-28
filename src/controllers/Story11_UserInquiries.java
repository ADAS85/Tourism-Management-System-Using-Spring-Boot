package com.spring.boot.project.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.boot.project.data.UserInquiries;
import com.spring.boot.project.repository.UserInquiry;


@Controller
public class Story11_UserInquiries 
{
	@Autowired
	private UserInquiry repo;
	
	UserInquiries inquir = new UserInquiries();
	
	@GetMapping("/inquiry")
	public String inquiryHome()
	{
		return "inquiry";
	}
	
	@PostMapping("/inquirysuccessful")
	public String userInquiry(@RequestParam(name="textarea") String inq)
	{
		inquir.setInq(inq);
		repo.save(inquir);
		return "inquirysuccess";
	}
	
	@GetMapping("/managerhome")
	public String managerHome()
	{
		return "managerhome";
	}
	
	@GetMapping("/userQuery")
	public ModelAndView getDetails()
	{
		ModelAndView mv = new ModelAndView();
		List<UserInquiries> list = (List<UserInquiries>)repo.findAll();
		mv.addObject("data",list);
		mv.setViewName("viewuserquery");
		return mv;
	}
	
	@PostMapping("/managerReply")
	public String replyManager(@RequestParam(name="manager") String reply)
	{
		inquir.setReply(reply);
		repo.save(inquir);
		return "success";
	}
}
