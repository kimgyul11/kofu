package com.kofu.infra.modules.home;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@Autowired
	HomeServiceImpl service;
	
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

//	@RequestMapping(value = "quelist")
//	public String quelist() {
//		
//		return "infra/home/xdmin/questionList";
//	}
	@RequestMapping(value = "queview")
	public String queview() {
		
		return "infra/home/xdmin/questionView";
	}
	
	@RequestMapping(value = "questionlist")  
	public String questionList(Model model) throws Exception {

		List<Home>list = service.selectList();
		model.addAttribute("list", list);

		return "infra/codegroup/xdmin/questionList";
	}
	
	
}
