package com.kofu.infra.modules.airmembers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class AirMembersController {

	@Autowired
	AirMembersServiceImpl service;
	
// 리스트 화면
	@RequestMapping(value = "/xadmin/memberlist")
	public String MemberList(@ModelAttribute("vo")AirMembersVo vo,Model model) throws Exception {
		
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		
		vo.setParamsPaging(service.selectOneCounting(vo));
		List<AirMembers> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/member/xdmin/airMemberList";
	}

//회원정보 뷰 페이지
	@RequestMapping(value = "/xadmin/memberView")
	public String memberView() {
		return "infra/member/xdmin/airMemberView";
	}

//셀렉트 원
	@RequestMapping(value = "/xadmin/selectOne")
	public String selectOne(AirMembersVo vo,Model model) throws Exception{
		AirMembers result = service.selectOne(vo);
		model.addAttribute("item",result);
		return "";
	}


	

}
