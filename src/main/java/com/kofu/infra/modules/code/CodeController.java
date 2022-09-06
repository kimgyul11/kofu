package com.kofu.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value = "/code/")
public class CodeController {
	
	@Autowired
	CodeServiceImpl service;
	

	@RequestMapping(value = "code")
	public String codeList(Model model,CodeVo vo) throws Exception {
		
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		
		
		List<Code> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/code/xdmin/code";
	}
	@RequestMapping(value = "codelistform")
	public String codelistform(Model model) throws Exception{
		
		List<Code> list = service.ccgselectList();
		model.addAttribute("list", list);
		return "infra/code/xdmin/codelistform";
	}
	
	@RequestMapping(value = "codeInst")
	public String codeInst(Code dto) throws Exception{
		
		int result = service.insert(dto);
		System.out.println("controller result:" +result);
		
		return "redirect:/code/code";
	}
	
}
