package com.kofu.infra.modules.aircode;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;




@Controller
public class AirCodeController {

	@Autowired
	AirCodeServiceImpl service;
	
	
	@RequestMapping(value = "/xdmin/codeList")
	public String codeList(@ModelAttribute("vo")AirCodeVo vo,Model model)throws Exception{
		vo.setParamsPaging(service.selectOneCounting(vo));
		List<AirCode> list=service.selectList(vo);
		model.addAttribute("list",list);
		return "infra/code/xdmin/AirCodeList";
	}
	@RequestMapping(value = "/xdmin/codeView")
	public String codeGroupReg(@ModelAttribute("vo") AirCodeVo vo,Model model) throws Exception{
		
		AirCode item = service.selectOne(vo);
		model.addAttribute("item",item);
		
		List<AirCode> list = service.ccgSelectView();
		model.addAttribute("list", list);
		
		return "infra/code/xdmin/AirCodeForm";
	}
	//수정하기 
	@RequestMapping(value = "/xdmin/codeUpdt")
	public String codeUpdt(AirCodeVo vo, AirCode dto, RedirectAttributes redirectAttributes) throws Exception{
		
		System.out.println(dto.getCcSeq());
		service.update(dto);
		vo.setCcSeq(dto.getCcSeq());
		redirectAttributes.addFlashAttribute("vo",vo);
		
		return "redirect:/xdmin/codeView";
	}
	
	//인서트 
	@RequestMapping(value = "/xdmin/airCodeInst")
	public String airCodeInst(AirCodeVo vo, AirCode dto, RedirectAttributes redirectAttributes) throws Exception{
		
		service.insert(dto);
		
		vo.setCcSeq(dto.getCcSeq());
		
		redirectAttributes.addFlashAttribute("vo",vo);
		/* System.out.println("controller result: "+result); */
		return "redirect:/xdmin/codeView";
	}
	//가짜삭제하기 
	@RequestMapping(value = "/xdmin/codeUele")
	public String codeUele(AirCodeVo vo, AirCode dto,RedirectAttributes redirectAttributes) throws Exception{
		service.uelete(dto);
		redirectAttributes.addFlashAttribute("vo",vo);
		return "redirect:/xdmin/codeList";
	}
	
	// 삭제하기  
	@RequestMapping(value = "/xdmin/codeDele")
	public String nationnalityDele(AirCodeVo vo, RedirectAttributes redirectAttributes) throws Exception{
		service.delete(vo);
		redirectAttributes.addFlashAttribute("vo",vo);
		
		return "redirect:/xdmin/codeList";
	}
}
