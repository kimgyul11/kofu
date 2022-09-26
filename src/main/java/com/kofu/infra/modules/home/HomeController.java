package com.kofu.infra.modules.home;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kofu.infra.modules.codegroup.CodeGroup;

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

		return "infra/login/xdmin/login";
	}
	
	@RequestMapping(value = "signup")
	public String signup() {
		
		return "infra/login/xdmin/signup";
	}

	@RequestMapping(value = "quelist")
	public String quelist(Model model,HomeVo vo)throws Exception {
		
		List<Home>list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/home/xdmin/questionList";
	}
	@RequestMapping(value = "queview")
	public String queview() {
		
		return "infra/home/xdmin/questionView";
	}
	
//	@RequestMapping(value = "questionlist")  
//	public String questionList(Model model) throws Exception {
//
//		List<Home>list = service.selectList();
//		model.addAttribute("list", list);
//
//		return "infra/codegroup/xdmin/questionList";
//	}
	
	@RequestMapping(value = "complete")
	public String complete() {
		
		return "infra/login/xdmin/logincomplete";
	}
	
	@RequestMapping(value = "mypage")
	public String mypage() {
		
		return "infra/userInfo/mypage";
	}
	
	@RequestMapping(value = "mypagemod")
	public String mypagemod() {
		
		return "infra/userInfo/mypageMod";
	}
	@RequestMapping(value = "quereg")
	public String quereg() {
		
		return "infra/home/xdmin/questionReg";
	}
	
	@RequestMapping(value = "questionInst")
	public String questionInst(Home dto) throws Exception {
		
		int result = service.insert(dto);
		System.out.println("controller result: "+ result);
		
		return "redirect:quelist";
	}
	
	@RequestMapping(value = "homeSearch")
	public String homeSearch(Model model,HomeVo vo) throws Exception{
		 System.out.println("vo.getShValue(): " + vo.getShValue());
		 System.out.println("vo.getShOption(): " + vo.getShOption());
		 List<Home>list = service.homeSearch(vo);
		 model.addAttribute("list", list);
		return "infra/home/xdmin/questionList";
	}
}
