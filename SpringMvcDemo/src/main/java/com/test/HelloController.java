package com.test;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {
	
	@RequestMapping("/hello")
	public String display(Model model) {
		model.addAttribute("name","Royal Sab");
		return "index";
		
	}
	
	

}
