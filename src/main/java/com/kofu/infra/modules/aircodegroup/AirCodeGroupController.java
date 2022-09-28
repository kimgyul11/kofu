package com.kofu.infra.modules.aircodegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AirCodeGroupController {

	@Autowired
	AirCodeGroupServiceImpl service;
	
	@RequestMapping(value = "/AircodeGroup/codeGroupList")
	public String codeGroupList(@ModelAttribute("vo")AirCodeGroupVo vo,Model model)throws Exception{
		
		List<AirCodeGroup> list = service.selectList(vo);
		model.addAttribute("list",list);
		return "infra/codegroup/xdmin/airCodeGroupList";
	}
	

}
