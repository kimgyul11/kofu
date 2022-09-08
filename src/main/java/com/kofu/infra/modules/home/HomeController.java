package com.kofu.infra.modules.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping(value = "/")
	public String airLanguageHome() {
		
		return "infra/home/xdmin/airLanguageHome";
	}
	
	@RequestMapping(value = "login")
	public String login() {

		return "infra/home/xdmin/login";
	}
	
	@RequestMapping(value = "signup")
	public String signup() {
		
		return "infra/home/xdmin/signup";
	}

	@RequestMapping(value = "quelist")
	public String quelist() {
		
		return "infra/home/xdmin/questionList";
	}
	@RequestMapping(value = "queview")
	public String queview() {
		
		return "infra/home/xdmin/questionView";
	}
	
	
	
}
