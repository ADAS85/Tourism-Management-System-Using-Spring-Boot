package com.spring.boot.project.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.boot.project.data.UserFeedbackForm;
import com.spring.boot.project.repository.UserFeedback;

@Controller
public class Story14_ManagerFeedbackForm 
{
	UserFeedbackForm feedback = new UserFeedbackForm();
	
	@Autowired
	private UserFeedback repo;
	
	@GetMapping("/feedbackForm")
	public String createForm()
	{
		return "feedbackform";
	}
	
	@PostMapping("/fieldSubmit")
	public String submitField(@RequestParam(name="one") String one,@RequestParam(name="two") String two,
							@RequestParam(name="three") String three,@RequestParam(name="four") String four,
							@RequestParam(name="five") String five,@RequestParam(name="six") String six,
							@RequestParam(name="seven") String seven)
	{
		feedback.setField1(one);
		feedback.setField2(two);
		feedback.setField3(three);
		feedback.setField4(four);
		feedback.setField5(five);
		feedback.setField6(six);
		feedback.setField7(seven);
		repo.save(feedback);
		return "successfeedback";
	}
	
	@GetMapping("/formCreation")
	public ModelAndView FormCreation()
	{
		ModelAndView mv = new ModelAndView();
		List<UserFeedbackForm> list = (List<UserFeedbackForm>)repo.findAll();
		mv.addObject("data",list);
		mv.setViewName("userfeedbackform");
		return mv;
	}
}
