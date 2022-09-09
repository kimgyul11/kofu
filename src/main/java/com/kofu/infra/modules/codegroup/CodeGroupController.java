package com.kofu.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/codeGroup/")
public class CodeGroupController {
	
	@Autowired
	CodeGroupServiceImpl service;
	

	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(Model model,CodeGroupVo vo) throws Exception {
		
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		
		System.out.println(vo.getStartDate());
		System.out.println(vo.getEndDate());
		
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/codegroup/xdmin/codeGroupList";
	}
	@RequestMapping(value = "codeGroupReg")
	public String codeGroupReg() throws Exception{
		return "infra/codegroup/xdmin/codeGroupReg";
	}
	
	@RequestMapping(value = "codeGroupInst")
	public String codeGroupInst(CodeGroup dto) throws Exception{
		
		int result = service.insert(dto);
		System.out.println("controller result: "+result);
		
		return "redirect:/codeGroup/codeGroupList";
	}
	@RequestMapping(value = "codeGroupView")
	public String codeGroupView(CodeGroupVo vo, Model model) throws Exception{
		CodeGroup result = service.selectOne(vo);
		model.addAttribute("item",result);
		return "infra/codegroup/xdmin/codeGroupReg";
	}
		
	
	
	
}