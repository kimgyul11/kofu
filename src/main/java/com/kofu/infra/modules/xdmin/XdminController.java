package com.kofu.infra.modules.xdmin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class XdminController {
	
	@RequestMapping(value = "xdminlogin")
	public String xdminlogin() {
		
		return "infra/xdminpage/xdminLogin";
	}
	
}
