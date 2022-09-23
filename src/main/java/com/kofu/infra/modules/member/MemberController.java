package com.kofu.infra.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;






@Controller
@RequestMapping(value = "/member/")
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	

	@RequestMapping(value = "memberlist")
	public String codeGroupList(Model model) throws Exception {

		List<Member> list = service.selectList();
		model.addAttribute("list", list);
		
		return "infra/member/xdmin/memberlist";
	}
	
	@RequestMapping(value = "memberform")
	public String memberForm() {
		return "infra/member/xdmin/memberForm";
	}
	
	@RequestMapping(value = "memberView")
	public String memberView(MemberVo vo, Model model) throws Exception{
		
		
		List<Member> list = service.selectList();
		model.addAttribute("list", list);
		Member result = service.selectOne(vo);
		model.addAttribute("item",result);
		return "infra/member/xdmin/memberForm";
	}
	
	@RequestMapping(value = "MemberInst")
	public String memberInst(Member dto) throws Exception{
		
		int result = service.insert(dto);
		System.out.println("controller result: "+result);
		
		return "redirect:/member/memberlist";
	}
	
	@RequestMapping(value = "signup")
	public String signup(Member dto) throws Exception{
		
		int result = service.signup(dto);
		System.out.println("controller result: "+result);
		
		return "infra/login/xdmin/logincomplete";
	}
	
	
	@ResponseBody
	@RequestMapping(value = "checkId")
	public Map<String, Object> checkId(Member dto) throws Exception {

		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int result = service.selectOneIdCheck(dto);

		if (result > 0) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
		}
		return returnMap;
	}
	
	
}
