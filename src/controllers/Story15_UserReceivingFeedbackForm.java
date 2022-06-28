package com.spring.boot.project.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import com.spring.boot.project.data.UserFeedbackForm;

@Controller
public class Story15_UserReceivingFeedbackForm {
	

	UserFeedbackForm feedback = new UserFeedbackForm();

	@GetMapping("/feedbackUser")
	public String UserFeedback() {
		return "successfeedbackuser";
	}
}
