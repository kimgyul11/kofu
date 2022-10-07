package com.kofu.infra.modules.airboard;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AirBoardController {

	@Autowired
	AirBoardServiceImpl service;
	
	@RequestMapping(value = "/xadmin/boardList")
	public String boardList(@ModelAttribute("vo")AirBoardVo vo,Model model)throws Exception{
		
		List<AirBoard> list = service.selectList(vo);
		model.addAttribute("list",list);
		return "infra/board/xdmin/AirBoardList";
	}
	
}
