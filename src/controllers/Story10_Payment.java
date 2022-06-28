package com.spring.boot.project.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;


@Controller
public class Story10_Payment {
	
	@GetMapping("/payment")
	public String payment()
	{
		return"payment";
	}
	
	@GetMapping("/creditcard")
	public String payment3()
	{
		return"creditcard";
	}
	
	@GetMapping("/debitcard")
	public String payment4()
	{
		return"debitcard";
	}
	
	@GetMapping("/upi")
	public String payment5()
	{
		return"upi";
	}
	
	@GetMapping("/netbanking")
	public String payment2()
	{
		return"netbanking";
	}
	
	@PostMapping("/paymentSuccessful")
	public String paySuccess()
	{
		return "paymentsuccess";
	}
}
