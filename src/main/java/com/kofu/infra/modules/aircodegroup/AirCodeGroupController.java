package com.kofu.infra.modules.aircodegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;




@Controller
public class AirCodeGroupController {

	@Autowired
	AirCodeGroupServiceImpl service;
	
	
	@RequestMapping(value = "/AircodeGroup/codeGroupList")
	public String codeGroupList(@ModelAttribute("vo")AirCodeGroupVo vo,Model model)throws Exception{
		
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
	
		vo.setParamsPaging(service.selectOneCounting(vo));
		List<AirCodeGroup> list = service.selectList(vo);
		model.addAttribute("list",list);
		return "infra/codegroup/xdmin/airCodeGroupList";
	}
	
	@RequestMapping(value = "/AircodeGroup/codeGroupReg")
	public String codeGroupReg(@ModelAttribute("vo") AirCodeGroupVo vo,Model model) throws Exception{
		
		AirCodeGroup item = service.selectOne(vo);
		model.addAttribute("item",item);
	
		
		return "infra/codegroup/xdmin/airCodeGroupForm";
	}
	
	
	@RequestMapping(value = "/AircodeGroup/codeGroupView")
	public String codeGroupView(AirCodeGroupVo vo, Model model) throws Exception{
		AirCodeGroup result = service.selectOne(vo);
		model.addAttribute("item",result);
		return "infra/codegroup/xdmin/airCodeGroupForm";
	}
	//인서트 
	@RequestMapping(value = "/AircodeGroup/airCodeGroupInst")
	public String airCodeGroupInst(AirCodeGroupVo vo, AirCodeGroup dto, RedirectAttributes redirectAttributes) throws Exception{
		
		service.insert(dto);
		
		vo.setCcgSeq(dto.getCcgSeq());
		
		redirectAttributes.addFlashAttribute("vo",vo);
		/* System.out.println("controller result: "+result); */
		return "redirect:/AircodeGroup/codeGroupReg";
	}
	
	
//	수정,삭제,가짜삭제
	//수정하기 
	@RequestMapping(value = "/AircodeGroup/codeGroupUpdt")
	public String codeGroupUpdt(AirCodeGroupVo vo, AirCodeGroup dto, RedirectAttributes redirectAttributes) throws Exception{
		
		System.out.println(dto.getCcgSeq());
		service.update(dto);
		vo.setCcgSeq(dto.getCcgSeq());
		redirectAttributes.addFlashAttribute("vo",vo);
		
		return "redirect:/AircodeGroup/codeGroupReg";
	}
	
	//가짜삭제하기 
	@RequestMapping(value = "/AircodeGroup/codeGroupUele")
	public String codeGroupUele(AirCodeGroupVo vo, AirCodeGroup dto,RedirectAttributes redirectAttributes) throws Exception{
		service.uelete(dto);
		redirectAttributes.addFlashAttribute("vo",vo);
		return "redirect:/AircodeGroup/codeGroupList";
	}
	
	// 삭제하기  
	@RequestMapping(value = "/AircodeGroup/codeGroupDele")
	public String nationnalityDele(AirCodeGroupVo vo, RedirectAttributes redirectAttributes) throws Exception{
		service.delete(vo);
		redirectAttributes.addFlashAttribute("vo",vo);
		
		return "redirect:/AircodeGroup/codeGroupList";
	}

	
	
}
