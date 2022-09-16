package com.kofu.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;



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
	
	@RequestMapping(value = "codeView")
	public String codeGroupView(CodeVo vo,Model model) throws Exception{
		Code result = service.selectOne(vo);
		model.addAttribute("item", result);
		List<Code> list = service.ccgselectList();
		model.addAttribute("list", list);
		return "infra/code/xdmin/codelistform";
	}
	
	@RequestMapping(value = "codeUpdt")
	public String codeUpdt(CodeVo vo,Code dto,RedirectAttributes redirectAttributes) throws Exception{
		service.update(dto);
		redirectAttributes.addFlashAttribute("vo",vo);
		return "redirect:/code/code";
	}
	
	@RequestMapping(value="codeDele")
	public String codeDele(CodeVo vo,RedirectAttributes redirectAttributes) throws Exception{
		service.delete(vo);
		redirectAttributes.addFlashAttribute("vo",vo);
		return "redirect:/code/code";
	}
	
	@RequestMapping(value="codeUele")
	public String codeUele(CodeVo vo, Code dto,RedirectAttributes redirectAttributes) throws Exception{
		service.uelete(dto);
		redirectAttributes.addFlashAttribute("vo",vo);
		return "redirect:/code/code";
	}
	
	@RequestMapping(value = "codeForm")
	public String codeForm(@ModelAttribute("vo") CodeVo vo,Model model)throws Exception{
		
		if(vo.getCcSeq().equals("0") || vo.getCcSeq().equals("")) {
			//insert
		}else {
			Code item = service.selectOne(vo);
			model.addAttribute("item",item);
		}
		
		return "infar/code/xdmin/codelistform";
		
	}
	
}
