package com.spring.boot.project.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Story9_UserPackageDetails {

	@RequestMapping("/userDetails")
	public String UserHome() {
		return "details";
	}

	@RequestMapping(path = "/formAction", method = RequestMethod.POST)
	public String getDetails(@RequestParam("persons") int person, @RequestParam("rooms") int room,
			@RequestParam("modes") String mode, Model model) {
		int personCharge = 100;
		int roomCharge = 1500;
		int modeCharge;

		if (mode == "Car")
			modeCharge = 1200;
		else if (mode == "Train")
			modeCharge = 600;
		else
			modeCharge = 350;

		int totalPayment = (person * personCharge) + (room * roomCharge) + modeCharge;
		model.addAttribute("bill", totalPayment);
		return "payment";
	}
}
