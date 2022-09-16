package com.kofu.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/codeGroup/")
public class CodeGroupController {
	
	@Autowired
	CodeGroupServiceImpl service;
	

	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(@ModelAttribute("vo")CodeGroupVo vo ,Model model) throws Exception {
		
		/*
		 * System.out.println("vo.getShValue(): " + vo.getShValue());
		 * System.out.println("vo.getShOption(): " + vo.getShOption());
		 * 
		 * System.out.println(vo.getStartDate()); System.out.println(vo.getEndDate());
		 */
		
		
		/* 변경되도 유지하는검색조건 */
		vo.setShDelNy(vo.getShDelNy() == null ? 0 : vo.getShDelNy());
		
		vo.setParamsPaging(service.selectOneCount(vo));
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/codegroup/xdmin/codeGroupList";
	}
	
	
	
	@RequestMapping(value = "codeGroupReg")
	public String codeGroupReg(@ModelAttribute("vo") CodeGroupVo vo,Model model) throws Exception{
		
		CodeGroup item = service.selectOne(vo);
		model.addAttribute("item",item);
	
		
		return "infra/codegroup/xdmin/codeGroupReg";
	}
	
	
	@RequestMapping(value = "codeGroupInst")
	public String codeGroupInst(CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception{
		
		service.insert(dto);
		
		vo.setCcgSeq(dto.getCcgSeq());
		
		redirectAttributes.addFlashAttribute("vo",vo);
		/* System.out.println("controller result: "+result); */
		return "redirect:/codeGroup/codeGroupReg";
	}
	
	
	@RequestMapping(value = "codeGroupView")
	public String codeGroupView(CodeGroupVo vo, Model model) throws Exception{
		CodeGroup result = service.selectOne(vo);
		model.addAttribute("item",result);
		return "infra/codegroup/xdmin/codeGroupReg";
	}
	
	@RequestMapping(value = "codeGroupUpdt")
	public String codeGroupUpdt(CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception{
		
		System.out.println(dto.getCcgSeq());
		service.update(dto);
		vo.setCcgSeq(dto.getCcgSeq());
		redirectAttributes.addFlashAttribute("vo",vo);
		
		return "redirect:/codeGroup/codeGroupReg";
	}
	
	@RequestMapping(value = "codeGroupUele")
	public String codeGroupUele(CodeGroupVo vo, CodeGroup dto,RedirectAttributes redirectAttributes) throws Exception{
		service.uelete(dto);
		redirectAttributes.addFlashAttribute("vo",vo);
		return "redirect:/codeGroup/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupDele")
	public String nationnalityDele(CodeGroupVo vo, RedirectAttributes redirectAttributes) throws Exception{
		service.delete(vo);
		redirectAttributes.addFlashAttribute("vo",vo);
		
		return "redirect:/codeGroup/codeGroupList";
		
	}

	
	
}