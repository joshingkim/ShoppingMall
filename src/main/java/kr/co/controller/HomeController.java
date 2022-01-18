package kr.co.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("")
public class HomeController {

	@RequestMapping(value = "")
	public String home() {
		
		return "home";
	}
	
	@RequestMapping(value = "/404page", method = RequestMethod.GET)
	public void errorPage() {
		
	
	}
	
}
