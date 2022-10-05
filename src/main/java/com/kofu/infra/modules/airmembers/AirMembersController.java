package com.kofu.infra.modules.airmembers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class AirMembersController {

	@Autowired
	AirMembersServiceImpl service;
	
	@RequestMapping(value = "/xadmin/memberlist")
	public String MemberList(Model model) throws Exception {

		List<AirMembers> list = service.selectList();
		model.addAttribute("list", list);
		
		return "infra/member/xdmin/airMemberList";
	}
}
