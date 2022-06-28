package com.spring.boot.project.controllers;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.spring.boot.project.data.PackageDetails;
import com.spring.boot.project.data.PackageModification;
import com.spring.boot.project.data.PackageModification_Description;
import com.spring.boot.project.data.PackageModification_Duration;
import com.spring.boot.project.data.PackageModification_Location;
import com.spring.boot.project.data.PackageModification_Price;
import com.spring.boot.project.data.PackageModification_Title;
import com.spring.boot.project.repository.AdminPackage;




@Controller
public class Story7_PackageModification {
	
	@Autowired
	public  AdminPackage repoadmin;
	String title;
	
	@GetMapping("/viewpackage")
	public String viewPackage(Model model) {
		PackageModification pack=new PackageModification();
		model.addAttribute("pack",pack);
		return "viewpackage";
		
	}
	
	@PostMapping("/viewpackage")
	public String viewer(@ModelAttribute("pack") PackageModification pack,ModelMap  model) {
		PackageDetails pack1=repoadmin.findByTitle(pack.getTitle());
		title=pack.getTitle();
		if(pack1==null) {
			return "notexist";
		}
		else {
			model.put("price",pack1.getPrice());
			model.put("description", pack1.getDescription());
			model.put("location", pack1.getLocation());
			model.put("title", pack1.getTitle());
			model.put("duration", pack1.getDuration());
			return "packagemodification";
		}
		
	}
	
	@GetMapping("/editdescription")
	public String editDescription(Model model) {
		model.addAttribute("desc",new PackageModification_Description());
		return "editdescription";
	}
	
	@GetMapping("/editlocation")
	public String editlocation(Model model) {
		model.addAttribute("location",new PackageModification_Location());
		return "editlocation";
	}
	
	@GetMapping("/editduration")
	public String editduration(Model model) {
		model.addAttribute("duration",new PackageModification_Duration());
		return "editduration";
	}
	
	@GetMapping("/editprice")
	public String editprice(Model model) {
		model.addAttribute("price",new PackageModification_Price());
		return "editprice";
	}
	
	@GetMapping("/edittitle")
	public String edittitle(Model model) {
		model.addAttribute("title",new PackageModification_Title());
		return "edittitle";
	}
	
	@PostMapping("/editdescription")
	public String postdescription(@ModelAttribute("desc") PackageModification_Description desc,ModelMap model) {
		
		String description=desc.getDescription();
		repoadmin.updateDescription(description, title);
		return "packageedited";
		
		}
	
	@PostMapping("/edittitle")
	public String posttitle(@ModelAttribute("title") PackageModification_Title tit,ModelMap model) {
		
		String title1=tit.getTitle();
		repoadmin.updateTitle(title1, title);
		return "packageedited";
	}
	
	@PostMapping("/editduration")
	public String postduration(@ModelAttribute("duration") PackageModification_Duration duration,ModelMap model) {
		
		Integer dura=duration.getDuration();
		repoadmin.updateDuration(dura, title);
		return "packageedited";
	}
	
	@PostMapping("/editprice")
	public String postduration(@ModelAttribute("price") PackageModification_Price price,ModelMap model) {
		
		Integer dura=price.getPrice();
		repoadmin.updatePrice(dura, title);
		return "packageedited";
	}
	
	@PostMapping("/editlocation")
	public String postlocation(@ModelAttribute("location") PackageModification_Location location,ModelMap model) {
		
		String loc=location.getLocation();
		repoadmin.updateLocation(loc, title);
		return "packageedited";
	}
}
