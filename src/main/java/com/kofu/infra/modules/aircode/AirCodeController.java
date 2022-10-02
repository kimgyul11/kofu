package com.kofu.infra.modules.aircode;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AirCodeController {

	@Autowired
	AirCodeServiceImpl service;
	
	
	@RequestMapping(value = "codeList")
	public String codeList(@ModelAttribute("vo")AirCodeVo vo,Model model)throws Exception{
		List<AirCode> list=service.selectList(vo);
		model.addAttribute("list",list);
		return "infra/code/xdmin/AirCodeList";
	}
}
