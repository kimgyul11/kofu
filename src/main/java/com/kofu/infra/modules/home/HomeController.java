package com.kofu.infra.modules.home;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class HomeController {
	@Autowired
	HomeServiceImpl service;
	
	@RequestMapping(value = "/")
	public String startHome() {
		return "infra/home/xdmin/startpage";
	}
	
	@RequestMapping(value = "airLanguageHome")
	public String airLanguageHome(Model model,HomeVo vo) throws Exception {
		 System.out.println("vo.getShValue(): " + vo.getShValue());
		 System.out.println("vo.getShOption(): " + vo.getShOption());
		 List<Home>list = service.homeSearch(vo);
		 model.addAttribute("list", list);
		return "infra/home/xdmin/airLanguageHome";
	}
	
	@RequestMapping(value = "login")
	public String login() {

		return "infra/login/xdmin/login";
	}
	
	@RequestMapping(value = "airLogin")
	public String airLogin() {

		return "infra/login/xdmin/airLogin";
	}
	
	
	@RequestMapping(value = "quelist")
	public String quelist(@ModelAttribute("vo")HomeVo vo,Model model)throws Exception {
		
		vo.setParamsPaging(service.selectOenCount(vo));
		List<Home>list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/home/xdmin/airQuestionList";
	}
	
	@RequestMapping(value = "queview")
	public String queview(@ModelAttribute("vo")HomeVo vo,Model model) throws Exception {
		
		Home result = service.selectOne(vo);
		List<Home>homeList = service.selectAns(vo);
		model.addAttribute("item",result);
		model.addAttribute("homeList", homeList);
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
	
	@RequestMapping(value = "answerInst")
	public String answerInst(HomeVo vo ,Home dto,RedirectAttributes redirectAttributes) throws Exception {
		int result = service.ansInsert(dto);
		System.out.println("controller result : " + result);
		
		redirectAttributes.addFlashAttribute("vo",vo);
		return "redirect:queview";
	}
	/*
	 * @RequestMapping(value = "homeSearch") public String homeSearch(Model
	 * model,HomeVo vo) throws Exception{ System.out.println("vo.getShValue(): " +
	 * vo.getShValue()); System.out.println("vo.getShOption(): " +
	 * vo.getShOption()); List<Home>list = service.homeSearch(vo);
	 * model.addAttribute("list", list); return "infra/home/xdmin/questionList"; }
	 */
}
