package com.spring.boot.project.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.boot.project.data.PackageDetails;
import com.spring.boot.project.repository.AdminPackage;



@Controller
public class Story6_TourPackageCreationByAdmin {
	
	@Autowired
	public AdminPackage repoadmin;
	
	PackageDetails packages = new PackageDetails();
	
	@GetMapping("/addpackage")
	public String viewAddPackage() {
		return "addpackage";
	}
	
	
	@PostMapping("/packagesAdded")
	public String addedPackage(@RequestParam(name="title") String title,
							@RequestParam(name="price") int price, @RequestParam("description") String description,
							@RequestParam(name="location") String location, @RequestParam(name="duration") int duration)
	{
		packages.setTitle(title);
		packages.setPrice(price);
		packages.setDescription(description);
		packages.setLocation(location);
		packages.setDuration(duration);
		repoadmin.save(packages);
		return "packagewelcome";
	}
}
